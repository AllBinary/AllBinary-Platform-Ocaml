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
(* package org.allbinary.input.motion *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.input.motion.gesture.TouchMotionGestureFactory *)
(* import org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration *)
(* import org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory *)
(* import org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction *)
(* import org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction *)
(* import org.allbinary.input.motion.touch.action.DiagonalUpLeftTouchInputToGameKeyEventAction *)
(* import org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction *)
(* import org.allbinary.input.motion.touch.action.DownTouchInputToGameKeyEventAction *)
(* import org.allbinary.input.motion.touch.action.LeftTouchInputToGameKeyEventAction *)
(* import org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction *)
(* import org.allbinary.input.motion.touch.action.RightTouchInputToGameKeyEventAction *)
(* import org.allbinary.input.motion.touch.action.UpTouchInputToGameKeyEventAction *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class completeMotionGestureInputToGameMotionGestureInput () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    

    method init () : unit =
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        (try
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ("Compound Motion Gestures", self, !commonStrings#iNIT))));
            let motionGestureConfiguration : MotionGestureConfiguration.motionGestureConfiguration ref = ref (((MotionGestureConfigurationFactory.getInstance ()) :> MotionGestureConfiguration.motionGestureConfiguration)) in ();
            let touchMotionGestureFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "TouchMotionGestureFactory.getInstance" (Obj.repr ()))))) in ();
            let list : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            ignore (!list#add ((Obj.magic !touchMotionGestureFactory)#dIAGONAL_DOWN_LEFT));
            ignore (!motionGestureConfiguration#addMotionGestureAction (!list, (DiagonalDownLeftTouchInputToGameKeyEventAction.getInstance ())));
            list := (new BasicArrayListD.basicArrayListD ());
            ignore (!list#add ((Obj.magic !touchMotionGestureFactory)#dIAGONAL_DOWN_RIGHT));
            ignore (!motionGestureConfiguration#addMotionGestureAction (!list, (DiagonalDownRightTouchInputToGameKeyEventAction.getInstance ())));
            list := (new BasicArrayListD.basicArrayListD ());
            ignore (!list#add ((Obj.magic !touchMotionGestureFactory)#dIAGONAL_UP_LEFT));
            ignore (!motionGestureConfiguration#addMotionGestureAction (!list, (DiagonalUpLeftTouchInputToGameKeyEventAction.getInstance ())));
            list := (new BasicArrayListD.basicArrayListD ());
            ignore (!list#add ((Obj.magic !touchMotionGestureFactory)#dIAGONAL_UP_RIGHT));
            ignore (!motionGestureConfiguration#addMotionGestureAction (!list, (DiagonalUpRightTouchInputToGameKeyEventAction.getInstance ())));
            list := (new BasicArrayListD.basicArrayListD ());
            ignore (!list#add ((Obj.magic !touchMotionGestureFactory)#lEFT));
            ignore (!motionGestureConfiguration#addMotionGestureAction (!list, (LeftTouchInputToGameKeyEventAction.getInstance ())));
            list := (new BasicArrayListD.basicArrayListD ());
            ignore (!list#add ((Obj.magic !touchMotionGestureFactory)#rIGHT));
            ignore (!motionGestureConfiguration#addMotionGestureAction (!list, (RightTouchInputToGameKeyEventAction.getInstance ())));
            list := (new BasicArrayListD.basicArrayListD ());
            ignore (!list#add ((Obj.magic !touchMotionGestureFactory)#dOWN));
            ignore (!motionGestureConfiguration#addMotionGestureAction (!list, (DownTouchInputToGameKeyEventAction.getInstance ())));
            list := (new BasicArrayListD.basicArrayListD ());
            ignore (!list#add ((Obj.magic !touchMotionGestureFactory)#uP));
            ignore (!motionGestureConfiguration#addMotionGestureAction (!list, (UpTouchInputToGameKeyEventAction.getInstance ())));
            list := (new BasicArrayListD.basicArrayListD ());
            ignore (!list#add ((Obj.magic !touchMotionGestureFactory)#rELEASED));
            ignore (!motionGestureConfiguration#addMotionGestureAction (!list, (ReleaseTouchInputToGameKeyEventAction.getInstance ())))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#iNIT, e))
        end)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "CompleteMotionGestureInputToGameMotionGestureInput" (fun arguments -> Obj.repr (new completeMotionGestureInputToGameMotionGestureInput (Obj.obj arguments)))

let instance = (new completeMotionGestureInputToGameMotionGestureInput ())
let get_instance () = instance
let () = java_register_static "CompleteMotionGestureInputToGameMotionGestureInput.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "CompleteMotionGestureInputToGameMotionGestureInput.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


