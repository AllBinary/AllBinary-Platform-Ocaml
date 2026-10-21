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
(* package org.allbinary.animation.compound *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.khronos.opengles.GL *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.animation.RotationAnimation *)
(* import org.allbinary.direction.Direction *)
(* import org.allbinary.logic.math.PrimitiveIntUtil *)
(* import org.allbinary.math.Angle *)
(* import org.allbinary.math.AngleFactory *)
(* import org.allbinary.math.AngleInfo *)
(* import org.allbinary.util.CircularIndexUtil *)

class simultaneousCompoundRotationAnimation ((animationInterfaceArray_arg : RotationAnimation.rotationAnimation array), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit RotationAnimation.rotationAnimation ((AngleInfo.getInstance ((AngleFactory.getInstance ())#qUARTER_TOTAL_ANGLE)), (CircularIndexUtil.createInstance (4)), animationBehavior)
    val mutable animationInterfaceArray : RotationAnimation.rotationAnimation array = (Obj.magic 0)
    method animationInterfaceArray = animationInterfaceArray
    method set_animationInterfaceArray value' = animationInterfaceArray <- value'
    
    

    method setFrame ((frameIndex : int)) : unit =
        begin
        let index : int ref = ref ((Array.length animationInterfaceArray)) in ();
        while ((index := !index - 1; !index) >= 0) do
            ignore (animationInterfaceArray.(!index)#setFrame (frameIndex))
        done
        end [@@warning "-7"]
    

    method getFrame () : int =
        begin
        (animationInterfaceArray.(0)#getFrame ())
        end [@@warning "-7"]
    

    method getAnimationSize () : int =
        begin
        (animationInterfaceArray.(0)#getAnimationSize ())
        end [@@warning "-7"]
    

    method getSize () : int =
        begin
        (animationInterfaceArray.(0)#getSize ())
        end [@@warning "-7"]
    

    method previousFrame () : unit =
        begin
        let index : int ref = ref ((Array.length animationInterfaceArray)) in ();
        while ((index := !index - 1; !index) >= 0) do
            ignore (animationInterfaceArray.(!index)#previousFrame ())
        done
        end [@@warning "-7"]
    

    method nextFrame () : unit =
        begin
        let index : int ref = ref ((Array.length animationInterfaceArray)) in ();
        while ((index := !index - 1; !index) >= 0) do
            ignore (animationInterfaceArray.(!index)#nextFrame ())
        done
        end [@@warning "-7"]
    

    method previousRotation () : unit =
        begin
        let index : int ref = ref ((Array.length animationInterfaceArray)) in ();
        while ((index := !index - 1; !index) >= 0) do
            ignore (animationInterfaceArray.(!index)#previousRotation ())
        done
        end [@@warning "-7"]
    

    method nextRotation () : unit =
        begin
        let index : int ref = ref ((Array.length animationInterfaceArray)) in ();
        while ((index := !index - 1; !index) >= 0) do
            ignore (animationInterfaceArray.(!index)#nextRotation ())
        done
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
        let index : int ref = ref ((Array.length animationInterfaceArray)) in ();
        while ((index := !index - 1; !index) >= 0) do
            ignore (animationInterfaceArray.(!index)#paintXY ((Obj.magic graphics), x, y))
        done
        end [@@warning "-7-20"]
    

    method paintThreedXYZ : 'any1. 'any1 * int * int * int -> unit = fun (graphics, (x : int), (y : int), (z : int)) ->
        let graphics = Obj.repr graphics in
        begin
        let index : int ref = ref ((Array.length animationInterfaceArray)) in ();
        while ((index := !index - 1; !index) >= 0) do
            ignore (animationInterfaceArray.(!index)#paintThreedXYZ ((Obj.magic graphics), x, y, z))
        done
        end [@@warning "-7-20"]
    

    method setFrameByDirection : 'any1. 'any1 -> unit = fun (direction) ->
        let direction = Obj.repr direction in
        begin
        let index : int ref = ref ((Array.length animationInterfaceArray)) in ();
        while ((index := !index - 1; !index) >= 0) do
            ignore (animationInterfaceArray.(!index)#setFrameByDirection ((Obj.magic direction)))
        done
        end [@@warning "-7-20"]
    

    method setFrameToAngle : 'any1. 'any1 -> unit = fun (angle) ->
        let angle = Obj.repr angle in
        begin
        let index : int ref = ref ((Array.length animationInterfaceArray)) in ();
        while ((index := !index - 1; !index) >= 0) do
            ignore (animationInterfaceArray.(!index)#setFrameToAngle ((Obj.magic angle)))
        done
        end [@@warning "-7-20"]
    

    method adjustFrameToAngle : 'any1. 'any1 -> unit = fun (newAngle) ->
        let newAngle = Obj.repr newAngle in
        begin
        (self#adjustFrame (((Obj.magic newAngle)#getValue ())))
        end [@@warning "-7-20"]
    

    method adjustFrame ((angle : int)) : unit =
        begin
        let index : int ref = ref ((Array.length animationInterfaceArray)) in ();
        while ((index := !index - 1; !index) >= 0) do
            ignore (animationInterfaceArray.(!index)#adjustFrame (angle))
        done
        end [@@warning "-7"]
    

    method getAngleInfoP () : AngleInfo.angleInfo =
        begin
        ((animationInterfaceArray.(0)#getAngleInfoP ()) :> AngleInfo.angleInfo)
        end [@@warning "-7"]
    

    method getAnimationInterfaceArray () : RotationAnimation.rotationAnimation array =
        begin
        animationInterfaceArray
        end [@@warning "-7"]
    

    method setAnimationInterfaceArray ((animationInterfaceArray_arg : RotationAnimation.rotationAnimation array)) : unit =
        begin
        animationInterfaceArray <- animationInterfaceArray_arg
        end [@@warning "-7"]
    

    method set : 'any1. 'any1 -> unit = fun (gl) ->
        let gl = Obj.repr gl in
        begin
        let index : int ref = ref ((Array.length animationInterfaceArray)) in ();
        while ((index := !index - 1; !index) >= 0) do
            ignore (animationInterfaceArray.(!index)#set ((Obj.magic gl)))
        done
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        animationInterfaceArray <- animationInterfaceArray_arg
      end
  end
let () = java_register_constructor "SimultaneousCompoundRotationAnimation" (fun arguments -> Obj.repr (new simultaneousCompoundRotationAnimation (Obj.obj arguments)))


