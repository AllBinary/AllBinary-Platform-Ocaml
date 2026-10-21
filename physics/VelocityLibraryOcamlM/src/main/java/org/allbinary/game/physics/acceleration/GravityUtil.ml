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
(* package org.allbinary.game.physics.acceleration *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.physics.velocity.BasicVelocityProperties *)

class gravityUtil () =
  object
    val mutable gAME_GRAVITY_VELOCITY : int = 0
    method gAME_GRAVITY_VELOCITY = gAME_GRAVITY_VELOCITY
    method set_gAME_GRAVITY_VELOCITY value' = gAME_GRAVITY_VELOCITY <- value'
    val mutable mAX_GAME_VELOCITY : int = 0
    method mAX_GAME_VELOCITY = mAX_GAME_VELOCITY
    method set_mAX_GAME_VELOCITY value' = mAX_GAME_VELOCITY <- value'
    

    method process : 'any1. 'any1 * int -> unit = fun (velocityProperties, (customGravity : int)) ->
        let velocityProperties = Obj.repr velocityProperties in
        begin
        ignore (((Obj.magic velocityProperties)#getVelocityYBasicDecimalP ())#addint (customGravity))
        end [@@warning "-20"]

    initializer
      begin
        gAME_GRAVITY_VELOCITY <- 1800;
        mAX_GAME_VELOCITY <- 18000;
        ()
      end
  end
let () = java_register_constructor "GravityUtil" (fun arguments -> Obj.repr (new gravityUtil (Obj.obj arguments)))

let instance = (new gravityUtil ())
let get_instance () = instance
let () = java_register_static "GravityUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GravityUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


