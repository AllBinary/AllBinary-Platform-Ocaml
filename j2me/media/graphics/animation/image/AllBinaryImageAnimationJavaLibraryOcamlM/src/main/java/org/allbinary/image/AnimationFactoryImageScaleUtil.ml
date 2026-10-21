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
(* package org.allbinary.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.animation.image.AnimationFactoryInitializationVisitor *)
(* import org.allbinary.animation.image.BaseImageAnimationFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.media.ScaleProperties *)
(* import org.allbinary.media.image.ImageJ2MEScaleUtil *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)

class animationFactoryImageScaleUtil () =
  object
    val mutable imageScaleUtil : Obj.t = Obj.repr 0
    method imageScaleUtil : 'r. 'r = Obj.magic imageScaleUtil
    method set_imageScaleUtil : 'v. 'v -> unit = fun value' -> imageScaleUtil <- Obj.repr value'
    

    method createImage : 'any1 'return. 'any1 * int * int * int * int -> 'return = fun (image, (width : int), (height : int), (scaleWidth : int), (scaleHeight : int)) ->
        let image = Obj.repr image in
        begin
        let scaledImage : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        if ((scaleWidth <> 0) && (scaleHeight <> 0)) then begin
            let scaleX : float ref = ref ((((float_of_int (scaleWidth))) /. ((float_of_int (width))))) in ();
            let scaleY : float ref = ref ((((float_of_int (scaleHeight))) /. ((float_of_int (height))))) in ();
            if ((((!scaleX = 1.0) && (!scaleY = 1.0))) || (((!scaleX = 0.0) || (!scaleY = 0.0)))) then begin
                scaledImage := Obj.repr ((Obj.magic image))
            end else begin
                let scaledWidth : int ref = ref ((int_of_float (((!scaleX *. (float_of_int (width))))))) in ();
                let scaledHeight : int ref = ref ((int_of_float (((!scaleY *. (float_of_int (height))))))) in ();
                scaledImage := Obj.repr (((Obj.magic imageScaleUtil)#scale ((Obj.magic image), !scaledWidth, !scaledHeight)))
            end
        end else begin
            scaledImage := Obj.repr ((Obj.magic image))
        end;
        (Obj.magic ((Obj.magic !scaledImage)))
        end [@@warning "-20"]
    

    method processAdjust : 'any1. 'any1 -> unit = fun (baseImageAnimationFactory) ->
        let baseImageAnimationFactory = Obj.repr baseImageAnimationFactory in
        begin
        let scaleProperties : ScaleProperties.scaleProperties ref = ref ((((Obj.magic baseImageAnimationFactory)#getScalePropertiesP ()) :> ScaleProperties.scaleProperties)) in ();
        if ((!scaleProperties#scaleWidth != 0) && (!scaleProperties#scaleHeight != 0)) then begin
            let animationFactoryInitializationVisitor : AnimationFactoryInitializationVisitor.animationFactoryInitializationVisitor ref = ref ((((Obj.magic baseImageAnimationFactory)#getAnimationFactoryInitializationVisitorP ()) :> AnimationFactoryInitializationVisitor.animationFactoryInitializationVisitor)) in ();
            let scaleX : float ref = ref ((((java_to_float (Obj.repr (!scaleProperties#scaleWidth)))) /. ((java_to_float (Obj.repr (!animationFactoryInitializationVisitor#width)))))) in ();
            let scaleY : float ref = ref ((((java_to_float (Obj.repr (!scaleProperties#scaleHeight)))) /. ((java_to_float (Obj.repr (!animationFactoryInitializationVisitor#height)))))) in ();
            if ((((!scaleX = 1.0) && (!scaleY = 1.0))) || (((!scaleX = 0.0) || (!scaleY = 0.0)))) then begin
                ()
            end else begin
                !animationFactoryInitializationVisitor#set_dx ((java_to_int (Obj.repr (((!animationFactoryInitializationVisitor#originalDx *. !scaleX))))));
                !animationFactoryInitializationVisitor#set_dy ((java_to_int (Obj.repr (((!animationFactoryInitializationVisitor#originalDy *. !scaleY))))))
            end
        end else begin
            ()
        end
        end [@@warning "-20"]

    initializer
      begin
        imageScaleUtil <- (Obj.repr (Obj.magic (java_call_static "ImageJ2MEScaleUtil.getInstance" (Obj.repr ()))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AnimationFactoryImageScaleUtil" (fun arguments -> Obj.repr (new animationFactoryImageScaleUtil (Obj.obj arguments)))

let instance = (new animationFactoryImageScaleUtil ())
let get_instance () = instance
let () = java_register_static "AnimationFactoryImageScaleUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AnimationFactoryImageScaleUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


