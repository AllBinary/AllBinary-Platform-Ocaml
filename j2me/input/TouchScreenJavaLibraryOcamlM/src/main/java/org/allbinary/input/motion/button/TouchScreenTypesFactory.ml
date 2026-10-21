(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.input.motion.button *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class touchScreenTypesFactory () =
  object
    val mutable fINGER : TouchScreenType.touchScreenType = (Obj.magic 0)
    method fINGER = fINGER
    method set_fINGER value' = fINGER <- value'
    val mutable nOTOUCH : TouchScreenType.touchScreenType = (Obj.magic 0)
    method nOTOUCH = nOTOUCH
    method set_nOTOUCH value' = nOTOUCH <- value'
    val mutable sTYLUS : TouchScreenType.touchScreenType = (Obj.magic 0)
    method sTYLUS = sTYLUS
    method set_sTYLUS value' = sTYLUS <- value'
    val mutable uNDEFINED : TouchScreenType.touchScreenType = (Obj.magic 0)
    method uNDEFINED = uNDEFINED
    method set_uNDEFINED value' = uNDEFINED <- value'

    initializer
      begin
        fINGER <- ((new TouchScreenType.touchScreenType ("Finger")) :> TouchScreenType.touchScreenType);
        nOTOUCH <- ((new TouchScreenType.touchScreenType ("No Touch")) :> TouchScreenType.touchScreenType);
        sTYLUS <- ((new TouchScreenType.touchScreenType ("Stylus")) :> TouchScreenType.touchScreenType);
        uNDEFINED <- ((new TouchScreenType.touchScreenType ("Undefined")) :> TouchScreenType.touchScreenType);
        ()
      end
  end
let () = java_register_constructor "TouchScreenTypesFactory" (fun arguments -> Obj.repr (new touchScreenTypesFactory (Obj.obj arguments)))

let instance = (new touchScreenTypesFactory ())
let get_instance () = instance
let () = java_register_static "TouchScreenTypesFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TouchScreenTypesFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


