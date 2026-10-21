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
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.input.motion.gesture.MotionGestureInput *)
(* import org.allbinary.input.motion.gesture.TouchMotionGestureFactory *)
(* import org.allbinary.TsUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.string.CommonLabels *)

let pREVIOUS : string = " Previous: "
let get_pREVIOUS () = pREVIOUS
let () = java_register_static "MotionGestureEvent.get_pREVIOUS" (fun _ -> Obj.repr (get_pREVIOUS ()))
let hASHCODE : string = " hashcode: "
let get_hASHCODE () = hASHCODE
let () = java_register_static "MotionGestureEvent.get_hASHCODE" (fun _ -> Obj.repr (get_hASHCODE ()))
class motionGestureEvent ((source : Obj.t), (id_arg : int), (motionGesture_arg : MotionGestureInput.motionGestureInput)) =
  object (self)
    inherit AllBinaryEventObject.allBinaryEventObject (source)
    val mutable motionGesture : MotionGestureInput.motionGestureInput = (Obj.magic 0)
    method motionGesture = motionGesture
    method set_motionGesture value' = motionGesture <- value'
    val mutable id : int = 0
    method id = id
    method set_id value' = id <- value'
    val mutable previousPoint : GPoint.gPoint = (Obj.magic 0)
    method previousPoint = previousPoint
    method set_previousPoint value' = previousPoint <- value'
    val mutable currentPoint : GPoint.gPoint = (Obj.magic 0)
    method currentPoint = currentPoint
    method set_currentPoint value' = currentPoint <- value'
    val mutable commonLabels : CommonLabels.commonLabels = (Obj.magic 0)
    method commonLabels = commonLabels
    method set_commonLabels value' = commonLabels <- value'
    
    

    method getMotionGesture () : MotionGestureInput.motionGestureInput =
        begin
        (motionGesture :> MotionGestureInput.motionGestureInput)
        end [@@warning "-7"]
    

    method setMotionGesture : 'any1. 'any1 -> unit = fun (motionGesture_arg) ->
        let motionGesture_arg = Obj.repr motionGesture_arg in
        begin
        motionGesture <- (Obj.magic motionGesture_arg)
        end [@@warning "-7-20"]
    

    method getPreviousPoint () : GPoint.gPoint =
        begin
        (previousPoint :> GPoint.gPoint)
        end [@@warning "-7"]
    

    method setPreviousPoint : 'any1. 'any1 -> unit = fun (previousPoint_arg) ->
        let previousPoint_arg = Obj.repr previousPoint_arg in
        begin
        previousPoint <- (Obj.magic previousPoint_arg)
        end [@@warning "-7-20"]
    

    method getCurrentPoint () : GPoint.gPoint =
        begin
        (currentPoint :> GPoint.gPoint)
        end [@@warning "-7"]
    

    method setCurrentPoint : 'any1. 'any1 -> unit = fun (currentPoint_arg) ->
        let currentPoint_arg = Obj.repr currentPoint_arg in
        begin
        currentPoint <- (Obj.magic currentPoint_arg)
        end [@@warning "-7-20"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        ignore (!stringBuffer#append ((!stringUtil#toString (motionGesture))));
        ignore (!stringBuffer#append (commonLabels#cURRENT));
        ignore (!stringBuffer#append ((!stringUtil#toString (currentPoint))));
        ignore (!stringBuffer#append (pREVIOUS));
        ignore (!stringBuffer#append ((!stringUtil#toString (previousPoint))));
        ignore (!stringBuffer#append (hASHCODE));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ())))#hashCode (self)))))));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]
    

    method getId () : int =
        begin
        id
        end [@@warning "-7"]

    initializer
      begin
        motionGesture <- ((Obj.magic (java_call_static "TouchMotionGestureFactory.getInstance" (Obj.repr ())))#nO_MOTION :> MotionGestureInput.motionGestureInput);
        ();
        previousPoint <- ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#zERO_ZERO :> GPoint.gPoint);
        currentPoint <- ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#zERO_ZERO :> GPoint.gPoint);
        commonLabels <- ((CommonLabels.getInstance ()) :> CommonLabels.commonLabels);
        ();
        (* super(...) is the inherit clause *) ();
        id <- id_arg;
        (self#setMotionGesture (motionGesture_arg))
      end
  end
let () = java_register_constructor "MotionGestureEvent" (fun arguments -> Obj.repr (new motionGestureEvent (Obj.obj arguments)))


