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
(* package org.allbinary.animation *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.math.PrimitiveIntUtil *)
(* import org.allbinary.math.AngleInfo *)
(* import org.allbinary.util.CircularIndexUtil *)

class vectorBaseRotationAnimation ((angleInfo : AngleInfo.angleInfo), (currentPoints_arg : int array array array), (basicColor : BasicColor.basicColor), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit RotationAnimation.rotationAnimation (angleInfo, (CircularIndexUtil.createInstance ((360 / ((angleInfo#getAngleIncrementInfo ())#getAngleIncrement ())))), animationBehavior)
    val mutable currentPoints : int array array array = (Obj.magic 0)
    method currentPoints = currentPoints
    method set_currentPoints value' = currentPoints <- value'
    
    

    method getAnimationSize () : int =
        begin
        (self#getSize ())
        end [@@warning "-7"]
    

    method getFrame () : int =
        begin
        (circularIndexUtil#getIndex ())
        end [@@warning "-7"]
    

    method setFrame ((index : int)) : unit =
        begin
        ignore (circularIndexUtil#setIndex (index))
        end [@@warning "-7"]
    

    method nextFrame () : unit =
        begin
        ignore (circularIndexUtil#next ())
        end [@@warning "-7"]
    

    method previousFrame () : unit =
        begin
        ignore (circularIndexUtil#previous ())
        end [@@warning "-7"]
    

    method getSize () : int =
        begin
        (Array.length currentPoints)
        end [@@warning "-7"]
    

    method setSequence ((_sequence : int array)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getSequence () : int array =
        begin
        (PrimitiveIntUtil.getArrayInstance ())
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (basicSetColorUtil#setBasicColorP ((Obj.magic graphics), basicColor));
        (try
            let nextPointX : int ref = ref (0) in ();
            let nextPointY : int ref = ref (0) in ();
            let nextPoint : int array ref = ref ((Obj.magic 0)) in ();
            let point : int array ref = ref ((Obj.magic 0)) in ();
            let currentPointsFrame : int array array ref = ref (currentPoints.((circularIndexUtil#getIndex ()))) in ();
            let size : int ref = ref ((Array.length !currentPointsFrame)) in ();
            let index : int ref = ref ((!size - 2)) in ();
            while ((index := !index - 1; !index) >= 0) do
                nextPoint := !currentPointsFrame.(!index);
                point := !currentPointsFrame.((!index + 1));
                nextPointX := !nextPoint.(0);
                nextPointY := !nextPoint.(1);
                if (!nextPointX <> 1000) then begin
                    ignore ((Obj.magic graphics)#drawLine ((!point.(0) + x), (!point.(1) + y), (!nextPointX + x), (!nextPointY + y)))
                end else begin
                    index := !index - 1
                end
            done
        with e -> begin
            ignore (logUtil#put (commonStrings#eXCEPTION, self, "paintVectors", e))
        end)
        end [@@warning "-7-20"]
    

    method getPoints ((frame : int)) : int array array =
        begin
        currentPoints.(frame)
        end [@@warning "-7"]
    

    method setPoints ((currentPoints_arg : int array array array)) : unit =
        begin
        currentPoints <- currentPoints_arg;
        circularIndexUtil <- (CircularIndexUtil.createInstance ((Array.length currentPoints)))
        end [@@warning "-7"]

    initializer
      begin
        currentPoints <- (NullUtil.getInstance ())#nULL_INT_ARRAY_ARRAY_ARRAY;
        ();
        (* super(...) is the inherit clause *) ();
        (self#setPoints (currentPoints_arg));
        ignore (self#setBasicColorP (basicColor))
      end
  end
let () = java_register_constructor "VectorBaseRotationAnimation" (fun arguments -> Obj.repr (new vectorBaseRotationAnimation (Obj.obj arguments)))


