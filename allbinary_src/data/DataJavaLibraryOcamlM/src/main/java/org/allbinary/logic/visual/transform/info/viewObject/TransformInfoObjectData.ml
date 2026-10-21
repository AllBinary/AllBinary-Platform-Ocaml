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
(* package org.allbinary.logic.visual.transform.info.viewObject *)

open Allbinary_java [@@warning "-33"]

class transformInfoObjectData () =
  object
    val mutable uNCRYPTED_EXTENSION : string = ""
    method uNCRYPTED_EXTENSION = uNCRYPTED_EXTENSION
    method set_uNCRYPTED_EXTENSION value' = uNCRYPTED_EXTENSION <- value'
    val mutable eNCRYPTED_EXTENSION : string = ""
    method eNCRYPTED_EXTENSION = eNCRYPTED_EXTENSION
    method set_eNCRYPTED_EXTENSION value' = eNCRYPTED_EXTENSION <- value'
    

    initializer
      begin
        uNCRYPTED_EXTENSION <- "class";
        eNCRYPTED_EXTENSION <- "abw";
        ();
        ()
      end
  end
let () = java_register_constructor "TransformInfoObjectData" (fun arguments -> Obj.repr (new transformInfoObjectData (Obj.obj arguments)))

let instance = (new transformInfoObjectData ())
let get_instance () = instance
let () = java_register_static "TransformInfoObjectData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TransformInfoObjectData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


