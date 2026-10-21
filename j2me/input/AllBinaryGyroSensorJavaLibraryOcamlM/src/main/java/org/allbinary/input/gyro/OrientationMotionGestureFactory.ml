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
(* package org.allbinary.input.gyro *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.InputFactory *)
(* import org.allbinary.input.motion.gesture.MotionGestureInput *)
(* import org.allbinary.logic.NullUtil *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "OrientationMotionGestureFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
class orientationMotionGestureFactory () =
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
    val mutable rOLL_LEFT : MotionGestureInput.motionGestureInput = (Obj.magic 0)
    method rOLL_LEFT = rOLL_LEFT
    method set_rOLL_LEFT value' = rOLL_LEFT <- value'
    val mutable rOLL_RIGHT : MotionGestureInput.motionGestureInput = (Obj.magic 0)
    method rOLL_RIGHT = rOLL_RIGHT
    method set_rOLL_RIGHT value' = rOLL_RIGHT <- value'
    

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        let mAX : int ref = ref ((InputFactory.getInstance ())#mAX) in ();
        lEFT <- (new MotionGestureInput.motionGestureInput ((!mAX - 20), "Left Orient"));
        rIGHT <- (new MotionGestureInput.motionGestureInput ((!mAX - 21), "Right Orient"));
        uP <- (new MotionGestureInput.motionGestureInput ((!mAX - 22), "Up Orient"));
        dOWN <- (new MotionGestureInput.motionGestureInput ((!mAX - 23), "Down Orient"));
        rOLL_LEFT <- (new MotionGestureInput.motionGestureInput ((!mAX - 24), "Roll Left"));
        rOLL_RIGHT <- (new MotionGestureInput.motionGestureInput ((!mAX - 25), "Roll Right"))
      end
  end
let () = java_register_constructor "OrientationMotionGestureFactory" (fun arguments -> Obj.repr (new orientationMotionGestureFactory (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new orientationMotionGestureFactory ())
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "OrientationMotionGestureFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


