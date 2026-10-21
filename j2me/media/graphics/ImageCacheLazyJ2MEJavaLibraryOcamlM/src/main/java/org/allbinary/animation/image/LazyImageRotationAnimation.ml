(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.animation.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.khronos.opengles.GL *)
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.animation.IndexedAnimation *)
(* import org.allbinary.animation.NullRotationAnimationFactory *)
(* import org.allbinary.animation.RotationAnimation *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.image.ImageCache *)
(* import org.allbinary.image.ImageCacheFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.math.AngleFactory *)
(* import org.allbinary.math.AngleInfo *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.media.ScaleProperties *)
(* import org.allbinary.util.CircularIndexUtil *)

let sET_REAL_ANIMATION : string = "setRealAnimation"
let get_sET_REAL_ANIMATION () = sET_REAL_ANIMATION
let () = java_register_static "LazyImageRotationAnimation.get_sET_REAL_ANIMATION" (fun _ -> Obj.repr (get_sET_REAL_ANIMATION ()))
class lazyImageRotationAnimation ((layoutIndex_arg : int), (instanceId_arg : int), (scaleProperties_arg : ScaleProperties.scaleProperties), (animationInterfaceFactoryInterface_arg : BaseImageAnimationFactory.baseImageAnimationFactory), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit RotationAnimation.rotationAnimation ((AngleInfo.getInstance ((AngleFactory.getInstance ())#qUARTER_TOTAL_ANGLE)), (CircularIndexUtil.createInstance (4)), animationBehavior)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable layoutIndex : int = 0
    method layoutIndex = layoutIndex
    method set_layoutIndex value' = layoutIndex <- value'
    val mutable instanceId : int = 0
    method instanceId = instanceId
    method set_instanceId value' = instanceId <- value'
    val mutable animationInterfaceFactoryInterface : BaseImageAnimationFactory.baseImageAnimationFactory = (Obj.magic 0)
    method animationInterfaceFactoryInterface = animationInterfaceFactoryInterface
    method set_animationInterfaceFactoryInterface value' = animationInterfaceFactoryInterface <- value'
    val mutable nULL_INDEX_ANIMATION : IndexedAnimation.indexedAnimation = (Obj.magic 0)
    method nULL_INDEX_ANIMATION = nULL_INDEX_ANIMATION
    method set_nULL_INDEX_ANIMATION value' = nULL_INDEX_ANIMATION <- value'
    val mutable animation : IndexedAnimation.indexedAnimation = (Obj.magic 0)
    method animation = animation
    method set_animation value' = animation <- value'
    val mutable scaleProperties : ScaleProperties.scaleProperties = (Obj.magic 0)
    method scaleProperties = scaleProperties
    method set_scaleProperties value' = scaleProperties <- value'
    
    

    method setRealAnimation () : unit =
        begin
        (try
            let animation_arg : IndexedAnimation.indexedAnimation ref = ref ((animation :> IndexedAnimation.indexedAnimation)) in ();
            ignore (animationInterfaceFactoryInterface#setInitialScale (scaleProperties));
            animation <- (Obj.magic (animationInterfaceFactoryInterface#getInstance (instanceId)));
            ignore (animation#setState (!animation_arg))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, sET_REAL_ANIMATION, e))
        end)
        end [@@warning "-7"]
    

    method setScale ((scaleX : float), (scaleY : float)) : unit =
        begin
        ignore (animation#setScale (scaleX, scaleY))
        end [@@warning "-7"]
    

    method getAnimationBehavior () : AnimationBehavior.animationBehavior =
        begin
        ((animation#getAnimationBehavior ()) :> AnimationBehavior.animationBehavior)
        end [@@warning "-7"]
    

    method set : 'any1. 'any1 -> unit = fun (gl) ->
        let gl = Obj.repr gl in
        begin
        ignore (animation#set ((Obj.magic gl)))
        end [@@warning "-7-20"]
    

    method setAlpha ((alpha : int)) : unit =
        begin
        ignore (animation#setAlpha (alpha))
        end [@@warning "-7"]
    

    method setDx ((dx : int)) : unit =
        begin
        ignore (animation#setDx (dx))
        end [@@warning "-7"]
    

    method setDy ((dy : int)) : unit =
        begin
        ignore (animation#setDy (dy))
        end [@@warning "-7"]
    

    method setMaxScale ((maxScaleX : float), (maxScaleY : float)) : unit =
        begin
        ignore (animation#setMaxScale (maxScaleX, maxScaleY))
        end [@@warning "-7"]
    

    method nextRotation () : unit =
        begin
        let rotationAnimation : RotationAnimation.rotationAnimation ref = ref ((((Obj.magic animation)) :> RotationAnimation.rotationAnimation)) in ();
        ignore (!rotationAnimation#nextRotation ())
        end [@@warning "-7"]
    

    method previousRotation () : unit =
        begin
        let rotationAnimation : RotationAnimation.rotationAnimation ref = ref ((((Obj.magic animation)) :> RotationAnimation.rotationAnimation)) in ();
        ignore (!rotationAnimation#previousRotation ())
        end [@@warning "-7"]
    

    method nextRotationX () : unit =
        begin
        let rotationAnimation : RotationAnimation.rotationAnimation ref = ref ((((Obj.magic animation)) :> RotationAnimation.rotationAnimation)) in ();
        ignore (!rotationAnimation#nextRotationX ())
        end [@@warning "-7"]
    

    method previousRotationX () : unit =
        begin
        let rotationAnimation : RotationAnimation.rotationAnimation ref = ref ((((Obj.magic animation)) :> RotationAnimation.rotationAnimation)) in ();
        ignore (!rotationAnimation#previousRotationX ())
        end [@@warning "-7"]
    

    method nextRotationZ () : unit =
        begin
        let rotationAnimation : RotationAnimation.rotationAnimation ref = ref ((((Obj.magic animation)) :> RotationAnimation.rotationAnimation)) in ();
        ignore (!rotationAnimation#nextRotationZ ())
        end [@@warning "-7"]
    

    method previousRotationZ () : unit =
        begin
        let rotationAnimation : RotationAnimation.rotationAnimation ref = ref ((((Obj.magic animation)) :> RotationAnimation.rotationAnimation)) in ();
        ignore (!rotationAnimation#previousRotationZ ())
        end [@@warning "-7"]
    

    method changeBasicColor : 'any1. 'any1 -> unit = fun (basicColor) ->
        let basicColor = Obj.repr basicColor in
        begin
        ignore (animation#changeBasicColor ((Obj.magic basicColor)))
        end [@@warning "-7-20"]
    

    method getBasicColorP () : BasicColor.basicColor =
        begin
        ((animation#getBasicColorP ()) :> BasicColor.basicColor)
        end [@@warning "-7"]
    

    method getChangeBasicColor () : BasicColor.basicColor =
        begin
        ((animation#getChangeBasicColor ()) :> BasicColor.basicColor)
        end [@@warning "-7"]
    

    method getChangeColor () : int =
        begin
        (animation#getChangeColor ())
        end [@@warning "-7"]
    

    method getColor () : int =
        begin
        (animation#getColor ())
        end [@@warning "-7"]
    

    method getDx () : int =
        begin
        (animation#getDx ())
        end [@@warning "-7"]
    

    method getDy () : int =
        begin
        (animation#getDy ())
        end [@@warning "-7"]
    

    method isThreed () : bool =
        begin
        (animation#isThreed ())
        end [@@warning "-7"]
    

    method nextFrame () : unit =
        begin
        ignore (animation#nextFrame ())
        end [@@warning "-7"]
    

    method reset () : unit =
        begin
        ignore (animation#reset ())
        end [@@warning "-7"]
    

    method setFrame ((index_arg : int)) : unit =
        begin
        ignore (animation#setFrame (index_arg))
        end [@@warning "-7"]
    

    method getFrame () : int =
        begin
        (animation#getFrame ())
        end [@@warning "-7"]
    

    method getAnimationSize () : int =
        begin
        (animation#getAnimationSize ())
        end [@@warning "-7"]
    

    method getSize () : int =
        begin
        (animation#getSize ())
        end [@@warning "-7"]
    

    method previousFrame () : unit =
        begin
        ignore (animation#previousFrame ())
        end [@@warning "-7"]
    

    method isLastFrame () : bool =
        begin
        (animation#isLastFrame ())
        end [@@warning "-7"]
    

    method setSequence ((sequence : int array)) : unit =
        begin
        ignore (animation#setSequence (sequence))
        end [@@warning "-7"]
    

    method getSequence () : int array =
        begin
        (animation#getSequence ())
        end [@@warning "-7"]
    

    method getWidth () : int =
        begin
        (animation#getWidth ())
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        (try
            ignore (animation#paintXY ((Obj.magic graphics), x, y))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#pROCESS, e))
        end)
        end [@@warning "-7-20"]
    

    method paintThreedXYZ : 'any1. 'any1 * int * int * int -> unit = fun (graphics, (x : int), (y : int), (z : int)) ->
        let graphics = Obj.repr graphics in
        begin
        (try
            ignore (animation#paintThreedXYZ ((Obj.magic graphics), x, y, z))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#pROCESS, e))
        end)
        end [@@warning "-7-20"]
    

    method toString () : string =
        begin
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        let image : Obj.t ref = ref ((Obj.repr (animationInterfaceFactoryInterface#getImage ()))) in ();
        (java_string_of (Obj.repr ((((((((new StringMaker.stringMaker ())#append ((java_string_of (Obj.repr super))))#append (!commonSeps#sPACE))#append (((Obj.magic !image)#getName ())))#append (!commonSeps#sPACE))#appendint ((java_to_int (Obj.repr (((Obj.magic !image)#getWidth ()))))))#append (!commonSeps#sPACE))#appendint ((java_to_int (Obj.repr (((Obj.magic !image)#getHeight ()))))))))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        ();
        ();
        scaleProperties <- ((ScaleProperties.get_instance ()) :> ScaleProperties.scaleProperties);
        ();
        (* super(...) is the inherit clause *) ();
        layoutIndex <- layoutIndex_arg;
        instanceId <- instanceId_arg;
        animationInterfaceFactoryInterface <- animationInterfaceFactoryInterface_arg;
        let imageCache : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "ImageCacheFactory.getInstance" (Obj.repr ()))))) in ();
        ignore ((Obj.magic !imageCache)#add (self));
        scaleProperties <- scaleProperties_arg;
        nULL_INDEX_ANIMATION <- (Obj.magic ((NullRotationAnimationFactory.getFactoryInstance ())#getInstance (0)));
        (* Java nested class ActualRotationAnimation: move it to its own module *) ();
        animation <- (new ActualRotationAnimation.actualRotationAnimation (self))
      end
  end [@@warning "-20"]
let () = java_register_constructor "LazyImageRotationAnimation" (fun arguments -> Obj.repr (new lazyImageRotationAnimation (Obj.obj arguments)))


