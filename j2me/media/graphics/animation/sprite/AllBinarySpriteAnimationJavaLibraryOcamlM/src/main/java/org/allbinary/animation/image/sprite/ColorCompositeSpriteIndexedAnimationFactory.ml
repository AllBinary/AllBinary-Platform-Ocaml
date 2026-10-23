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
(* package org.allbinary.animation.image.sprite *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Image *)
(* import javax.microedition.lcdui.game.Sprite *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.AnimationBehaviorFactory *)
(* import org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface *)
(* import org.allbinary.animation.image.BaseImageAnimationFactory *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil *)
(* import org.allbinary.logic.math.PrimitiveIntUtil *)

class colorCompositeSpriteIndexedAnimationFactory (image, (basicColorArray_arg : BasicColor.basicColor array), (width : int), (height : int), (animationBehaviorFactory : AnimationBehaviorFactory.animationBehaviorFactory)) =
  object (self)
    inherit BaseImageAnimationFactory.baseImageAnimationFactory (image, (PrimitiveIntUtil.getArrayInstance ()), width, height, 0, 0, animationBehaviorFactory)
    val mutable animationFactorySpriteScaleUtil : AnimationFactorySpriteScaleUtil.animationFactorySpriteScaleUtil = (Obj.magic 0)
    method animationFactorySpriteScaleUtil = animationFactorySpriteScaleUtil
    method set_animationFactorySpriteScaleUtil value' = animationFactorySpriteScaleUtil <- value'
    val mutable basicColorArray : BasicColor.basicColor array = (Obj.magic 0)
    method basicColorArray = basicColorArray
    method set_basicColorArray value' = basicColorArray <- value'
    
    

    method getInstance : 'return. int -> 'return = fun ((_instanceId : int)) ->
        begin
        let sprite : Obj.t ref = ref ((Obj.repr (animationFactorySpriteScaleUtil#createImage ((self#getImage ()), (self#animationFactoryInitializationVisitor)#width, (self#animationFactoryInitializationVisitor)#height, (self#scaleProperties)#scaleWidth, (self#scaleProperties)#scaleHeight)))) in ();
        (Obj.magic ((new SpriteIndexedAnimation.spriteIndexedAnimation ((Obj.magic !sprite), (self#getImage ()), basicColorArray, ((self#animationBehaviorFactory)#getOrCreateInstance ())))))
        end [@@warning "-7"]
    

    method getInstanceAnimation : 'any1 'return. 'any1 -> 'return = fun (_animationInterface) ->
        begin
        (Obj.magic ((self#getInstance (0))))
        end [@@warning "-7-20"]

    initializer
      begin
        animationFactorySpriteScaleUtil <- ((AnimationFactorySpriteScaleUtil.getInstance ()) :> AnimationFactorySpriteScaleUtil.animationFactorySpriteScaleUtil);
        ();
        ();
        (* super(...) is the inherit clause *) ();
        basicColorArray <- basicColorArray_arg
      end
  end
let () = java_register_constructor "ColorCompositeSpriteIndexedAnimationFactory" (fun arguments -> Obj.repr (new colorCompositeSpriteIndexedAnimationFactory (Obj.obj arguments)))


