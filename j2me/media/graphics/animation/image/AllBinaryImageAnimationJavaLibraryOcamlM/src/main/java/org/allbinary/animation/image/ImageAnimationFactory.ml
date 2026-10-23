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
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.AnimationBehaviorFactory *)
(* import org.allbinary.graphics.opengles.OpenGLUtil *)
(* import org.allbinary.logic.math.PrimitiveIntUtil *)

class imageAnimationFactory (image, (width : int), (height : int), (dx : int), (dy : int), (animationBehaviorFactory : AnimationBehaviorFactory.animationBehaviorFactory)) =
  object (self)
    inherit BaseImageAnimationFactory.baseImageAnimationFactory (image, (PrimitiveIntUtil.getArrayInstance ()), width, height, dx, dy, animationBehaviorFactory)
    
    

    method getInstance : 'return. int -> 'return = fun ((_instanceId : int)) ->
        try
        begin
        let scaledImage : Obj.t ref = ref ((Obj.repr ((self#animationFactoryImageScaleUtil)#createImage ((self#getImage ()), (self#animationFactoryInitializationVisitor)#width, (self#animationFactoryInitializationVisitor)#height, (self#scaleProperties)#scaleWidth, (self#scaleProperties)#scaleHeight)))) in ();
        let openGLUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "OpenGLUtil.getInstance" (Obj.repr ()))))) in ();
        scaledImage := Obj.repr (((Obj.magic !openGLUtil)#addImage ((Obj.magic !scaledImage))));
        if (((self#animationFactoryInitializationVisitor)#dx != 0) || ((self#animationFactoryInitializationVisitor)#dy != 0)) then begin
            ignore ((self#animationFactoryImageScaleUtil)#processAdjust (self));
            raise (Java_return (Obj.repr ((new AdjustedImageAnimation.adjustedImageAnimation ((Obj.magic !scaledImage), (self#animationFactoryInitializationVisitor)#dx, (self#animationFactoryInitializationVisitor)#dy, ((self#animationBehaviorFactory)#getOrCreateInstance ()))))))
        end else begin
            raise (Java_return (Obj.repr ((new ImageAnimation.imageAnimation ((Obj.magic !scaledImage), ((self#animationBehaviorFactory)#getOrCreateInstance ()))))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "ImageAnimationFactory" (fun arguments -> Obj.repr (new imageAnimationFactory (Obj.obj arguments)))

let createFactory : 'any1. 'any1 -> _ = fun (image) ->
        let image = Obj.repr image in
        begin
        (new imageAnimationFactory ((Obj.magic image), ((Obj.magic image)#getWidth ()), ((Obj.magic image)#getHeight ()), 0, 0, (AnimationBehaviorFactory.getInstance ())))
        end [@@warning "-20"]
let () = java_register_static "ImageAnimationFactory.createFactory" (fun arguments -> Obj.repr (createFactory (Obj.obj arguments)))


