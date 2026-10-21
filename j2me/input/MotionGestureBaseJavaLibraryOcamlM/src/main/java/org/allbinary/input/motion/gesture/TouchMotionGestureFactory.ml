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
let () = java_register_static "TouchMotionGestureFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
class touchMotionGestureFactory () =
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
    val mutable pRESSED : MotionGestureInput.motionGestureInput = (Obj.magic 0)
    method pRESSED = pRESSED
    method set_pRESSED value' = pRESSED <- value'
    val mutable rELEASED : MotionGestureInput.motionGestureInput = (Obj.magic 0)
    method rELEASED = rELEASED
    method set_rELEASED value' = rELEASED <- value'
    val mutable dIAGONAL_DOWN_RIGHT : MotionGestureInput.motionGestureInput = (Obj.magic 0)
    method dIAGONAL_DOWN_RIGHT = dIAGONAL_DOWN_RIGHT
    method set_dIAGONAL_DOWN_RIGHT value' = dIAGONAL_DOWN_RIGHT <- value'
    val mutable dIAGONAL_DOWN_LEFT : MotionGestureInput.motionGestureInput = (Obj.magic 0)
    method dIAGONAL_DOWN_LEFT = dIAGONAL_DOWN_LEFT
    method set_dIAGONAL_DOWN_LEFT value' = dIAGONAL_DOWN_LEFT <- value'
    val mutable dIAGONAL_UP_RIGHT : MotionGestureInput.motionGestureInput = (Obj.magic 0)
    method dIAGONAL_UP_RIGHT = dIAGONAL_UP_RIGHT
    method set_dIAGONAL_UP_RIGHT value' = dIAGONAL_UP_RIGHT <- value'
    val mutable dIAGONAL_UP_LEFT : MotionGestureInput.motionGestureInput = (Obj.magic 0)
    method dIAGONAL_UP_LEFT = dIAGONAL_UP_LEFT
    method set_dIAGONAL_UP_LEFT value' = dIAGONAL_UP_LEFT <- value'
    val mutable sCROLL_UP : MotionGestureInput.motionGestureInput = (Obj.magic 0)
    method sCROLL_UP = sCROLL_UP
    method set_sCROLL_UP value' = sCROLL_UP <- value'
    val mutable sCROLL_DOWN : MotionGestureInput.motionGestureInput = (Obj.magic 0)
    method sCROLL_DOWN = sCROLL_DOWN
    method set_sCROLL_DOWN value' = sCROLL_DOWN <- value'
    val mutable nO_MOTION : MotionGestureInput.motionGestureInput = (Obj.magic 0)
    method nO_MOTION = nO_MOTION
    method set_nO_MOTION value' = nO_MOTION <- value'
    val mutable lAST_MOTION : MotionGestureInput.motionGestureInput = (Obj.magic 0)
    method lAST_MOTION = lAST_MOTION
    method set_lAST_MOTION value' = lAST_MOTION <- value'
    

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        let mAX : int ref = ref ((InputFactory.getInstance ())#mAX) in ();
        lEFT <- (new MotionGestureInput.motionGestureInput ((!mAX - 3), "Left Touch"));
        rIGHT <- (new MotionGestureInput.motionGestureInput ((!mAX - 4), "Right Touch"));
        uP <- (new MotionGestureInput.motionGestureInput ((!mAX - 5), "Up Touch"));
        dOWN <- (new MotionGestureInput.motionGestureInput ((!mAX - 6), "Down Touch"));
        pRESSED <- (new MotionGestureInput.motionGestureInput ((!mAX - 7), "Screen Press"));
        rELEASED <- (new MotionGestureInput.motionGestureInput ((!mAX - 8), "Released"));
        dIAGONAL_DOWN_RIGHT <- (new MotionGestureInput.motionGestureInput ((!mAX - 9), "Diagonal Dn R"));
        dIAGONAL_DOWN_LEFT <- (new MotionGestureInput.motionGestureInput ((!mAX - 10), "Diagonal Dn L"));
        dIAGONAL_UP_RIGHT <- (new MotionGestureInput.motionGestureInput ((!mAX - 11), "Diagonal Up R"));
        dIAGONAL_UP_LEFT <- (new MotionGestureInput.motionGestureInput ((!mAX - 12), "Diagonal Up L"));
        sCROLL_UP <- (new MotionGestureInput.motionGestureInput ((!mAX - 13), "Scroll Up"));
        sCROLL_DOWN <- (new MotionGestureInput.motionGestureInput ((!mAX - 14), "Scroll Down"));
        nO_MOTION <- (new MotionGestureInput.motionGestureInput ((!mAX - 2), "No Motion"));
        lAST_MOTION <- (new MotionGestureInput.motionGestureInput ((!mAX - 19), "Last Motion"))
      end
  end
let () = java_register_constructor "TouchMotionGestureFactory" (fun arguments -> Obj.repr (new touchMotionGestureFactory (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new touchMotionGestureFactory ())
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "TouchMotionGestureFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


