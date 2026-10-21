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
(* package org.allbinary.logic.communication.http.file.upload *)

open Allbinary_java [@@warning "-33"]

class fileUploadData () =
  object
    val mutable fILE : string = ""
    method fILE = fILE
    method set_fILE value' = fILE <- value'
    val mutable uPLOAD_TO_FILE_PATH : string = ""
    method uPLOAD_TO_FILE_PATH = uPLOAD_TO_FILE_PATH
    method set_uPLOAD_TO_FILE_PATH value' = uPLOAD_TO_FILE_PATH <- value'
    val mutable fILE_DATA : string = ""
    method fILE_DATA = fILE_DATA
    method set_fILE_DATA value' = fILE_DATA <- value'

    initializer
      begin
        fILE <- "download_file_permissions.xml";
        uPLOAD_TO_FILE_PATH <- "FILE_UPLOAD_UPLOAD_TO_FILE_PATH";
        fILE_DATA <- "FILE_UPLOAD_FILE_DATA";
        ()
      end
  end
let () = java_register_constructor "FileUploadData" (fun arguments -> Obj.repr (new fileUploadData (Obj.obj arguments)))

let instance = (new fileUploadData ())
let get_instance () = instance
let () = java_register_static "FileUploadData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "FileUploadData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


