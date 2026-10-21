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
(* package org.allbinary.logic.visual.transform.info.template *)

open Allbinary_java [@@warning "-33"]

class transformInfoTemplateData () =
  object
    val mutable uNCRYPTED_EXTENSION : string = ""
    method uNCRYPTED_EXTENSION = uNCRYPTED_EXTENSION
    method set_uNCRYPTED_EXTENSION value' = uNCRYPTED_EXTENSION <- value'
    val mutable eNCRYPTED_EXTENSION : string = ""
    method eNCRYPTED_EXTENSION = eNCRYPTED_EXTENSION
    method set_eNCRYPTED_EXTENSION value' = eNCRYPTED_EXTENSION <- value'
    

    initializer
      begin
        uNCRYPTED_EXTENSION <- "xsl";
        eNCRYPTED_EXTENSION <- "abv";
        ();
        ()
      end
  end
let () = java_register_constructor "TransformInfoTemplateData" (fun arguments -> Obj.repr (new transformInfoTemplateData (Obj.obj arguments)))

let instance = (new transformInfoTemplateData ())
let get_instance () = instance
let () = java_register_static "TransformInfoTemplateData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TransformInfoTemplateData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


