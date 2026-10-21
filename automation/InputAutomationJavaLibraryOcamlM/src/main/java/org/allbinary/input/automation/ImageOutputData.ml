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
(* package org.allbinary.input.automation *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.io.file.FilePathData *)
(* import org.allbinary.logic.string.StringMaker *)

let sAVE_PATH : string = (java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append ((java_system_get_property ("user.dir"))))#appendchar ((FilePathData.getInstance ())#sEPARATORCHAR))#append ("saves"))#appendchar ((FilePathData.getInstance ())#sEPARATORCHAR))))
let get_sAVE_PATH () = sAVE_PATH
let () = java_register_static "ImageOutputData.get_sAVE_PATH" (fun _ -> Obj.repr (get_sAVE_PATH ()))
class imageOutputData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ImageOutputData" (fun arguments -> Obj.repr (new imageOutputData (Obj.obj arguments)))


