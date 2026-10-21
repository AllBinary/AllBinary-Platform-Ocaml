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
(* import org.allbinary.AndroidUtil *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.AnimationBehaviorFactory *)
(* import org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface *)
(* import org.allbinary.animation.image.BaseImageAnimationFactory *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorUtil *)
(* import org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil *)
(* import org.allbinary.logic.math.PrimitiveIntUtil *)

class spriteIndexedAnimationFactory (image, (basicColorArray_arg : BasicColor.basicColor array), (sequenceArray : int array), (width : int), (height : int), (dx : int), (dy : int), (animationBehaviorFactory : AnimationBehaviorFactory.animationBehaviorFactory)) =
  object (self)
    inherit BaseImageAnimationFactory.baseImageAnimationFactory (image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
    val mutable animationFactorySpriteScaleUtil : AnimationFactorySpriteScaleUtil.animationFactorySpriteScaleUtil = (Obj.magic 0)
    method animationFactorySpriteScaleUtil = animationFactorySpriteScaleUtil
    method set_animationFactorySpriteScaleUtil value' = animationFactorySpriteScaleUtil <- value'
    val mutable basicColorArray : BasicColor.basicColor array = (Obj.magic 0)
    method basicColorArray = basicColorArray
    method set_basicColorArray value' = basicColorArray <- value'
    
    

    method initHWH () : unit =
        begin
        animationFactoryInitializationVisitor#set_dx ((-((animationFactoryInitializationVisitor#width asr 2))));
        animationFactoryInitializationVisitor#set_dy ((-((animationFactoryInitializationVisitor#height asr 2))));
        if (Obj.magic (java_call_static "AndroidUtil.isAndroid" (Obj.repr ()))) then begin
            animationFactoryInitializationVisitor#set_dx ((animationFactoryInitializationVisitor#dx + 3))
        end
        end [@@warning "-7"]
    

    method getInstance : 'return. int -> 'return = fun ((_instanceId : int)) ->
        try
        begin
        let sprite : Obj.t ref = ref ((Obj.repr (animationFactorySpriteScaleUtil#createImage ((self#getImage ()), animationFactoryInitializationVisitor#width, animationFactoryInitializationVisitor#height, scaleProperties#scaleWidth, scaleProperties#scaleHeight)))) in ();
        if ((animationFactoryInitializationVisitor#dx != 0) || (animationFactoryInitializationVisitor#dy != 0)) then begin
            raise (Java_return (Obj.repr ((new AdjustedSpriteIndexedAnimation.adjustedSpriteIndexedAnimation ((Obj.magic !sprite), (self#getImage ()), basicColorArray, animationFactoryInitializationVisitor#dx, animationFactoryInitializationVisitor#dy, (animationBehaviorFactory#getOrCreateInstance ()))))))
        end else begin
            raise (Java_return (Obj.repr ((new SpriteIndexedAnimation.spriteIndexedAnimation ((Obj.magic !sprite), (self#getImage ()), basicColorArray, (animationBehaviorFactory#getOrCreateInstance ()))))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method getInstanceAnimation : 'any1 'return. 'any1 -> 'return = fun (_animationInterface) ->
        begin
        (Obj.magic ((self#getInstance (0))))
        end [@@warning "-7-20"]

    initializer
      begin
        animationFactorySpriteScaleUtil <- ((AnimationFactorySpriteScaleUtil.getInstance ()) :> AnimationFactorySpriteScaleUtil.animationFactorySpriteScaleUtil);
        basicColorArray <- (BasicColorUtil.getInstance ())#zERO_ARRAY;
        ();
        (* super(...) is the inherit clause *) ();
        basicColorArray <- basicColorArray_arg
      end
  end
let () = java_register_constructor "SpriteIndexedAnimationFactory" (fun arguments -> Obj.repr (new spriteIndexedAnimationFactory (Obj.obj arguments)))

let createCWHDXY : 'any1 'any7. 'any1 * BasicColor.basicColor array * int * int * int * int * 'any7 -> _ = fun (image, (basicColorArray_arg : BasicColor.basicColor array), (width : int), (height : int), (dx : int), (dy : int), animationBehaviorFactory) ->
        let image = Obj.repr image in
        let animationBehaviorFactory = Obj.repr animationBehaviorFactory in
        begin
        (new spriteIndexedAnimationFactory ((Obj.magic image), basicColorArray_arg, (PrimitiveIntUtil.getArrayInstance ()), width, height, dx, dy, (Obj.magic animationBehaviorFactory)))
        end [@@warning "-20"]

and createCWH : 'any1 'any5. 'any1 * BasicColor.basicColor array * int * int * 'any5 -> _ = fun (image, (basicColorArray_arg : BasicColor.basicColor array), (width : int), (height : int), animationBehaviorFactory) ->
        let image = Obj.repr image in
        let animationBehaviorFactory = Obj.repr animationBehaviorFactory in
        begin
        let spriteIndexedAnimationFactory : Obj.t ref = ref ((Obj.repr (new spriteIndexedAnimationFactory ((Obj.magic image), basicColorArray_arg, (PrimitiveIntUtil.getArrayInstance ()), width, height, 0, 0, (Obj.magic animationBehaviorFactory))))) in ();
        ignore ((Obj.magic !spriteIndexedAnimationFactory)#initHWH ());
        (Obj.magic !spriteIndexedAnimationFactory)
        end [@@warning "-20"]

and createWH : 'any1 'any4. 'any1 * int * int * 'any4 -> _ = fun (image, (width : int), (height : int), animationBehaviorFactory) ->
        let image = Obj.repr image in
        let animationBehaviorFactory = Obj.repr animationBehaviorFactory in
        begin
        (new spriteIndexedAnimationFactory ((Obj.magic image), (BasicColorUtil.getInstance ())#zERO_ARRAY, (PrimitiveIntUtil.getArrayInstance ()), width, height, 0, 0, (Obj.magic animationBehaviorFactory)))
        end [@@warning "-20"]
let () = java_register_static "SpriteIndexedAnimationFactory.createCWHDXY" (fun arguments -> Obj.repr (createCWHDXY (Obj.obj arguments)))
let () = java_register_static "SpriteIndexedAnimationFactory.createCWH" (fun arguments -> Obj.repr (createCWH (Obj.obj arguments)))
let () = java_register_static "SpriteIndexedAnimationFactory.createWH" (fun arguments -> Obj.repr (createWH (Obj.obj arguments)))


