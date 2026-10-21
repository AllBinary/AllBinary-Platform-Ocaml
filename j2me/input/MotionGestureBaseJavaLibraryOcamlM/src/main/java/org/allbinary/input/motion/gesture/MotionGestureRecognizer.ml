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
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.Line *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration *)
(* import org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory *)
(* import org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler *)
(* import org.allbinary.input.motion.gesture.observer.MotionEventCircularPool *)
(* import org.allbinary.input.motion.gesture.observer.MotionGestureEvent *)
(* import org.allbinary.input.motion.gesture.observer.MovedMotionGesturesHandler *)
(* import org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.math.J2SEMath *)
(* import org.allbinary.logic.util.event.handler.BasicEventHandler *)
(* import org.allbinary.string.CommonStrings *)

class motionGestureRecognizer ((id : int)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable j2seMath : J2SEMath.j2SEMath = (Obj.magic 0)
    method j2seMath = j2seMath
    method set_j2seMath value' = j2seMath <- value'
    val mutable origin : GPoint.gPoint = (Obj.magic 0)
    method origin = origin
    method set_origin value' = origin <- value'
    val mutable previous : GPoint.gPoint = (Obj.magic 0)
    method previous = previous
    method set_previous value' = previous <- value'
    val mutable intermediate : GPoint.gPoint = (Obj.magic 0)
    method intermediate = intermediate
    method set_intermediate value' = intermediate <- value'
    val mutable line : Line.line = (Obj.magic 0)
    method line = line
    method set_line value' = line <- value'
    val mutable motionGesturesHandler : Obj.t = Obj.repr 0
    method motionGesturesHandler : 'r. 'r = Obj.magic motionGesturesHandler
    method set_motionGesturesHandler : 'v. 'v -> unit = fun value' -> motionGesturesHandler <- Obj.repr value'
    val mutable movedMotionGesturesHandler : Obj.t = Obj.repr 0
    method movedMotionGesturesHandler : 'r. 'r = Obj.magic movedMotionGesturesHandler
    method set_movedMotionGesturesHandler : 'v. 'v -> unit = fun value' -> movedMotionGesturesHandler <- Obj.repr value'
    val mutable scrolledMotionGesturesHandler : Obj.t = Obj.repr 0
    method scrolledMotionGesturesHandler : 'r. 'r = Obj.magic scrolledMotionGesturesHandler
    method set_scrolledMotionGesturesHandler : 'v. 'v -> unit = fun value' -> scrolledMotionGesturesHandler <- Obj.repr value'
    val mutable motionEventCircularPool : MotionEventCircularPool.motionEventCircularPool = (Obj.magic 0)
    method motionEventCircularPool = motionEventCircularPool
    method set_motionEventCircularPool value' = motionEventCircularPool <- value'
    
    

    method processPressedMotionEvent : 'any1. 'any1 * int * int -> bool = fun (current, (_deviceId : int), (_button : int)) ->
        let current = Obj.repr current in
        begin
        intermediate <- origin;
        previous <- origin;
        let event : MotionGestureEvent.motionGestureEvent ref = ref (((motionEventCircularPool#getInstance ((Obj.magic (java_call_static "TouchMotionGestureFactory.getInstance" (Obj.repr ())))#pRESSED)) :> MotionGestureEvent.motionGestureEvent)) in ();
        ignore (!event#setPreviousPoint (previous));
        ignore (!event#setCurrentPoint ((Obj.magic current)));
        ignore ((Obj.magic motionGesturesHandler)#fireEvent (!event));
        true
        end [@@warning "-20"]
    

    method processReleasedMotionEvent : 'any1. 'any1 * int * int -> bool = fun (current, (_deviceId : int), (_button : int)) ->
        let current = Obj.repr current in
        begin
        let event : MotionGestureEvent.motionGestureEvent ref = ref (((motionEventCircularPool#getInstance ((Obj.magic (java_call_static "TouchMotionGestureFactory.getInstance" (Obj.repr ())))#rELEASED)) :> MotionGestureEvent.motionGestureEvent)) in ();
        ignore (!event#setPreviousPoint (previous));
        ignore (!event#setCurrentPoint ((Obj.magic current)));
        ignore ((Obj.magic motionGesturesHandler)#fireEvent (!event));
        true
        end [@@warning "-20"]
    

    method processDraggedMotionEvent : 'any1. 'any1 * int * int -> unit = fun (current, (_deviceId : int), (_buttonMask : int)) ->
        let current = Obj.repr current in
        try
        begin
        if (((Obj.repr previous) == (Obj.repr origin)) || ((Obj.repr intermediate) == (Obj.repr origin))) then begin
            previous <- (Obj.magic current);
            intermediate <- (Obj.magic current);
            raise (Java_return (Obj.repr (())))
        end;
        ignore (line#setP1 (previous));
        ignore (line#setP2 ((Obj.magic current)));
        let minimumMotionGesture : int ref = ref (((MotionGestureConfigurationFactory.getInstance ())#getMinimumMotionGesture ())) in ();
        if (((j2seMath#abs ((java_to_float (Obj.repr ((line#getDeltaX ())))))) < !minimumMotionGesture) && ((j2seMath#abs ((java_to_float (Obj.repr ((line#getDeltaY ())))))) < !minimumMotionGesture)) then begin
            intermediate <- (Obj.magic current);
            raise (Java_return (Obj.repr (())))
        end;
        let gradient : float ref = ref ((line#getGradient ())) in ();
        let absGradient : float ref = ref ((java_to_float (Obj.repr ((j2seMath#abs (!gradient)))))) in ();
        let conf : MotionGestureConfiguration.motionGestureConfiguration ref = ref (((MotionGestureConfigurationFactory.getInstance ()) :> MotionGestureConfiguration.motionGestureConfiguration)) in ();
        let touchMotionGestureFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "TouchMotionGestureFactory.getInstance" (Obj.repr ()))))) in ();
        let newMotionGesture : MotionGestureInput.motionGestureInput ref = ref (((Obj.magic !touchMotionGestureFactory)#nO_MOTION :> MotionGestureInput.motionGestureInput)) in ();
        let diagonalToleranceHigher : float ref = ref (12.0) in ();
        let diagonalToleranceLower : float ref = ref (12.0) in ();
        if (!conf#isDiagonalMotionGestureAllowed ()) then begin
            diagonalToleranceHigher := (java_to_float (Obj.repr (((90 - (!conf#getDiagonalTolerance ()))))));
            diagonalToleranceLower := (java_to_float (Obj.repr ((!conf#getDiagonalTolerance ()))))
        end;
        if (!absGradient > (Float.tan (((!diagonalToleranceHigher) *. Float.pi /. 180.0)))) then begin
            if ((line#getDeltaY ()) > 0) then begin
                newMotionGesture := (Obj.magic !touchMotionGestureFactory)#uP
            end else begin
                newMotionGesture := (Obj.magic !touchMotionGestureFactory)#dOWN
            end
        end else begin
            if (!absGradient < (Float.tan (((!diagonalToleranceLower) *. Float.pi /. 180.0)))) then begin
                if ((line#getDeltaX ()) > 0) then begin
                    newMotionGesture := (Obj.magic !touchMotionGestureFactory)#lEFT
                end else begin
                    newMotionGesture := (Obj.magic !touchMotionGestureFactory)#rIGHT
                end
            end else begin
                if (!gradient > 0.) then begin
                    if ((line#getDeltaX ()) > 0) then begin
                        newMotionGesture := (Obj.magic !touchMotionGestureFactory)#dIAGONAL_UP_LEFT
                    end else begin
                        newMotionGesture := (Obj.magic !touchMotionGestureFactory)#dIAGONAL_DOWN_RIGHT
                    end
                end else begin
                    if ((line#getDeltaX ()) > 0) then begin
                        newMotionGesture := (Obj.magic !touchMotionGestureFactory)#dIAGONAL_DOWN_LEFT
                    end else begin
                        newMotionGesture := (Obj.magic !touchMotionGestureFactory)#dIAGONAL_UP_RIGHT
                    end
                end
            end
        end;
        previous <- (Obj.magic current);
        intermediate <- (Obj.magic current);
        let event : MotionGestureEvent.motionGestureEvent ref = ref (((motionEventCircularPool#getInstance (!newMotionGesture)) :> MotionGestureEvent.motionGestureEvent)) in ();
        ignore (!event#setPreviousPoint (previous));
        ignore (!event#setCurrentPoint ((Obj.magic current)));
        ignore ((Obj.magic motionGesturesHandler)#fireEvent (!event));
        ()
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method processMovedMotionEvent : 'any1. 'any1 * int * int -> bool = fun (current, (_deviceId : int), (_button : int)) ->
        let current = Obj.repr current in
        begin
        let event : MotionGestureEvent.motionGestureEvent ref = ref (((motionEventCircularPool#getInstance ((Obj.magic (java_call_static "TouchMotionGestureFactory.getInstance" (Obj.repr ())))#nO_MOTION)) :> MotionGestureEvent.motionGestureEvent)) in ();
        ignore (!event#setPreviousPoint (previous));
        ignore (!event#setCurrentPoint ((Obj.magic current)));
        ignore ((Obj.magic movedMotionGesturesHandler)#fireEvent (!event));
        true
        end [@@warning "-20"]
    

    method processScrolledMotionEvent : 'any1. 'any1 * int * int -> bool = fun (current, (_deviceId : int), (button : int)) ->
        let current = Obj.repr current in
        begin
        let touchMotionGestureFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "TouchMotionGestureFactory.getInstance" (Obj.repr ()))))) in ();
        let newMotionGesture : MotionGestureInput.motionGestureInput ref = ref (((Obj.magic !touchMotionGestureFactory)#nO_MOTION :> MotionGestureInput.motionGestureInput)) in ();
        if (button > 0) then begin
            newMotionGesture := (Obj.magic !touchMotionGestureFactory)#sCROLL_UP
        end else if (button < 0) then begin
            newMotionGesture := (Obj.magic !touchMotionGestureFactory)#sCROLL_DOWN
        end;
        let event : MotionGestureEvent.motionGestureEvent ref = ref (((motionEventCircularPool#getInstance (!newMotionGesture)) :> MotionGestureEvent.motionGestureEvent)) in ();
        ignore (!event#setPreviousPoint (previous));
        ignore (!event#setCurrentPoint ((Obj.magic current)));
        ignore ((Obj.magic scrolledMotionGesturesHandler)#fireEvent (!event));
        true
        end [@@warning "-20"]
    

    method getMotionGesturesHandler : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic motionGesturesHandler)))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        j2seMath <- ((J2SEMath.getInstance ()) :> J2SEMath.j2SEMath);
        origin <- ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#zERO_ZERO :> GPoint.gPoint);
        previous <- (origin :> GPoint.gPoint);
        intermediate <- (origin :> GPoint.gPoint);
        line <- ((new Line.line (origin, origin)) :> Line.line);
        ();
        ();
        ();
        ();
        ();
        motionEventCircularPool <- (MotionEventCircularPool.createPool (id));
        let motionGesturesHandler_arg : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "BasicEventHandler" (Obj.repr ()))))) in ();
        let movedMotionGesturesHandler_arg : Obj.t ref = ref ((Obj.repr (Obj.magic !motionGesturesHandler_arg))) in ();
        let scrolledMotionGesturesHandler_arg : Obj.t ref = ref ((Obj.repr (Obj.magic !motionGesturesHandler_arg))) in ();
        (try
            motionGesturesHandler_arg := Obj.repr ((Obj.magic (java_call_static "BasicMotionGesturesHandler.getInstance" (Obj.repr ()))));
            movedMotionGesturesHandler_arg := Obj.repr ((MovedMotionGesturesHandler.getInstance ()));
            scrolledMotionGesturesHandler_arg := Obj.repr ((ScrolledMotionGesturesHandler.getInstance ()))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#cONSTRUCTOR, e))
        end);
        motionGesturesHandler <- Obj.repr ((Obj.magic (Obj.magic !motionGesturesHandler_arg)));
        movedMotionGesturesHandler <- Obj.repr ((Obj.magic !movedMotionGesturesHandler_arg));
        scrolledMotionGesturesHandler <- Obj.repr ((Obj.magic !scrolledMotionGesturesHandler_arg))
      end
  end [@@warning "-20"]
let () = java_register_constructor "MotionGestureRecognizer" (fun arguments -> Obj.repr (new motionGestureRecognizer (Obj.obj arguments)))


