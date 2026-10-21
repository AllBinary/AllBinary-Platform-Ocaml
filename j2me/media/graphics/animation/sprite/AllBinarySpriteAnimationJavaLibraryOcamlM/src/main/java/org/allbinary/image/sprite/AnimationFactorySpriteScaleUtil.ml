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
(* package org.allbinary.image.sprite *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Image *)
(* import javax.microedition.lcdui.game.Sprite *)
(* import org.allbinary.game.layer.SpriteFactory *)
(* import org.allbinary.graphics.opengles.OpenGLUtil *)
(* import org.allbinary.image.ImageCache *)
(* import org.allbinary.image.ImageCacheFactory *)
(* import org.allbinary.image.opengles.OpenGLESImageExclusionUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.math.J2SEMath *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.media.image.ImageScaleUtil *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)

class animationFactorySpriteScaleUtil () =
  object
    val mutable imageCache : Obj.t = Obj.repr 0
    method imageCache : 'r. 'r = Obj.magic imageCache
    method set_imageCache : 'v. 'v -> unit = fun value' -> imageCache <- Obj.repr value'
    val mutable imageScaleUtil : Obj.t = Obj.repr 0
    method imageScaleUtil : 'r. 'r = Obj.magic imageScaleUtil
    method set_imageScaleUtil : 'v. 'v -> unit = fun value' -> imageScaleUtil <- Obj.repr value'
    val mutable openGLUtil : Obj.t = Obj.repr 0
    method openGLUtil : 'r. 'r = Obj.magic openGLUtil
    method set_openGLUtil : 'v. 'v -> unit = fun value' -> openGLUtil <- Obj.repr value'
    val mutable j2seMath : J2SEMath.j2SEMath = (Obj.magic 0)
    method j2seMath = j2seMath
    method set_j2seMath value' = j2seMath <- value'
    val mutable openGLESImageExclusionUtil : Obj.t = Obj.repr 0
    method openGLESImageExclusionUtil : 'r. 'r = Obj.magic openGLESImageExclusionUtil
    method set_openGLESImageExclusionUtil : 'v. 'v -> unit = fun value' -> openGLESImageExclusionUtil <- Obj.repr value'
    

    method createImage : 'any1 'return. 'any1 * int * int * int * int -> 'return = fun (image, (width : int), (height : int), (scaleWidth : int), (scaleHeight : int)) ->
        let image = Obj.repr image in
        begin
        let spriteFactory : SpriteFactory.spriteFactory ref = ref (((SpriteFactory.getInstance ()) :> SpriteFactory.spriteFactory)) in ();
        let sprite : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let scaledImage : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        if ((scaleWidth <> 0) && (scaleHeight <> 0)) then begin
            let scaleX : float ref = ref ((((float_of_int (scaleWidth))) /. ((float_of_int (width))))) in ();
            let scaleY : float ref = ref ((((float_of_int (scaleHeight))) /. ((float_of_int (height))))) in ();
            if ((((!scaleX = 1.0) && (!scaleY = 1.0))) || (((!scaleX = 0.0) || (!scaleY = 0.0)))) then begin
                scaledImage := Obj.repr (((Obj.magic openGLUtil)#addImage ((Obj.magic image))));
                sprite := Obj.repr ((!spriteFactory#createSprite ((Obj.magic !scaledImage), width, height)))
            end else begin
                if ((Obj.magic openGLESImageExclusionUtil)#isCustomScaling ((Obj.magic image))) then begin
                    let width2 : int ref = ref ((j2seMath#round (((float_of_int ((scaleWidth))) -. 0.5)))) in ();
                    let height2 : int ref = ref ((j2seMath#round (((float_of_int ((scaleHeight))) -. 0.5)))) in ();
                    let multiplesOf16Width : int ref = ref ((!width2 / 16)) in ();
                    let by16Width : int ref = ref ((!multiplesOf16Width * 16)) in ();
                    scaleX := (((float_of_int (!by16Width))) /. (float_of_int (width)));
                    let multiplesOf16Height : int ref = ref ((!height2 / 16)) in ();
                    let by16Height : int ref = ref ((!multiplesOf16Height * 16)) in ();
                    scaleY := (((float_of_int (!by16Height))) /. (float_of_int (height)));
                    if (scaleWidth < width) then begin
                        scaleX := (!scaleX *. 2.35)
                    end;
                    if (scaleHeight < height) then begin
                        scaleY := (!scaleY *. 2.35)
                    end
                end;
                scaledImage := Obj.repr (((Obj.magic imageScaleUtil)#createImage2 ((Obj.magic imageCache), (Obj.magic image), !scaleX, 1.0, !scaleY, 1.0, true)));
                sprite := Obj.repr ((!spriteFactory#createSprite ((Obj.magic !scaledImage), (int_of_float ((((float_of_int (width)) *. !scaleX)))), (int_of_float ((((float_of_int (height)) *. !scaleY)))))))
            end
        end else begin
            scaledImage := Obj.repr (((Obj.magic openGLUtil)#addImage ((Obj.magic image))));
            sprite := Obj.repr ((!spriteFactory#createSprite ((Obj.magic !scaledImage), width, height)))
        end;
        (Obj.magic ((Obj.magic !sprite)))
        end [@@warning "-20"]

    initializer
      begin
        imageCache <- (Obj.repr (ImageCacheFactory.getInstance ()));
        imageScaleUtil <- (Obj.repr (Obj.magic (java_call_static "ImageScaleUtil.getInstance" (Obj.repr ()))));
        openGLUtil <- (Obj.repr (Obj.magic (java_call_static "OpenGLUtil.getInstance" (Obj.repr ()))));
        j2seMath <- ((J2SEMath.getInstance ()) :> J2SEMath.j2SEMath);
        openGLESImageExclusionUtil <- (Obj.repr (Obj.magic (java_call_static "OpenGLESImageExclusionUtil.getInstance" (Obj.repr ()))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AnimationFactorySpriteScaleUtil" (fun arguments -> Obj.repr (new animationFactorySpriteScaleUtil (Obj.obj arguments)))

let instance = (new animationFactorySpriteScaleUtil ())
let get_instance () = instance
let () = java_register_static "AnimationFactorySpriteScaleUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AnimationFactorySpriteScaleUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


