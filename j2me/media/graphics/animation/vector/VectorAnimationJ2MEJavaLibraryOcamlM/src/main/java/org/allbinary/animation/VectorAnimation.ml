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
(* import javax.microedition.lcdui.NullImage *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.math.PrimitiveIntUtil *)
(* import org.allbinary.util.CircularIndexUtil *)

class vectorAnimation ((currentPoints_arg : int array array array), (basicColor : BasicColor.basicColor), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit IndexedAnimation.indexedAnimation (animationBehavior) as super
    val mutable currentPoints : int array array array = (Obj.magic 0)
    method currentPoints = currentPoints
    method set_currentPoints value' = currentPoints <- value'
    val mutable circularIndexUtil : CircularIndexUtil.circularIndexUtil = (Obj.magic 0)
    method circularIndexUtil = circularIndexUtil
    method set_circularIndexUtil value' = circularIndexUtil <- value'
    
    

    method setBasicColorP : 'any1. 'any1 -> unit = fun (basicColor) ->
        let basicColor = Obj.repr basicColor in
        begin
        let changed : bool ref = ref (false) in ();
        if (((self#getBasicColorP ()) == (Obj.magic 0)) || ((Obj.repr ((self#getBasicColorP ())#intValue ())) != (Obj.repr ((Obj.magic basicColor)#intValue ())))) then begin
            changed := true
        end;
        ignore (super#setBasicColorP ((Obj.magic basicColor)));
        if !changed then begin
            (self#updateModifiers ())
        end
        end [@@warning "-7-20"]
    

    method changeBasicColor : 'any1. 'any1 -> unit = fun (basicColor) ->
        let basicColor = Obj.repr basicColor in
        begin
        let changed : bool ref = ref (false) in ();
        if (((self#getChangeBasicColor ()) == (Obj.magic 0)) || ((Obj.repr ((self#getChangeBasicColor ())#intValue ())) != (Obj.repr ((Obj.magic basicColor)#intValue ())))) then begin
            changed := true
        end;
        ignore (super#changeBasicColor ((Obj.magic basicColor)));
        if !changed then begin
            (self#updateModifiers ())
        end
        end [@@warning "-7-20"]
    

    method setAlpha ((alpha : int)) : unit =
        begin
        let changed : bool ref = ref (false) in ();
        if ((self#alphaP) != alpha) then begin
            changed := true
        end;
        ignore (super#setAlpha (alpha));
        if !changed then begin
            (self#updateModifiers ())
        end
        end [@@warning "-7"]
    

    method setScale ((_scaleX : float), (_scaleY : float)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method setMaxScale ((_maxScaleX : float), (_maxScaleY : float)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method updateModifiers () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getAnimationSize () : int =
        begin
        (self#getSize ())
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
    

    method nextFrame () : unit =
        begin
        ignore (circularIndexUtil#next ())
        end [@@warning "-7"]
    

    method previousFrame () : unit =
        begin
        ignore (circularIndexUtil#previous ())
        end [@@warning "-7"]
    

    method paintVectors : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
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
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, "paintVectors", e))
        end)
        end [@@warning "-7-20"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((self#basicSetColorUtil)#setBasicColorP ((Obj.magic graphics), (self#basicColor)));
        (self#paintVectors ((Obj.magic graphics), x, y))
        end [@@warning "-7-20"]
    

    method getFrame () : int =
        begin
        (circularIndexUtil#getIndex ())
        end [@@warning "-7"]
    

    method setFrame ((index : int)) : unit =
        begin
        ignore (circularIndexUtil#setIndex (index))
        end [@@warning "-7"]
    

    method getPoints ((frame : int)) : int array array =
        begin
        currentPoints.(frame)
        end [@@warning "-7"]
    

    method setPoints ((currentPoints_arg : int array array array)) : unit =
        begin
        currentPoints <- currentPoints_arg;
        circularIndexUtil <- (CircularIndexUtil.createInstance ((Array.length currentPoints_arg)))
        end [@@warning "-7"]

    initializer
      begin
        currentPoints <- (NullUtil.getInstance ())#nULL_INT_ARRAY_ARRAY_ARRAY;
        circularIndexUtil <- ((CircularIndexUtil.createInstance (0)) :> CircularIndexUtil.circularIndexUtil);
        ();
        (* super(...) is the inherit clause *) ();
        (self#setPoints (currentPoints_arg));
        (self#setBasicColorP (basicColor))
      end
  end
let () = java_register_constructor "VectorAnimation" (fun arguments -> Obj.repr (new vectorAnimation (Obj.obj arguments)))

let createVectorAnimation : 'any2 'any3. int array array * 'any2 * 'any3 -> _ = fun ((currentPoints2 : int array array), basicColor, animationBehavior) ->
        let basicColor = Obj.repr basicColor in
        let animationBehavior = Obj.repr animationBehavior in
        begin
        let currentPoints_arg : int array array array ref = ref ((Array.init (1) (fun _ -> Array.make_matrix ((Array.length currentPoints2)) (2) 0))) in ();
        let size : int ref = ref ((Array.length currentPoints2)) in ();
        for index = 0 to !size - 1 do
            !currentPoints_arg.(0).(index).(0) <- currentPoints2.(index).(0);
            !currentPoints_arg.(0).(index).(1) <- currentPoints2.(index).(1)
        done;
        (new vectorAnimation (!currentPoints_arg, (Obj.magic basicColor), (Obj.magic animationBehavior)))
        end [@@warning "-20"]
let () = java_register_static "VectorAnimation.createVectorAnimation" (fun arguments -> Obj.repr (createVectorAnimation (Obj.obj arguments)))


