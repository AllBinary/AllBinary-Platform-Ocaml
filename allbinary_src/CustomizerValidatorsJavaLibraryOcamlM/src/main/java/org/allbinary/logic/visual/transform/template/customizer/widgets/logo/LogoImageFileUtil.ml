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
(* package org.allbinary.logic.visual.transform.template.customizer.widgets.logo *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.ByteArrayInputStream *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.FileUtil *)
(* import org.allbinary.logic.io.file.directory.Directory *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.apache.commons.fileupload.FileItem *)

class logoImageFileUtil ((imageAbPath : AbPath.abPath), (imageFile : string)) =
  object
    val mutable directory : Directory.directory = (Obj.magic 0)
    method directory = directory
    method set_directory value' = directory <- value'
    val mutable fileName : string = ""
    method fileName = fileName
    method set_fileName value' = fileName <- value'
    val mutable imageFileAbPath : AbPath.abPath = (Obj.magic 0)
    method imageFileAbPath = imageFileAbPath
    method set_imageFileAbPath value' = imageFileAbPath <- value'
    
    

    method saveFiles : 'any1. 'any1 -> unit = fun (fileItem) ->
        let fileItem = Obj.repr fileItem in
        begin
        if (fileName = (Obj.magic 0)) then begin
            raise (Failure ("Image File Name Was Null"))
        end;
        if (not (directory#create (imageFileAbPath))) then begin
            raise (Failure ("Unable to save file to non creatable directory"))
        end;
        let originalImageFile : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr (((java_string_of (Obj.repr imageFileAbPath)) ^ fileName))))))) in ();
        ignore ((Obj.magic !originalImageFile)#createNewFile ());
        ignore ((FileUtil.getInstance ())#write ((new ByteArrayInputStream.byteArrayInputStream (((Obj.magic fileItem)#get ()))), (Obj.magic !originalImageFile)))
        end [@@warning "-20"]

    initializer
      begin
        directory <- ((Directory.getInstance ()) :> Directory.directory);
        ();
        ();
        ();
        fileName <- imageFile;
        imageFileAbPath <- imageAbPath
      end
  end
let () = java_register_constructor "LogoImageFileUtil" (fun arguments -> Obj.repr (new logoImageFileUtil (Obj.obj arguments)))


