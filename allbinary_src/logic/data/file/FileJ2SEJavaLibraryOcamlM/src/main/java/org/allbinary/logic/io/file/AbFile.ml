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

class abFile (file_arg) =
  object
    val mutable file : Obj.t = Obj.repr 0
    method file : 'r. 'r = Obj.magic file
    method set_file : 'v. 'v -> unit = fun value' -> file <- Obj.repr value'
    
    

    method getFile : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic file)))
        end
    

    method getName () : string =
        begin
        ((Obj.magic file)#getName ())
        end
    

    method getParent () : string =
        begin
        ((Obj.magic file)#getParent ())
        end
    

    method getParentFile () : Obj.t =
        begin
        (Obj.repr (((Obj.magic file)#getParentFile ())))
        end
    

    method getPath () : string =
        begin
        ((Obj.magic file)#getPath ())
        end
    

    method isAbsolute () : bool =
        begin
        ((Obj.magic file)#isAbsolute ())
        end
    

    method getAbsolutePath () : string =
        begin
        ((Obj.magic file)#getAbsolutePath ())
        end
    

    method getAbsoluteFile () : Obj.t =
        begin
        (Obj.repr (((Obj.magic file)#getAbsoluteFile ())))
        end
    

    method getCanonicalPath () : string =
        begin
        ((Obj.magic file)#getCanonicalPath ())
        end
    

    method getCanonicalFile () : Obj.t =
        begin
        (Obj.repr (((Obj.magic file)#getCanonicalFile ())))
        end
    

    method toURI : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (((Obj.magic file)#toURI ())))
        end
    

    method canRead () : bool =
        begin
        ((Obj.magic file)#canRead ())
        end
    

    method canWrite () : bool =
        begin
        ((Obj.magic file)#canWrite ())
        end
    

    method exists () : bool =
        begin
        ((Obj.magic file)#exists ())
        end
    

    method isDirectory () : bool =
        begin
        ((Obj.magic file)#isDirectory ())
        end
    

    method isFile () : bool =
        begin
        ((Obj.magic file)#isFile ())
        end
    

    method isHidden () : bool =
        begin
        ((Obj.magic file)#isHidden ())
        end
    

    method lastModified () : int =
        begin
        ((Obj.magic file)#lastModified ())
        end
    

    method length () : int =
        begin
        ((Obj.magic file)#length ())
        end
    

    method createNewFile () : bool =
        begin
        ((Obj.magic file)#createNewFile ())
        end
    

    method delete () : bool =
        begin
        ((Obj.magic file)#delete ())
        end
    

    method deleteOnExit () : unit =
        begin
        ignore ((Obj.magic file)#deleteOnExit ())
        end
    

    method list () : string array =
        begin
        ((Obj.magic file)#list ())
        end
    

    method listWithFilter : 'any1. 'any1 -> string array = fun (filter) ->
        let filter = Obj.repr filter in
        begin
        ((Obj.magic file)#list ((Obj.magic filter)))
        end [@@warning "-20"]
    

    method listFiles () : Obj.t array =
        begin
        (Obj.magic ((Obj.magic file)#listFiles ()))
        end
    

    method listFilesFileNameFilter : 'any1. 'any1 -> Obj.t array = fun (filter) ->
        let filter = Obj.repr filter in
        begin
        (Obj.magic ((Obj.magic file)#listFiles ((Obj.magic filter))))
        end [@@warning "-20"]
    

    method listFilesFileFilter : 'any1. 'any1 -> Obj.t array = fun (filter) ->
        let filter = Obj.repr filter in
        begin
        (Obj.magic ((Obj.magic file)#listFiles ((Obj.magic filter))))
        end [@@warning "-20"]
    

    method mkdir () : bool =
        begin
        ((Obj.magic file)#mkdir ())
        end
    

    method mkdirs () : bool =
        begin
        ((Obj.magic file)#mkdirs ())
        end
    

    method renameTo : 'any1. 'any1 -> bool = fun (dest) ->
        let dest = Obj.repr dest in
        begin
        ((Obj.magic file)#renameTo (((Obj.magic dest)#getFile ())))
        end [@@warning "-20"]
    

    method setLastModified ((time : int)) : bool =
        begin
        ((Obj.magic file)#setLastModified (time))
        end
    

    method setReadOnly () : bool =
        begin
        ((Obj.magic file)#setReadOnly ())
        end
    

    method setWritable ((writable : bool), (ownerOnly : bool)) : bool =
        begin
        ((Obj.magic file)#setExecutable (writable, ownerOnly))
        end
    

    (* Java overload setWritable(BOOLEAN) is not converted: OCaml has one method per name *)
    

    method setReadable ((readable : bool), (ownerOnly : bool)) : bool =
        begin
        ((Obj.magic file)#setReadable (readable, ownerOnly))
        end
    

    (* Java overload setReadable(BOOLEAN) is not converted: OCaml has one method per name *)
    

    method setExecutable ((executable : bool), (ownerOnly : bool)) : bool =
        begin
        ((Obj.magic file)#setExecutable (executable, ownerOnly))
        end
    

    (* Java overload setExecutable(BOOLEAN) is not converted: OCaml has one method per name *)
    

    method canExecute () : bool =
        begin
        ((Obj.magic file)#canExecute ())
        end
    

    method getTotalSpace () : int =
        begin
        ((Obj.magic file)#getTotalSpace ())
        end
    

    method getFreeSpace () : int =
        begin
        ((Obj.magic file)#getFreeSpace ())
        end
    

    method getUsableSpace () : int =
        begin
        ((Obj.magic file)#getUsableSpace ())
        end
    

    method compareTo : 'any1. 'any1 -> int = fun (pathname) ->
        let pathname = Obj.repr pathname in
        begin
        ((Obj.magic file)#compareTo ((Obj.magic pathname)))
        end [@@warning "-20"]
    

    method equals : 'any1. 'any1 -> bool = fun (obj) ->
        let obj = Obj.repr obj in
        begin
        ((Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ())))#equalsNotstring ((Obj.magic file), obj))
        end
    

    method hashCode () : int =
        begin
        ((Obj.magic file)#hashCode ())
        end
    

    method toString () : string =
        begin
        (java_string_of (Obj.repr (Obj.magic file)))
        end

    initializer
      begin
        ();
        ();
        file <- Obj.repr (file_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "AbFile" (fun arguments -> Obj.repr (new abFile (Obj.obj arguments)))

let nULL_FILE = (createAbFileFromRawPath ((StringUtil.getInstance ())#eMPTY_STRING))
let get_nULL_FILE () = nULL_FILE
let () = java_register_static "AbFile.get_nULL_FILE" (fun _ -> Obj.repr (get_nULL_FILE ()))

let createAbFileWithChild : 'any1. 'any1 * string -> _ = fun (file_arg, (childPathName : string)) ->
        let file_arg = Obj.repr file_arg in
        begin
        (new abFile ((new File.file (((Obj.magic file_arg)#getFile ()), childPathName))))
        end [@@warning "-20"]

and createAbFile ((filePath : string)) =
        begin
        (new abFile ((new File.file (((new AbPath.abPath (filePath, (StringUtil.getInstance ())#eMPTY_STRING))#toFileSystemString ())))))
        end

and createAbFilePathAndName ((filePath : string), (fileName : string)) =
        begin
        (new abFile ((new File.file (((new AbPath.abPath (filePath, (StringUtil.getInstance ())#eMPTY_STRING))#toFileSystemString ()), fileName))))
        end

and createAbFileFromAbPath : 'any1. 'any1 -> _ = fun (abPath) ->
        let abPath = Obj.repr abPath in
        begin
        (new abFile ((new File.file (((Obj.magic abPath)#toFileSystemString ())))))
        end [@@warning "-20"]

and createAbFileFromRawPath ((filePath : string)) =
        begin
        (new abFile ((new File.file (filePath))))
        end
let () = java_register_static "AbFile.createAbFileWithChild" (fun arguments -> Obj.repr (createAbFileWithChild (Obj.obj arguments)))
let () = java_register_static "AbFile.createAbFile" (fun arguments -> Obj.repr (createAbFile (Obj.obj arguments)))
let () = java_register_static "AbFile.createAbFilePathAndName" (fun arguments -> Obj.repr (createAbFilePathAndName (Obj.obj arguments)))
let () = java_register_static "AbFile.createAbFileFromAbPath" (fun arguments -> Obj.repr (createAbFileFromAbPath (Obj.obj arguments)))
let () = java_register_static "AbFile.createAbFileFromRawPath" (fun arguments -> Obj.repr (createAbFileFromRawPath (Obj.obj arguments)))


