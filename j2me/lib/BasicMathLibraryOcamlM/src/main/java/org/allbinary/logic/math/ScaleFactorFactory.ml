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
(* package org.allbinary.logic.math *)

open Allbinary_java [@@warning "-33"]

class scaleFactorFactory () =
  object
    val mutable dEFAULT_SCALE_FACTOR : int = 0
    method dEFAULT_SCALE_FACTOR = dEFAULT_SCALE_FACTOR
    method set_dEFAULT_SCALE_FACTOR value' = dEFAULT_SCALE_FACTOR <- value'
    val mutable dEFAULT_SCALE_VALUE : int = 0
    method dEFAULT_SCALE_VALUE = dEFAULT_SCALE_VALUE
    method set_dEFAULT_SCALE_VALUE value' = dEFAULT_SCALE_VALUE <- value'

    initializer
      begin
        dEFAULT_SCALE_FACTOR <- 10;
        dEFAULT_SCALE_VALUE <- 1024;
        ()
      end
  end
let () = java_register_constructor "ScaleFactorFactory" (fun arguments -> Obj.repr (new scaleFactorFactory (Obj.obj arguments)))

let instance = (new scaleFactorFactory ())
let get_instance () = instance
let () = java_register_static "ScaleFactorFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ScaleFactorFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


