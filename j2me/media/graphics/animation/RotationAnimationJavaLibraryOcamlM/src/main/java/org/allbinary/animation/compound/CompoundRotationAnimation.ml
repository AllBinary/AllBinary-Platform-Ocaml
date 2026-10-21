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
(* import org.allbinary.animation.IndexedAnimation *)
(* import org.allbinary.animation.RotationAnimation *)
(* import org.allbinary.direction.Direction *)
(* import org.allbinary.logic.math.PrimitiveIntUtil *)
(* import org.allbinary.math.Angle *)
(* import org.allbinary.math.AngleFactory *)
(* import org.allbinary.math.AngleInfo *)
(* import org.allbinary.util.CircularIndexUtil *)

class compoundRotationAnimation ((animationInterfaceArray_arg : RotationAnimation.rotationAnimation array), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit RotationAnimation.rotationAnimation ((AngleInfo.getInstance ((AngleFactory.getInstance ())#qUARTER_TOTAL_ANGLE)), (CircularIndexUtil.createInstance (4)), animationBehavior)
    val mutable animationInterfaceArray : RotationAnimation.rotationAnimation array = (Obj.magic 0)
    method animationInterfaceArray = animationInterfaceArray
    method set_animationInterfaceArray value' = animationInterfaceArray <- value'
    
    

    method setFrame ((index : int)) : unit =
        begin
        ignore (animationInterfaceArray.((circularIndexUtil#getIndex ()))#setFrame (index))
        end [@@warning "-7"]
    

    method getFrame () : int =
        begin
        (animationInterfaceArray.((circularIndexUtil#getIndex ()))#getFrame ())
        end [@@warning "-7"]
    

    method getAnimationSize () : int =
        begin
        (animationInterfaceArray.((circularIndexUtil#getIndex ()))#getAnimationSize ())
        end [@@warning "-7"]
    

    method getSize () : int =
        begin
        (animationInterfaceArray.((circularIndexUtil#getIndex ()))#getSize ())
        end [@@warning "-7"]
    

    method previousFrame () : unit =
        begin
        ignore (animationInterfaceArray.((circularIndexUtil#getIndex ()))#previousFrame ())
        end [@@warning "-7"]
    

    method nextFrame () : unit =
        begin
        ignore (animationInterfaceArray.((circularIndexUtil#getIndex ()))#nextFrame ())
        end [@@warning "-7"]
    

    method previousRotation () : unit =
        begin
        ignore (animationInterfaceArray.((circularIndexUtil#getIndex ()))#previousRotation ())
        end [@@warning "-7"]
    

    method nextRotation () : unit =
        begin
        ignore (animationInterfaceArray.((circularIndexUtil#getIndex ()))#nextRotation ())
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
        ignore (animationInterfaceArray.((circularIndexUtil#getIndex ()))#paintXY ((Obj.magic graphics), x, y))
        end [@@warning "-7-20"]
    

    method paintThreedXYZ : 'any1. 'any1 * int * int * int -> unit = fun (graphics, (x : int), (y : int), (z : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (animationInterfaceArray.((circularIndexUtil#getIndex ()))#paintThreedXYZ ((Obj.magic graphics), x, y, z))
        end [@@warning "-7-20"]
    

    method getCurrentAnimation () : IndexedAnimation.indexedAnimation =
        begin
        (animationInterfaceArray.((circularIndexUtil#getIndex ())) :> IndexedAnimation.indexedAnimation)
        end [@@warning "-7"]
    

    method nextAnimation () : unit =
        begin
        let frame : int ref = ref ((self#getFrame ())) in ();
        ignore (circularIndexUtil#next ());
        (self#setFrame (!frame))
        end [@@warning "-7"]
    

    method previousAnimation () : unit =
        begin
        let frame : int ref = ref ((self#getFrame ())) in ();
        ignore (circularIndexUtil#previous ());
        (self#setFrame (!frame))
        end [@@warning "-7"]
    

    method setAnimation ((index : int)) : unit =
        begin
        let frame : int ref = ref ((self#getFrame ())) in ();
        ignore (circularIndexUtil#setIndex (index));
        (self#setFrame (!frame))
        end [@@warning "-7"]
    

    method setFrameByDirection : 'any1. 'any1 -> unit = fun (direction) ->
        let direction = Obj.repr direction in
        begin
        ignore (animationInterfaceArray.((circularIndexUtil#getIndex ()))#setFrameByDirection ((Obj.magic direction)))
        end [@@warning "-7-20"]
    

    method setFrameToAngle : 'any1. 'any1 -> unit = fun (angle) ->
        let angle = Obj.repr angle in
        begin
        ignore (animationInterfaceArray.((circularIndexUtil#getIndex ()))#setFrameToAngle ((Obj.magic angle)))
        end [@@warning "-7-20"]
    

    method adjustFrameToAngle : 'any1. 'any1 -> unit = fun (newAngle) ->
        let newAngle = Obj.repr newAngle in
        begin
        (self#adjustFrame (((Obj.magic newAngle)#getValue ())))
        end [@@warning "-7-20"]
    

    method adjustFrame ((angle : int)) : unit =
        begin
        ignore (animationInterfaceArray.((circularIndexUtil#getIndex ()))#adjustFrame (angle))
        end [@@warning "-7"]
    

    method getAngleInfoP () : AngleInfo.angleInfo =
        begin
        ((animationInterfaceArray.((circularIndexUtil#getIndex ()))#getAngleInfoP ()) :> AngleInfo.angleInfo)
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
        animationInterfaceArray <- animationInterfaceArray_arg;
        circularIndexUtil <- (CircularIndexUtil.createInstance ((Array.length animationInterfaceArray)))
      end
  end
let () = java_register_constructor "CompoundRotationAnimation" (fun arguments -> Obj.repr (new compoundRotationAnimation (Obj.obj arguments)))


