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
(* package org.allbinary.input.motion.button *)

open Allbinary_java [@@warning "-33"]

let instance : BaseTouchInput.baseTouchInput = ((new BaseTouchInput.baseTouchInput ()) :> BaseTouchInput.baseTouchInput)
let get_instance () = instance
let () = java_register_static "NoButtonsTouchInputFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () : BaseTouchInput.baseTouchInput =
        begin
        (instance :> BaseTouchInput.baseTouchInput)
        end

let () = java_register_static "NoButtonsTouchInputFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class noButtonsTouchInputFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NoButtonsTouchInputFactory" (fun arguments -> Obj.repr (new noButtonsTouchInputFactory (Obj.obj arguments)))


