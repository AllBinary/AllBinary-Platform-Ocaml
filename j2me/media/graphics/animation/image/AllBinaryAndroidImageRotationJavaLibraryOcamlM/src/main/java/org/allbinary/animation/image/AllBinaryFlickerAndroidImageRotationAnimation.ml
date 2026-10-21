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
(* import android.graphics.Matrix *)
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.math.AngleInfo *)
(* import org.allbinary.media.image.AndroidImageUtil *)
(* import org.allbinary.media.image.ImageModifierUtil *)

class allBinaryFlickerAndroidImageRotationAnimation (originalImage_arg, image, (angleInfo : AngleInfo.angleInfo), (totalAngle : int), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit ImageBaseRotationAnimation.imageBaseRotationAnimation (image, angleInfo, totalAngle, animationBehavior) as super
    val mutable imageModifierUtil : Obj.t = Obj.repr 0
    method imageModifierUtil : 'r. 'r = Obj.magic imageModifierUtil
    method set_imageModifierUtil : 'v. 'v -> unit = fun value' -> imageModifierUtil <- Obj.repr value'
    val mutable androidImageUtil : AndroidImageUtil.androidImageUtil = (Obj.magic 0)
    method androidImageUtil = androidImageUtil
    method set_androidImageUtil value' = androidImageUtil <- value'
    val mutable matrix : Obj.t = Obj.repr 0
    method matrix : 'r. 'r = Obj.magic matrix
    method set_matrix : 'v. 'v -> unit = fun value' -> matrix <- Obj.repr value'
    val mutable halfWidth : int = 0
    method halfWidth = halfWidth
    method set_halfWidth value' = halfWidth <- value'
    val mutable halfHeight : int = 0
    method halfHeight = halfHeight
    method set_halfHeight value' = halfHeight <- value'
    val mutable increment : int = 0
    method increment = increment
    method set_increment value' = increment <- value'
    val mutable originalImage : Obj.t = Obj.repr 0
    method originalImage : 'r. 'r = Obj.magic originalImage
    method set_originalImage : 'v. 'v -> unit = fun value' -> originalImage <- Obj.repr value'
    
    

    method setBasicColorP : 'any1. 'any1 -> unit = fun (basicColor) ->
        let basicColor = Obj.repr basicColor in
        begin
        let changed : bool ref = ref (false) in ();
        if (((self#getBasicColorP ()) == (Obj.magic 0)) || ((Obj.repr ((self#getBasicColorP ())#intValue ())) != (Obj.repr ((Obj.magic basicColor)#intValue ())))) then begin
            ignore ((Obj.magic imageModifierUtil)#setColor ((Obj.magic originalImage), (self#getImage ()), 0, (Obj.magic basicColor)));
            changed := true
        end;
        ignore (super#setBasicColorP ((Obj.magic basicColor)));
        if !changed then begin
            ignore ((Obj.magic matrix)#setRotate (0.0, (float_of_int (halfWidth)), (float_of_int (halfHeight))));
            (self#updateImage ())
        end
        end [@@warning "-7-20"]
    

    method changeBasicColor : 'any1. 'any1 -> unit = fun (basicColor) ->
        let basicColor = Obj.repr basicColor in
        begin
        (self#setBasicColorP ((Obj.magic basicColor)))
        end [@@warning "-7-20"]
    

    method setAlpha ((alpha : int)) : unit =
        begin
        let changed : bool ref = ref (false) in ();
        if (alphaP != alpha) then begin
            changed := true
        end;
        ignore (super#setAlpha (alpha));
        ignore ((Obj.magic imageModifierUtil)#setAlpha ((Obj.magic originalImage), (self#getImage ()), 0, alphaP));
        if !changed then begin
            ignore ((Obj.magic matrix)#setRotate (0.0, (float_of_int (halfWidth)), (float_of_int (halfHeight))));
            (self#updateImage ())
        end
        end [@@warning "-7"]
    

    method nextRotation () : unit =
        begin
        ignore (super#nextRotation ());
        ignore ((Obj.magic matrix)#setRotate ((float_of_int (increment)), (float_of_int (halfWidth)), (float_of_int (halfHeight))));
        (self#updateImage ())
        end [@@warning "-7"]
    

    method previousRotation () : unit =
        begin
        ignore (super#previousRotation ());
        ignore ((Obj.magic matrix)#setRotate ((float_of_int ((-increment))), (float_of_int (halfWidth)), (float_of_int (halfHeight))));
        (self#updateImage ())
        end [@@warning "-7"]
    

    method updateImage () : unit =
        begin
        ignore (androidImageUtil#rotate ((self#getImage ()), (Obj.magic originalImage), (Obj.magic matrix), (Obj.magic imageModifierUtil)#paint))
        end [@@warning "-7"]
    

    method setFrame ((index : int)) : unit =
        begin
        let currentFrame : int ref = ref ((circularIndexUtil#getIndex ())) in ();
        ignore (circularIndexUtil#setIndex (index));
        let newFrame : int ref = ref ((circularIndexUtil#getIndex ())) in ();
        ignore (angleInfo#adjustAngle (!newFrame));
        ignore ((Obj.magic matrix)#setRotate (((float_of_int (((!newFrame - !currentFrame)))) *. (float_of_int (increment))), (float_of_int (halfWidth)), (float_of_int (halfHeight))));
        (self#updateImage ())
        end [@@warning "-7"]

    initializer
      begin
        imageModifierUtil <- (Obj.repr (Obj.magic (java_call_static "ImageModifierUtil.getInstanceOrCreate" (Obj.repr ()))));
        androidImageUtil <- ((AndroidImageUtil.getInstance ()) :> AndroidImageUtil.androidImageUtil);
        matrix <- (Obj.repr (new Matrix.matrix ()));
        ();
        ();
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        originalImage <- Obj.repr (originalImage_arg);
        halfWidth <- (((image#getWidth ()) asr 1));
        halfHeight <- (((image#getHeight ()) asr 1));
        increment <- (java_to_int (Obj.repr ((((angleInfo#getAngleIncrementInfo ())#getAngleIncrement ())))))
      end
  end [@@warning "-20"]
let () = java_register_constructor "AllBinaryFlickerAndroidImageRotationAnimation" (fun arguments -> Obj.repr (new allBinaryFlickerAndroidImageRotationAnimation (Obj.obj arguments)))


