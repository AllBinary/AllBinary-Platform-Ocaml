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
(* package org.allbinary.animation.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Image *)
(* import javax.microedition.lcdui.NullImage *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.AnimationBehaviorFactory *)
(* import org.allbinary.game.configuration.GameConfigurationCentral *)
(* import org.allbinary.logic.math.PrimitiveIntUtil *)
(* import org.allbinary.math.AngleFactory *)
(* import org.allbinary.math.AngleInfo *)
(* import org.allbinary.media.image.ImageToRotationImageArrayUtil *)

class allBinaryArrayImageRotationAnimationFactory (image, (width : int), (height : int), (angleIncrement_arg : int), (animationBehaviorFactory : AnimationBehaviorFactory.animationBehaviorFactory)) =
  object (self)
    inherit BaseImageAnimationFactory.baseImageAnimationFactory (image, (PrimitiveIntUtil.getArrayInstance ()), width, height, 0, 0, animationBehaviorFactory)
    val mutable imageArray : Obj.t = Obj.repr 0
    method imageArray : 'r. 'r = Obj.magic imageArray
    method set_imageArray : 'v. 'v -> unit = fun value' -> imageArray <- Obj.repr value'
    val mutable angleIncrement : int = 0
    method angleIncrement = angleIncrement
    method set_angleIncrement value' = angleIncrement <- value'
    
    

    method init () : unit =
        begin
        (self#setImageArray (((ImageToRotationImageArrayUtil.getInstance ())#generate ((self#getImage ()), (self#getAngleIncrement ()), (java_to_int (Obj.repr ((AngleFactory.getInstance ())#tOTAL_ANGLE)))))))
        end [@@warning "-7"]
    

    method initDXY ((dx : int), (dy : int)) : unit =
        begin
        (self#animationFactoryInitializationVisitor)#set_dx (dx);
        (self#animationFactoryInitializationVisitor)#set_dy (dy);
        (self#animationFactoryInitializationVisitor)#set_originalDx (dx);
        (self#animationFactoryInitializationVisitor)#set_originalDy (dy)
        end [@@warning "-7"]
    

    method getInstance : 'return. int -> 'return = fun ((_instanceId : int)) ->
        try
        begin
        let scaledImageArray : Obj.t ref = ref ((Obj.repr (Array.make ((Array.length (Obj.magic imageArray))) (Obj.magic 0)))) in ();
        let size : int ref = ref ((Array.length (Obj.magic !scaledImageArray))) in ();
        let image : Obj.t ref = ref ((Obj.repr (self#getImage ()))) in ();
        for index = 0 to !size - 1 do
            (Obj.magic !scaledImageArray).(index) <- ((self#animationFactoryImageScaleUtil)#createImage ((Obj.magic !image), ((Obj.magic !image)#getWidth ()), ((Obj.magic !image)#getHeight ()), (self#scaleProperties)#scaleWidth, (self#scaleProperties)#scaleHeight))
        done;
        if (((self#animationFactoryInitializationVisitor)#dx != 0) || ((self#animationFactoryInitializationVisitor)#dy != 0)) then begin
            ignore ((self#animationFactoryImageScaleUtil)#processAdjust (self));
            raise (Java_return (Obj.repr ((new AdjustedImageArrayRotationAnimation.adjustedImageArrayRotationAnimation ((Obj.magic !scaledImageArray), (AngleInfo.getInstance ((self#getAngleIncrement ()))), (java_to_int (Obj.repr ((AngleFactory.getInstance ())#tOTAL_ANGLE))), (self#animationFactoryInitializationVisitor)#dx, (self#animationFactoryInitializationVisitor)#dy, ((self#animationBehaviorFactory)#getOrCreateInstance ()))))))
        end else begin
            raise (Java_return (Obj.repr ((new ImageArrayRotationAnimation.imageArrayRotationAnimation ((Obj.magic !scaledImageArray), (AngleInfo.getInstance ((self#getAngleIncrement ()))), (java_to_int (Obj.repr ((AngleFactory.getInstance ())#tOTAL_ANGLE))), ((self#animationBehaviorFactory)#getOrCreateInstance ()))))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method setImageArray (imageArray_arg) : unit =
        begin
        imageArray <- Obj.repr (imageArray_arg)
        end [@@warning "-7"]
    

    method getAngleIncrement () : int =
        begin
        angleIncrement
        end [@@warning "-7"]

    initializer
      begin
        imageArray <- (Obj.repr (NullImage.get_nULL_IMAGE_ARRAY ()));
        ();
        ();
        (* super(...) is the inherit clause *) ();
        angleIncrement <- angleIncrement_arg;
        (self#init ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "AllBinaryArrayImageRotationAnimationFactory" (fun arguments -> Obj.repr (new allBinaryArrayImageRotationAnimationFactory (Obj.obj arguments)))

let createFactory : 'any1. 'any1 * int * int -> _ = fun (image, (dx : int), (dy : int)) ->
        let image = Obj.repr image in
        begin
        let arrayImageRotationAnimationFactory : Obj.t ref = ref ((Obj.repr (new allBinaryArrayImageRotationAnimationFactory ((Obj.magic image), ((Obj.magic image)#getWidth ()), ((Obj.magic image)#getHeight ()), ((AngleFactory.getInstance ())#tOTAL_ANGLE / ((GameConfigurationCentral.getInstance ())#getGameControlFidelity ())), (AnimationBehaviorFactory.getInstance ()))))) in ();
        ignore ((Obj.magic !arrayImageRotationAnimationFactory)#initDXY (dx, dy));
        (Obj.magic !arrayImageRotationAnimationFactory)
        end [@@warning "-20"]

and createFactoryA : 'any1. 'any1 * int * int * int -> _ = fun (image, (dx : int), (dy : int), (angleIncrement_arg : int)) ->
        let image = Obj.repr image in
        begin
        let arrayImageRotationAnimationFactory : Obj.t ref = ref ((Obj.repr (new allBinaryArrayImageRotationAnimationFactory ((Obj.magic image), ((Obj.magic image)#getWidth ()), ((Obj.magic image)#getHeight ()), angleIncrement_arg, (AnimationBehaviorFactory.getInstance ()))))) in ();
        ignore ((Obj.magic !arrayImageRotationAnimationFactory)#initDXY (dx, dy));
        (Obj.magic !arrayImageRotationAnimationFactory)
        end [@@warning "-20"]
let () = java_register_static "AllBinaryArrayImageRotationAnimationFactory.createFactory" (fun arguments -> Obj.repr (createFactory (Obj.obj arguments)))
let () = java_register_static "AllBinaryArrayImageRotationAnimationFactory.createFactoryA" (fun arguments -> Obj.repr (createFactoryA (Obj.obj arguments)))


