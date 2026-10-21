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
(* import org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.math.PrimitiveIntUtil *)

class allBinarySpriteRotationAnimationFactory (image, (sequenceArray : int array), (width : int), (height : int), (dx : int), (dy : int), (animationBehaviorFactory : AnimationBehaviorFactory.animationBehaviorFactory)) =
  object (self)
    inherit BaseImageAnimationFactory.baseImageAnimationFactory (image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
    val mutable animationFactorySpriteScaleUtil : AnimationFactorySpriteScaleUtil.animationFactorySpriteScaleUtil = (Obj.magic 0)
    method animationFactorySpriteScaleUtil = animationFactorySpriteScaleUtil
    method set_animationFactorySpriteScaleUtil value' = animationFactorySpriteScaleUtil <- value'
    
    

    method init ((dx : int), (dy : int)) : unit =
        begin
        animationFactoryInitializationVisitor#set_dx (dx);
        animationFactoryInitializationVisitor#set_dy (dy)
        end [@@warning "-7"]
    

    method initWH ((dx : int), (dy : int)) : unit =
        begin
        (self#init (dx, dy));
        animationFactoryInitializationVisitor#set_dx ((animationFactoryInitializationVisitor#dx + ((-animationFactoryInitializationVisitor#width) / 5)));
        animationFactoryInitializationVisitor#set_dy ((animationFactoryInitializationVisitor#dy + ((-animationFactoryInitializationVisitor#height) / 5)))
        end [@@warning "-7"]
    

    method getInstance : 'return. int -> 'return = fun ((_instanceId : int)) ->
        try
        begin
        let sprite : Obj.t ref = ref ((Obj.repr (animationFactorySpriteScaleUtil#createImage ((self#getImage ()), animationFactoryInitializationVisitor#width, animationFactoryInitializationVisitor#height, scaleProperties#scaleWidth, scaleProperties#scaleHeight)))) in ();
        if ((animationFactoryInitializationVisitor#dx != 0) || (animationFactoryInitializationVisitor#dy != 0)) then begin
            raise (Java_return (Obj.repr ((new AllBinaryAdjustedSpriteRotationAnimation.allBinaryAdjustedSpriteRotationAnimation ((Obj.magic !sprite), (self#getImage ()), animationFactoryInitializationVisitor#dx, animationFactoryInitializationVisitor#dy, (animationBehaviorFactory#getOrCreateInstance ()))))))
        end else begin
            raise (Java_return (Obj.repr ((new AllBinarySpriteRotationAnimation.allBinarySpriteRotationAnimation ((Obj.magic !sprite), (self#getImage ()), (animationBehaviorFactory#getOrCreateInstance ()))))))
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
        ();
        (* super(...) is the inherit clause *) ();
        if ((Obj.repr animationBehaviorFactory) == (Obj.repr (AnimationBehaviorFactory.getInstance ()))) then begin
            ignore (ForcedLogUtil.log ("Using default AnimationBehaviorFactory with IndexedAnimationFactory", self))
        end
      end
  end
let () = java_register_constructor "AllBinarySpriteRotationAnimationFactory" (fun arguments -> Obj.repr (new allBinarySpriteRotationAnimationFactory (Obj.obj arguments)))

let rec createWHDY : 'any1 'any4. 'any1 * int * int * 'any4 -> _ = fun (image, (dx : int), (dy : int), animationBehaviorFactory) ->
        let image = Obj.repr image in
        let animationBehaviorFactory = Obj.repr animationBehaviorFactory in
        begin
        let spriteRotationAnimationFactory : Obj.t ref = ref ((Obj.repr (new allBinarySpriteRotationAnimationFactory ((Obj.magic image), (PrimitiveIntUtil.getArrayInstance ()), ((((Obj.magic image)#getHeight ()) asr 2)), ((((Obj.magic image)#getHeight ()) asr 2)), 0, 0, (Obj.magic animationBehaviorFactory))))) in ();
        ignore ((Obj.magic !spriteRotationAnimationFactory)#initWH (dx, dy));
        (Obj.magic !spriteRotationAnimationFactory)
        end [@@warning "-20"]

and createWH : 'any1 'any2. 'any1 * 'any2 -> _ = fun (image, animationBehaviorFactory) ->
        let image = Obj.repr image in
        let animationBehaviorFactory = Obj.repr animationBehaviorFactory in
        begin
        (createWHDY ((Obj.magic image), 0, 0, (Obj.magic animationBehaviorFactory)))
        end [@@warning "-20"]

and createDXY : 'any1 'any4. 'any1 * int * int * 'any4 -> _ = fun (image, (dx : int), (dy : int), animationBehaviorFactory) ->
        let image = Obj.repr image in
        let animationBehaviorFactory = Obj.repr animationBehaviorFactory in
        begin
        let spriteRotationAnimationFactory : Obj.t ref = ref ((Obj.repr (new allBinarySpriteRotationAnimationFactory ((Obj.magic image), (PrimitiveIntUtil.getArrayInstance ()), ((Obj.magic image)#getHeight ()), ((Obj.magic image)#getHeight ()), 0, 0, (Obj.magic animationBehaviorFactory))))) in ();
        ignore ((Obj.magic !spriteRotationAnimationFactory)#init (dx, dy));
        (Obj.magic !spriteRotationAnimationFactory)
        end [@@warning "-20"]

and createDXYQ : 'any1 'any4. 'any1 * int * int * 'any4 -> _ = fun (image, (dx : int), (dy : int), animationBehaviorFactory) ->
        let image = Obj.repr image in
        let animationBehaviorFactory = Obj.repr animationBehaviorFactory in
        begin
        let spriteRotationAnimationFactory : Obj.t ref = ref ((Obj.repr (new allBinarySpriteRotationAnimationFactory ((Obj.magic image), (PrimitiveIntUtil.getArrayInstance ()), ((((Obj.magic image)#getHeight ()) asr 2)), ((((Obj.magic image)#getHeight ()) asr 2)), 0, 0, (Obj.magic animationBehaviorFactory))))) in ();
        ignore ((Obj.magic !spriteRotationAnimationFactory)#init (dx, dy));
        (Obj.magic !spriteRotationAnimationFactory)
        end [@@warning "-20"]

and createQ : 'any1 'any2. 'any1 * 'any2 -> _ = fun (image, animationBehaviorFactory) ->
        let image = Obj.repr image in
        let animationBehaviorFactory = Obj.repr animationBehaviorFactory in
        begin
        (new allBinarySpriteRotationAnimationFactory ((Obj.magic image), (PrimitiveIntUtil.getArrayInstance ()), ((((Obj.magic image)#getHeight ()) asr 2)), ((((Obj.magic image)#getHeight ()) asr 2)), 0, 0, (Obj.magic animationBehaviorFactory)))
        end [@@warning "-20"]

and createWHF : 'any1 'any2. 'any1 * 'any2 -> _ = fun (image, animationBehaviorFactory) ->
        let image = Obj.repr image in
        let animationBehaviorFactory = Obj.repr animationBehaviorFactory in
        begin
        (new allBinarySpriteRotationAnimationFactory ((Obj.magic image), (PrimitiveIntUtil.getArrayInstance ()), ((Obj.magic image)#getHeight ()), ((Obj.magic image)#getHeight ()), 0, 0, (Obj.magic animationBehaviorFactory)))
        end [@@warning "-20"]
let () = java_register_static "AllBinarySpriteRotationAnimationFactory.createWHDY" (fun arguments -> Obj.repr (createWHDY (Obj.obj arguments)))
let () = java_register_static "AllBinarySpriteRotationAnimationFactory.createWH" (fun arguments -> Obj.repr (createWH (Obj.obj arguments)))
let () = java_register_static "AllBinarySpriteRotationAnimationFactory.createDXY" (fun arguments -> Obj.repr (createDXY (Obj.obj arguments)))
let () = java_register_static "AllBinarySpriteRotationAnimationFactory.createDXYQ" (fun arguments -> Obj.repr (createDXYQ (Obj.obj arguments)))
let () = java_register_static "AllBinarySpriteRotationAnimationFactory.createQ" (fun arguments -> Obj.repr (createQ (Obj.obj arguments)))
let () = java_register_static "AllBinarySpriteRotationAnimationFactory.createWHF" (fun arguments -> Obj.repr (createWHF (Obj.obj arguments)))


