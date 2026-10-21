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
(* package org.allbinary.input.motion.gesture *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.InputFactory *)
(* import org.allbinary.logic.NullUtil *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "TrackballMotionGestureFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
class trackballMotionGestureFactory () =
  object
    val mutable lEFT : MotionGestureInput.motionGestureInput = (Obj.magic 0)
    method lEFT = lEFT
    method set_lEFT value' = lEFT <- value'
    val mutable rIGHT : MotionGestureInput.motionGestureInput = (Obj.magic 0)
    method rIGHT = rIGHT
    method set_rIGHT value' = rIGHT <- value'
    val mutable uP : MotionGestureInput.motionGestureInput = (Obj.magic 0)
    method uP = uP
    method set_uP value' = uP <- value'
    val mutable dOWN : MotionGestureInput.motionGestureInput = (Obj.magic 0)
    method dOWN = dOWN
    method set_dOWN value' = dOWN <- value'
    

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        let mAX : int ref = ref ((InputFactory.getInstance ())#mAX) in ();
        lEFT <- (new MotionGestureInput.motionGestureInput ((!mAX - 26), "L Trackball"));
        rIGHT <- (new MotionGestureInput.motionGestureInput ((!mAX - 27), "R Trackball"));
        uP <- (new MotionGestureInput.motionGestureInput ((!mAX - 28), "Up Trackball"));
        dOWN <- (new MotionGestureInput.motionGestureInput ((!mAX - 29), "D Trackball"))
      end
  end
let () = java_register_constructor "TrackballMotionGestureFactory" (fun arguments -> Obj.repr (new trackballMotionGestureFactory (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new trackballMotionGestureFactory ())
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "TrackballMotionGestureFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


