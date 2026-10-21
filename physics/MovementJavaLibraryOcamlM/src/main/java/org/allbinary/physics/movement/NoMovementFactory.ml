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
(* package org.allbinary.physics.movement *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class noMovementFactory () =
  object
    val mutable movement : Movement.movement = (Obj.magic 0)
    method movement = movement
    method set_movement value' = movement <- value'
    

    method getMovmentInstance () : Movement.movement =
        begin
        (movement :> Movement.movement)
        end

    initializer
      begin
        movement <- ((new Movement.movement ()) :> Movement.movement);
        ()
      end
  end
let () = java_register_constructor "NoMovementFactory" (fun arguments -> Obj.repr (new noMovementFactory (Obj.obj arguments)))

let instance = (new noMovementFactory ())
let get_instance () = instance
let () = java_register_static "NoMovementFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "NoMovementFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


