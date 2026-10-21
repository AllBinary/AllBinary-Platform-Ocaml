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
(* package org.allbinary.logic.visual.transform.template.customizer.bodies *)

open Allbinary_java [@@warning "-33"]

class bodyData () =
  object
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable vIEWNAMEKEY : string = ""
    method vIEWNAMEKEY = vIEWNAMEKEY
    method set_vIEWNAMEKEY value' = vIEWNAMEKEY <- value'
    val mutable mIN : int = 0
    method mIN = mIN
    method set_mIN value' = mIN <- value'
    

    initializer
      begin
        nAME <- "BODY_NAME";
        vIEWNAMEKEY <- "Body";
        mIN <- 0;
        ();
        ()
      end
  end
let () = java_register_constructor "BodyData" (fun arguments -> Obj.repr (new bodyData (Obj.obj arguments)))

let instance = (new bodyData ())
let get_instance () = instance
let () = java_register_static "BodyData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "BodyData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


