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
(* import org.allbinary.animation.image.BaseImageAnimationFactory *)
(* import org.allbinary.graphics.color.BasicColorUtil *)
(* import org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil *)
(* import org.allbinary.logic.math.PrimitiveIntUtil *)

class oneRowSpriteIndexedAnimationFactory (image, (sequenceArray : int array), (width : int), (height : int), (dx : int), (dy : int), (animationBehaviorFactory : AnimationBehaviorFactory.animationBehaviorFactory)) =
  object (self)
    inherit BaseImageAnimationFactory.baseImageAnimationFactory (image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
    val mutable animationFactorySpriteScaleUtil : AnimationFactorySpriteScaleUtil.animationFactorySpriteScaleUtil = (Obj.magic 0)
    method animationFactorySpriteScaleUtil = animationFactorySpriteScaleUtil
    method set_animationFactorySpriteScaleUtil value' = animationFactorySpriteScaleUtil <- value'
    
    

    method init ((dx : int), (dy : int)) : unit =
        begin
        (self#animationFactoryInitializationVisitor)#set_dx (dx);
        (self#animationFactoryInitializationVisitor)#set_dy (dy)
        end [@@warning "-7"]
    

    method initW ((dx : int)) : unit =
        begin
        (self#init (dx, 0));
        (self#animationFactoryInitializationVisitor)#set_dx (((self#animationFactoryInitializationVisitor)#dx + (-(((self#animationFactoryInitializationVisitor)#width asr 2)))))
        end [@@warning "-7"]
    

    method getInstance : 'return. int -> 'return = fun ((_instanceId : int)) ->
        try
        begin
        let sprite : Obj.t ref = ref ((Obj.repr (animationFactorySpriteScaleUtil#createImage ((self#getImage ()), (self#animationFactoryInitializationVisitor)#width, (self#animationFactoryInitializationVisitor)#height, (self#scaleProperties)#scaleWidth, (self#scaleProperties)#scaleHeight)))) in ();
        if (((self#animationFactoryInitializationVisitor)#dx != 0) || ((self#animationFactoryInitializationVisitor)#dy != 0)) then begin
            raise (Java_return (Obj.repr ((new AdjustedSpriteIndexedAnimation.adjustedSpriteIndexedAnimation ((Obj.magic !sprite), (self#getImage ()), (BasicColorUtil.getInstance ())#zERO_ARRAY, (self#animationFactoryInitializationVisitor)#dx, (self#animationFactoryInitializationVisitor)#dy, ((self#animationBehaviorFactory)#getOrCreateInstance ()))))))
        end else begin
            raise (Java_return (Obj.repr ((new SpriteIndexedAnimation.spriteIndexedAnimation ((Obj.magic !sprite), (self#getImage ()), (BasicColorUtil.getInstance ())#zERO_ARRAY, ((self#animationBehaviorFactory)#getOrCreateInstance ()))))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        animationFactorySpriteScaleUtil <- ((AnimationFactorySpriteScaleUtil.getInstance ()) :> AnimationFactorySpriteScaleUtil.animationFactorySpriteScaleUtil);
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "OneRowSpriteIndexedAnimationFactory" (fun arguments -> Obj.repr (new oneRowSpriteIndexedAnimationFactory (Obj.obj arguments)))

let createFactoryDX : 'any1 'any3. 'any1 * int * 'any3 -> _ = fun (image, (dx : int), animationBehaviorFactory) ->
        let image = Obj.repr image in
        let animationBehaviorFactory = Obj.repr animationBehaviorFactory in
        begin
        let oneRowSpriteIndexedAnimationFactory : Obj.t ref = ref ((Obj.repr (new oneRowSpriteIndexedAnimationFactory ((Obj.magic image), (PrimitiveIntUtil.getArrayInstance ()), ((Obj.magic image)#getHeight ()), ((Obj.magic image)#getHeight ()), 0, 0, (Obj.magic animationBehaviorFactory))))) in ();
        ignore ((Obj.magic !oneRowSpriteIndexedAnimationFactory)#initW (dx));
        (Obj.magic !oneRowSpriteIndexedAnimationFactory)
        end [@@warning "-20"]

and createFactoryDXY : 'any1 'any4. 'any1 * int * int * 'any4 -> _ = fun (image, (dx : int), (dy : int), animationBehaviorFactory) ->
        let image = Obj.repr image in
        let animationBehaviorFactory = Obj.repr animationBehaviorFactory in
        begin
        let oneRowSpriteIndexedAnimationFactory : Obj.t ref = ref ((Obj.repr (new oneRowSpriteIndexedAnimationFactory ((Obj.magic image), (PrimitiveIntUtil.getArrayInstance ()), ((Obj.magic image)#getHeight ()), ((Obj.magic image)#getHeight ()), 0, 0, (Obj.magic animationBehaviorFactory))))) in ();
        ignore ((Obj.magic !oneRowSpriteIndexedAnimationFactory)#init (dx, dy));
        (Obj.magic !oneRowSpriteIndexedAnimationFactory)
        end [@@warning "-20"]

and createFactoryWH : 'any1 'any4. 'any1 * int * int * 'any4 -> _ = fun (image, (width : int), (height : int), animationBehaviorFactory) ->
        let image = Obj.repr image in
        let animationBehaviorFactory = Obj.repr animationBehaviorFactory in
        begin
        (new oneRowSpriteIndexedAnimationFactory ((Obj.magic image), (PrimitiveIntUtil.getArrayInstance ()), width, height, 0, 0, (Obj.magic animationBehaviorFactory)))
        end [@@warning "-20"]

and createFactory : 'any1 'any2. 'any1 * 'any2 -> _ = fun (image, animationBehaviorFactory) ->
        let image = Obj.repr image in
        let animationBehaviorFactory = Obj.repr animationBehaviorFactory in
        begin
        (new oneRowSpriteIndexedAnimationFactory ((Obj.magic image), (PrimitiveIntUtil.getArrayInstance ()), ((Obj.magic image)#getHeight ()), ((Obj.magic image)#getHeight ()), 0, 0, (Obj.magic animationBehaviorFactory)))
        end [@@warning "-20"]
let () = java_register_static "OneRowSpriteIndexedAnimationFactory.createFactoryDX" (fun arguments -> Obj.repr (createFactoryDX (Obj.obj arguments)))
let () = java_register_static "OneRowSpriteIndexedAnimationFactory.createFactoryDXY" (fun arguments -> Obj.repr (createFactoryDXY (Obj.obj arguments)))
let () = java_register_static "OneRowSpriteIndexedAnimationFactory.createFactoryWH" (fun arguments -> Obj.repr (createFactoryWH (Obj.obj arguments)))
let () = java_register_static "OneRowSpriteIndexedAnimationFactory.createFactory" (fun arguments -> Obj.repr (createFactory (Obj.obj arguments)))


