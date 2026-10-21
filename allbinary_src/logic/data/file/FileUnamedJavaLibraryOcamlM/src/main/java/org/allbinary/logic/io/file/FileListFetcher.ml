(*

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.io.file *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.io.file.directory.DirectoryBooleanFileVisitor *)
(* import org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor *)
(* import org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor *)
(* import org.allbinary.logic.io.file.directory.SubDirectory *)
(* import org.allbinary.logic.io.file.filter.VisitorFileFilter *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class fileListFetcher () =
  object
    val mutable subDirectory : SubDirectory.subDirectory = (Obj.magic 0)
    method subDirectory = subDirectory
    method set_subDirectory value' = subDirectory <- value'
    

    method getFiles ((path : string)) : BasicArrayList.basicArrayList =
        begin
        (try
            let files : BasicArrayList.basicArrayList ref = ref (((subDirectory#search ((Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr (path)))))) :> BasicArrayList.basicArrayList)) in ();
            (!files :> BasicArrayList.basicArrayList)
        with e -> begin
            ignore (prerr_endline (Printexc.to_string e));
            (print_endline (java_string_of (Obj.repr (((("Error: " ^ java_string_of (Obj.repr (e))) ^ "\nMsg: ") ^ (Printexc.to_string e))))))
        end);
        ((Obj.magic 0) :> BasicArrayList.basicArrayList)
        end
    

    (* Java overload getFiles(String, ArrayType) is not converted: OCaml has one method per name *)
    

    (* Java overload getFiles(String, String) is not converted: OCaml has one method per name *)
    

    (* Java overload getFiles(String, String, String) is not converted: OCaml has one method per name *)
    

    method getTrackedFiles ((path : string), (includeExtensions : string array)) : BasicArrayList.basicArrayList =
        begin
        (try
            let includeExtensionBasicArrayList : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            let size : int ref = ref ((Array.length includeExtensions)) in ();
            for index = 0 to !size - 1 do
                ignore (!includeExtensionBasicArrayList#add (includeExtensions.(index)))
            done;
            let visitorFileFilter : VisitorFileFilter.visitorFileFilter ref = ref (((new VisitorFileFilter.visitorFileFilter ((new DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor.directoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor (!includeExtensionBasicArrayList)))) :> VisitorFileFilter.visitorFileFilter)) in ();
            let files : BasicArrayList.basicArrayList ref = ref (((subDirectory#search (!visitorFileFilter, (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr (path)))))) :> BasicArrayList.basicArrayList)) in ();
            (!files :> BasicArrayList.basicArrayList)
        with e -> begin
            ignore (prerr_endline (Printexc.to_string e));
            (print_endline (java_string_of (Obj.repr (((("Error: " ^ java_string_of (Obj.repr (e))) ^ "\nMsg: ") ^ (Printexc.to_string e))))))
        end);
        ((Obj.magic 0) :> BasicArrayList.basicArrayList)
        end
    

    (* Java overload getTrackedFiles(String, String) is not converted: OCaml has one method per name *)
    

    method getDirectories ((path : string)) : BasicArrayList.basicArrayList =
        begin
        (try
            let visitorFileFilter : VisitorFileFilter.visitorFileFilter ref = ref (((new VisitorFileFilter.visitorFileFilter ((new DirectoryBooleanFileVisitor.directoryBooleanFileVisitor ()))) :> VisitorFileFilter.visitorFileFilter)) in ();
            let files : BasicArrayList.basicArrayList ref = ref (((subDirectory#search (!visitorFileFilter, (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr (path)))))) :> BasicArrayList.basicArrayList)) in ();
            (!files :> BasicArrayList.basicArrayList)
        with e -> begin
            ignore (prerr_endline (Printexc.to_string e));
            (print_endline (java_string_of (Obj.repr (((("Error: " ^ java_string_of (Obj.repr (e))) ^ "\nMsg: ") ^ (Printexc.to_string e))))))
        end);
        ((Obj.magic 0) :> BasicArrayList.basicArrayList)
        end

    initializer
      begin
        subDirectory <- ((SubDirectory.getInstance ()) :> SubDirectory.subDirectory);
        ()
      end
  end
let () = java_register_constructor "FileListFetcher" (fun arguments -> Obj.repr (new fileListFetcher (Obj.obj arguments)))

let instance = (new fileListFetcher ())
let get_instance () = instance
let () = java_register_static "FileListFetcher.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "FileListFetcher.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


