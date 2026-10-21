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
(* package org.allbinary.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.input.motion.AllMotionRecognizer *)
(* import org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler *)
(* import org.allbinary.input.motion.gesture.observer.GameMotionGestureListener *)
(* import org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class touchJ2ME () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable dEVICE_ID : int = 0
    method dEVICE_ID = dEVICE_ID
    method set_dEVICE_ID value' = dEVICE_ID <- value'
    val mutable motionRecognizer : Obj.t = Obj.repr 0
    method motionRecognizer : 'r. 'r = Obj.magic motionRecognizer
    method set_motionRecognizer : 'v. 'v -> unit = fun value' -> motionRecognizer <- Obj.repr value'
    
    

    method pointerDragged ((x : int), (y : int)) : unit =
        begin
        (try
            ignore ((Obj.magic motionRecognizer)#processDraggedMotionEvent (x, y, dEVICE_ID, 0))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, "pointerDragged", e))
        end)
        end
    

    method pointerPressed ((x : int), (y : int)) : unit =
        begin
        (try
            ignore ((Obj.magic motionRecognizer)#processStartMotionEvent (x, y, dEVICE_ID, 0))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, "pointerPressed", e))
        end)
        end
    

    method pointerReleased ((x : int), (y : int)) : unit =
        begin
        (try
            ignore ((Obj.magic motionRecognizer)#processEndMotionEvent (x, y, dEVICE_ID, 0))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, "pointerReleased", e))
        end)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        dEVICE_ID <- 0;
        motionRecognizer <- (Obj.repr (Obj.obj (java_new "AllMotionRecognizer" (Obj.repr ()))));
        ();
        let motionGesturesHandler : Obj.t ref = ref ((Obj.repr (((Obj.magic motionRecognizer)#getMotionGestureRecognizer ())#getMotionGesturesHandler ()))) in ();
        ignore ((Obj.magic !motionGesturesHandler)#addListenerInterface ((new GameMotionGestureListener.gameMotionGestureListener ((MotionGestureReceiveInterfaceFactory.getInstance ())))))
      end
  end [@@warning "-20"]
let () = java_register_constructor "TouchJ2ME" (fun arguments -> Obj.repr (new touchJ2ME (Obj.obj arguments)))


