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
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.input.motion.gesture.MotionGestureInput *)
(* import org.allbinary.input.motion.gesture.TouchMotionGestureFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.string.CommonStrings *)

class completeMotionGestureInputEvent ((name_arg : string), (motionGestureInput_arg : MotionGestureInput.motionGestureInput)) =
  object (self)
    inherit AllBinaryEventObject.allBinaryEventObject (motionGestureInput_arg)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable motionGestureInput : MotionGestureInput.motionGestureInput = (Obj.magic 0)
    method motionGestureInput = motionGestureInput
    method set_motionGestureInput value' = motionGestureInput <- value'
    
    

    method setName ((name_arg : string)) : unit =
        begin
        name <- name_arg
        end [@@warning "-7"]
    

    method getName () : string =
        begin
        name
        end [@@warning "-7"]
    

    method setMotionGestureInput : 'any1. 'any1 -> unit = fun (motionGestureInput_arg) ->
        let motionGestureInput_arg = Obj.repr motionGestureInput_arg in
        begin
        motionGestureInput <- (Obj.magic motionGestureInput_arg)
        end [@@warning "-7-20"]
    

    method getMotionGestureInput () : MotionGestureInput.motionGestureInput =
        begin
        (motionGestureInput :> MotionGestureInput.motionGestureInput)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        name <- (StringUtil.getInstance ())#eMPTY_STRING;
        motionGestureInput <- ((Obj.magic (java_call_static "TouchMotionGestureFactory.getInstance" (Obj.repr ())))#nO_MOTION :> MotionGestureInput.motionGestureInput);
        ();
        (* super(...) is the inherit clause *) ();
        (self#setName (name_arg));
        (try
            (self#setMotionGestureInput (motionGestureInput_arg))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, "InputToGameKeyEventAction", e))
        end)
      end
  end [@@warning "-20"]
let () = java_register_constructor "CompleteMotionGestureInputEvent" (fun arguments -> Obj.repr (new completeMotionGestureInputEvent (Obj.obj arguments)))


