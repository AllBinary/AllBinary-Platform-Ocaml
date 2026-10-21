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
(* package org.allbinary.input.motion.gesture.observer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.CompleteMotionGestureInputEventHandler *)
(* import org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent *)
(* import org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener *)
(* import org.allbinary.input.motion.gesture.MotionGestureToMotionGestureActionAssociation *)
(* import org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration *)
(* import org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)

class resolveCompleteMotionGestureListener () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method onMotionGestureCompleted : 'any1. 'any1 -> unit = fun (list) ->
        let list = Obj.repr list in
        begin
        let configuration : MotionGestureConfiguration.motionGestureConfiguration ref = ref (((MotionGestureConfigurationFactory.getInstance ()) :> MotionGestureConfiguration.motionGestureConfiguration)) in ();
        let commandActionsList : BasicArrayList.basicArrayList ref = ref (((!configuration#getAssociateCommandActionsList ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!commandActionsList#size ())) in ();
        for index = (!size - 1) downto 0 do
            let association : MotionGestureToMotionGestureActionAssociation.motionGestureToMotionGestureActionAssociation ref = ref (((Obj.magic !commandActionsList#objectArray.(index)) :> MotionGestureToMotionGestureActionAssociation.motionGestureToMotionGestureActionAssociation)) in ();
            if ((!association#isMotionGestureArrayEquals ((Obj.magic list))) == true) then begin
                let completeMotionGestureInputEvent : Obj.t ref = ref ((Obj.repr (Obj.magic (!association#getCommandAction ())))) in ();
                ignore ((CompleteMotionGestureInputEventHandler.getInstance ())#fireEvent ((Obj.magic !completeMotionGestureInputEvent)));
                raise Java_break
            end
        done
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore ((Obj.magic logUtil)#putF ("MotionGesture to CompleteMotionGesture Reciever", self, !commonStrings#cONSTRUCTOR));
        ignore ((CompleteMotionGestureInputEventHandler.getInstance ())#addListener ((new GameKeyFromMotionGestureEventListener.gameKeyFromMotionGestureEventListener ())))
      end
  end [@@warning "-20"]
let () = java_register_constructor "ResolveCompleteMotionGestureListener" (fun arguments -> Obj.repr (new resolveCompleteMotionGestureListener (Obj.obj arguments)))


