#!/usr/bin/env bash

# Compiles the generated OCaml sources and archives this library's modules.
# OCaml module names come from the file names so all compiled modules go in one output directory.
# OCaml compiles modules in dependency order so ocamldep -sort orders the library and dependency sources.
# The compiled modules of each Maven dependency are unpacked into a directory per dependency under the dependency directory.

set -uo pipefail

export PATH="/usr/local/bin:/usr/bin:/bin:$PATH"

source_dir="$(cygpath -u "$1")"
output_dir="$(cygpath -u "$2")"
library_name="$3"
compiler="$4"
read -r -a compiler_flags <<< "$5"
fail_on_error="$6"
dependency_directory="$(cygpath -u "$7")"
shift 7

case "$compiler" in
    ocamlopt*) object_extension="cmx"; archive_extension="cmxa" ;;
    *) object_extension="cmo"; archive_extension="cma" ;;
esac

rm -rf "$output_dir"
mkdir -p "$output_dir"

# The runtime uses the OCaml system threads for java.lang.Thread
include_flags=(-I "$output_dir" -I +threads)

# Each Maven dependency is unpacked into its own directory. A module can be in more than one of them, like a platform class
# such as TsUtil, and OCaml needs one interface for a module so the one the other dependency modules were compiled with is used.
# The chosen files of every dependency are copied into one merged directory that is found with -I.
target_dir="$(dirname "$(dirname "$(dirname "$output_dir")")")"
merged_dir="$target_dir/ocaml-dependencies-merged"
rm -rf "$merged_dir"
mkdir -p "$merged_dir"
dependency_dirs=()
if [ -d "$dependency_directory" ]; then
    for candidate in "$dependency_directory"/*/META-INF/ocaml; do
        [ -d "$candidate" ] && dependency_dirs+=("$candidate")
    done
    # A dependency directory with the modules directly in it
    if [ "${#dependency_dirs[@]}" -eq 0 ] && compgen -G "$dependency_directory/*.cmi" > /dev/null; then
        dependency_dirs+=("$dependency_directory")
    fi
fi
if [ "${#dependency_dirs[@]}" -gt 0 ]; then
    declare -A module_dirs=()
    has_duplicates=false
    for dir in "${dependency_dirs[@]}"; do
        for cmi in "$dir"/*.cmi; do
            [ -e "$cmi" ] || continue
            module="$(basename "$cmi" .cmi)"
            if [ -n "${module_dirs[$module]:-}" ]; then
                has_duplicates=true
            fi
            module_dirs[$module]+="$dir"$'\n'
        done
    done
    # The interface checksum and module name of every interface each dependency module imports
    imports_file="$merged_dir/.imports"
    used_file="$merged_dir/.used"
    : > "$imports_file"
    : > "$used_file"
    if [ "$has_duplicates" = true ]; then
        for dir in "${dependency_dirs[@]}"; do
            for cmi in "$dir"/*.cmi; do
                [ -e "$cmi" ] || continue
                ocamlobjinfo "$cmi" | awk -v self="$(basename "$cmi" .cmi)" 'NF == 2 && $2 != self { print self " " $1 " " $2 }' >> "$imports_file"
            done
        done
        # The dependency modules this library uses directly and through the interfaces they import.
        # Only their checksums count since those are the interfaces the library is compiled with.
        if [ "$(find "$source_dir" -type f -name '*.ml' | head -1)" != "" ]; then
            find "$source_dir" -type f -name '*.ml' -print0 | xargs -0 ocamldep -modules 2> /dev/null | cut -d: -f2- | tr ' ' '\n' | grep -v '^$' | sort -u > "$used_file.direct"
            awk 'FNR == NR { used[$1] = 1; queue[++count] = $1; next } { imports[$1] = imports[$1] " " $3 }
                END {
                    for (index_ = 1; index_ <= count; index_++) {
                        split(imports[queue[index_]], names, " ")
                        for (name in names) { if (!(names[name] in used)) { used[names[name]] = 1; queue[++count] = names[name] } }
                    }
                    for (name in used) print name
                }' "$used_file.direct" "$imports_file" > "$used_file"
            rm -f "$used_file.direct"
        fi
    fi
    for module in "${!module_dirs[@]}"; do
        mapfile -t dirs < <(printf '%s' "${module_dirs[$module]}")
        chosen="${dirs[0]}"
        if [ "${#dirs[@]}" -gt 1 ]; then
            # The checksum most of the used modules expect, otherwise the one most of the dependency modules expect
            expected="$(awk -v name="$module" 'FNR == NR { used[$1] = 1; next } $3 == name && ($1 in used) { print $2 }' "$used_file" "$imports_file" | sort | uniq -c | sort -rn | awk 'NR == 1 { print $2 }')"
            if [ -z "$expected" ]; then
                expected="$(awk -v name="$module" '$3 == name { print $2 }' "$imports_file" | sort | uniq -c | sort -rn | awk 'NR == 1 { print $2 }')"
            fi
            for dir in "${dirs[@]}"; do
                checksum="$(ocamlobjinfo "$dir/$module.cmi" | awk -v name="$module" 'NF == 2 && $2 == name { print $1; exit }')"
                if [ -n "$expected" ] && [ "$checksum" = "$expected" ]; then
                    chosen="$dir"
                    break
                fi
            done
        fi
        cp "$chosen/$module".* "$merged_dir/"
    done
    rm -f "$imports_file" "$used_file"
    for dir in "${dependency_dirs[@]}"; do
        cp "$dir"/*.cmxa "$dir"/*.cma "$dir"/*.a "$merged_dir/" 2> /dev/null || true
    done
    include_flags+=(-I "$merged_dir")
fi

sources=()
while IFS= read -r -d '' source; do
    sources+=("$source")
done < <(find "$source_dir" -type f -name '*.ml' -print0 | sort -z)

# Dependencies such as the Allbinary_java runtime module are compiled so the library modules can use them but are not archived
dependency_sources=()
for dependency_dir in "$@"; do
    dependency_dir="$(cygpath -u "$dependency_dir")"
    if [ -d "$dependency_dir" ]; then
        while IFS= read -r -d '' source; do
            dependency_sources+=("$source")
        done < <(find "$dependency_dir" -type f -name '*.ml' -print0 | sort -z)
    else
        echo "Warning: OCaml dependency source directory does not exist: $dependency_dir" >&2
    fi
done

compiled=0
failures=()
library_objects=()

if ! sorted_sources="$(ocamldep -sort "${dependency_sources[@]}" "${sources[@]}" 2> "$output_dir/ocamldep.log")"; then
    echo "Warning: ocamldep could not sort the sources so some modules may compile before modules they use. See $output_dir/ocamldep.log" >&2
fi

for source in $sorted_sources; do
    module_file="$(basename "$source" .ml)"
    if "$compiler" -c "${compiler_flags[@]}" "${include_flags[@]}" -o "$output_dir/$module_file.$object_extension" "$source"; then
        for library_source in "${sources[@]}"; do
            if [ "$library_source" = "$source" ]; then
                compiled=$((compiled + 1))
                library_objects+=("$output_dir/$module_file.$object_extension")
            fi
        done
    else
        failures+=("$source")
    fi
done

if [ "${#library_objects[@]}" -gt 0 ]; then
    "$compiler" -a -o "$output_dir/$library_name.$archive_extension" "${library_objects[@]}" || failures+=("archive $library_name.$archive_extension")
fi

echo "OCaml modules compiled: $compiled of ${#sources[@]}"
if [ "${#failures[@]}" -gt 0 ]; then
    echo "OCaml build failures: ${#failures[@]}" >&2
    printf '  %s\n' "${failures[@]}" >&2
    if [ "$fail_on_error" = "true" ]; then
        exit 1
    fi
fi
exit 0
