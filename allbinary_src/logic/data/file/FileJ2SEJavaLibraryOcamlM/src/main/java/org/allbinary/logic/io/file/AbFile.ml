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
(* import java.io.File *)
(* import java.io.FileFilter *)
(* import java.io.FilenameFilter *)
(* import java.io.IOException *)
(* import java.net.URI *)
(* import org.allbinary.TsUtil *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.string.StringUtil *)

let nULL_FILE_cell : Obj.t Lazy.t ref = ref (Lazy.from_val java_null)
let get_nULL_FILE : 'r. unit -> 'r = fun () -> Obj.magic (try Lazy.force !nULL_FILE_cell with Lazy.Undefined -> java_null)
let set_nULL_FILE value' = nULL_FILE_cell := Lazy.from_val (Obj.repr value')
let () = java_register_static "AbFile.get_nULL_FILE" (fun _ -> Obj.repr (get_nULL_FILE ()))
let () = java_register_static "AbFile.set_nULL_FILE" (fun value' -> set_nULL_FILE value'; Obj.repr ())
class abFile ((file_arg : java_file)) =
  object
    val mutable file : java_file = (Obj.magic 0)
    method file = file
    method set_file value' = file <- value'
    
    

    method getFile () : java_file =
        begin
        (file :> java_file)
        end
    

    method getName () : string =
        begin
        (file#getName ())
        end
    

    method getParent () : string =
        begin
        (file#getParent ())
        end
    

    method getParentFile () : Obj.t =
        begin
        (Obj.repr ((file#getParentFile ())))
        end
    

    method getPath () : string =
        begin
        (file#getPath ())
        end
    

    method isAbsolute () : bool =
        begin
        (file#isAbsolute ())
        end
    

    method getAbsolutePath () : string =
        begin
        (file#getAbsolutePath ())
        end
    

    method getAbsoluteFile () : Obj.t =
        begin
        (Obj.repr ((file#getAbsoluteFile ())))
        end
    

    method getCanonicalPath () : string =
        begin
        (file#getCanonicalPath ())
        end
    

    method getCanonicalFile () : Obj.t =
        begin
        (Obj.repr ((file#getCanonicalFile ())))
        end
    

    method toURI () : java_uri =
        begin
        ((file#toURI ()) :> java_uri)
        end
    

    method canRead () : bool =
        begin
        (file#canRead ())
        end
    

    method canWrite () : bool =
        begin
        (file#canWrite ())
        end
    

    method exists () : bool =
        begin
        (file#exists ())
        end
    

    method isDirectory () : bool =
        begin
        (file#isDirectory ())
        end
    

    method isFile () : bool =
        begin
        (file#isFile ())
        end
    

    method isHidden () : bool =
        begin
        (file#isHidden ())
        end
    

    method lastModified () : int =
        begin
        (file#lastModified ())
        end
    

    method length () : int =
        begin
        (file#length ())
        end
    

    method createNewFile () : bool =
        begin
        (file#createNewFile ())
        end
    

    method delete () : bool =
        begin
        (file#delete ())
        end
    

    method deleteOnExit () : unit =
        begin
        ignore (file#deleteOnExit ())
        end
    

    method list () : string array =
        begin
        (file#list ())
        end
    

    method listWithFilter : 'any1. 'any1 -> string array = fun (filter) ->
        let filter = Obj.repr filter in
        begin
        (file#list ((Obj.magic filter)))
        end [@@warning "-20"]
    

    method listFiles : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (file#listFiles ()))))
        end
    

    method listFilesFileNameFilter : 'any1 'return. 'any1 -> 'return = fun (filter) ->
        let filter = Obj.repr filter in
        begin
        (Obj.magic ((Obj.magic (file#listFiles ((Obj.magic filter))))))
        end [@@warning "-20"]
    

    method listFilesFileFilter : 'any1 'return. 'any1 -> 'return = fun (filter) ->
        let filter = Obj.repr filter in
        begin
        (Obj.magic ((Obj.magic (file#listFiles ((Obj.magic filter))))))
        end [@@warning "-20"]
    

    method mkdir () : bool =
        begin
        (file#mkdir ())
        end
    

    method mkdirs () : bool =
        begin
        (file#mkdirs ())
        end
    

    method renameTo : 'any1. 'any1 -> bool = fun (dest) ->
        let dest = Obj.repr dest in
        begin
        (file#renameTo (((Obj.magic dest)#getFile ())))
        end [@@warning "-20"]
    

    method setLastModified ((time : int)) : bool =
        begin
        (file#setLastModified (time))
        end
    

    method setReadOnly () : bool =
        begin
        (file#setReadOnly ())
        end
    

    method setWritable ((writable : bool), (ownerOnly : bool)) : bool =
        begin
        (file#setExecutable (writable, ownerOnly))
        end
    

    (* Java overload setWritable(BOOLEAN) is not converted: OCaml has one method per name *)
    

    method setReadable ((readable : bool), (ownerOnly : bool)) : bool =
        begin
        (file#setReadable (readable, ownerOnly))
        end
    

    (* Java overload setReadable(BOOLEAN) is not converted: OCaml has one method per name *)
    

    method setExecutable ((executable : bool), (ownerOnly : bool)) : bool =
        begin
        (file#setExecutable (executable, ownerOnly))
        end
    

    (* Java overload setExecutable(BOOLEAN) is not converted: OCaml has one method per name *)
    

    method canExecute () : bool =
        begin
        (file#canExecute ())
        end
    

    method getTotalSpace () : int =
        begin
        (file#getTotalSpace ())
        end
    

    method getFreeSpace () : int =
        begin
        (file#getFreeSpace ())
        end
    

    method getUsableSpace () : int =
        begin
        (file#getUsableSpace ())
        end
    

    method compareTo ((pathname : java_file)) : int =
        begin
        (file#compareTo (pathname))
        end
    

    method equals : 'any1. 'any1 -> bool = fun (obj) ->
        let obj = Obj.repr obj in
        begin
        ((Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ())))#equalsNotstring (file, obj))
        end
    

    method hashCode () : int =
        begin
        (file#hashCode ())
        end
    

    method toString () : string =
        begin
        (java_string_of (Obj.repr file))
        end

    initializer
      begin
        ();
        ();
        file <- file_arg
      end
  end
let () = java_register_constructor "AbFile" (fun arguments -> Obj.repr (new abFile (Obj.obj arguments)))

let createAbFileWithChild : 'any1 'return. 'any1 * string -> 'return = fun (file_arg, (childPathName : string)) ->
        let file_arg = Obj.repr file_arg in
        begin
        (Obj.magic ((new abFile ((new java_file (Obj.repr (((Obj.magic file_arg)#getFile ()), childPathName)))))))
        end [@@warning "-20"]

and createAbFile : 'return. string -> 'return = fun ((filePath : string)) ->
        begin
        (Obj.magic ((new abFile ((new java_file (Obj.repr (((new AbPath.abPath (filePath, (StringUtil.getInstance ())#eMPTY_STRING))#toFileSystemString ()))))))))
        end

and createAbFilePathAndName : 'return. string * string -> 'return = fun ((filePath : string), (fileName : string)) ->
        begin
        (Obj.magic ((new abFile ((new java_file (Obj.repr (((new AbPath.abPath (filePath, (StringUtil.getInstance ())#eMPTY_STRING))#toFileSystemString ()), fileName)))))))
        end

and createAbFileFromAbPath : 'any1 'return. 'any1 -> 'return = fun (abPath) ->
        let abPath = Obj.repr abPath in
        begin
        (Obj.magic ((new abFile ((new java_file (Obj.repr (((Obj.magic abPath)#toFileSystemString ()))))))))
        end [@@warning "-20"]

and createAbFileFromRawPath : 'return. string -> 'return = fun ((filePath : string)) ->
        begin
        (Obj.magic ((new abFile ((new java_file (Obj.repr (filePath)))))))
        end
let () = java_register_static "AbFile.createAbFileWithChild" (fun arguments -> Obj.repr (createAbFileWithChild (Obj.obj arguments)))
let () = java_register_static "AbFile.createAbFile" (fun arguments -> Obj.repr (createAbFile (Obj.obj arguments)))
let () = java_register_static "AbFile.createAbFilePathAndName" (fun arguments -> Obj.repr (createAbFilePathAndName (Obj.obj arguments)))
let () = java_register_static "AbFile.createAbFileFromAbPath" (fun arguments -> Obj.repr (createAbFileFromAbPath (Obj.obj arguments)))
let () = java_register_static "AbFile.createAbFileFromRawPath" (fun arguments -> Obj.repr (createAbFileFromRawPath (Obj.obj arguments)))

let () = nULL_FILE_cell := lazy (Obj.repr ((createAbFileFromRawPath ((StringUtil.getInstance ())#eMPTY_STRING))))


