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
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.Image *)
(* import javax.microedition.lcdui.NullImage *)
(* import org.allbinary.DisposalUtil *)
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.animation.RotationAnimation *)
(* import org.allbinary.graphics.Anchor *)
(* import org.allbinary.logic.math.PrimitiveIntUtil *)
(* import org.allbinary.math.AngleInfo *)
(* import org.allbinary.media.image.ImageModifierUtil *)
(* import org.allbinary.util.CircularIndexUtil *)

class imageArrayBaseRotationAnimation (originalImageArray_arg, (angleInfo : AngleInfo.angleInfo), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit RotationAnimation.rotationAnimation (angleInfo, (CircularIndexUtil.createInstance ((360 / ((angleInfo#getAngleIncrementInfo ())#getAngleIncrement ())))), animationBehavior) as super
    val mutable imageModifierUtil : Obj.t = Obj.repr 0
    method imageModifierUtil : 'r. 'r = Obj.magic imageModifierUtil
    method set_imageModifierUtil : 'v. 'v -> unit = fun value' -> imageModifierUtil <- Obj.repr value'
    val mutable originalImageArray : Obj.t = Obj.repr 0
    method originalImageArray : 'r. 'r = Obj.magic originalImageArray
    method set_originalImageArray : 'v. 'v -> unit = fun value' -> originalImageArray <- Obj.repr value'
    val mutable imageArray : Obj.t = Obj.repr 0
    method imageArray : 'r. 'r = Obj.magic imageArray
    method set_imageArray : 'v. 'v -> unit = fun value' -> imageArray <- Obj.repr value'
    val mutable currentImage : Obj.t = Obj.repr 0
    method currentImage : 'r. 'r = Obj.magic currentImage
    method set_currentImage : 'v. 'v -> unit = fun value' -> currentImage <- Obj.repr value'
    val mutable totalFrames : int = 0
    method totalFrames = totalFrames
    method set_totalFrames value' = totalFrames <- value'
    val mutable anchor : int = 0
    method anchor = anchor
    method set_anchor value' = anchor <- value'
    
    

    method getAnimationSize () : int =
        begin
        (self#getSize ())
        end [@@warning "-7"]
    

    method setAlpha ((alpha : int)) : unit =
        begin
        if (alphaP != alpha) then begin
            ignore (super#setAlpha (alpha));
            ignore ((Obj.magic imageModifierUtil)#reset ());
            let index : int ref = ref ((circularIndexUtil#getIndex ())) in ();
            ignore ((Obj.magic imageModifierUtil)#setAlpha ((Obj.magic originalImageArray).(!index), (Obj.magic imageArray).(!index), !index, alphaP))
        end
        end [@@warning "-7"]
    

    method nextRotation () : unit =
        begin
        ignore (super#nextRotation ());
        let index : int ref = ref ((circularIndexUtil#getIndex ())) in ();
        ignore ((Obj.magic imageModifierUtil)#setAlpha ((Obj.magic originalImageArray).(!index), (Obj.magic imageArray).(!index), !index, alphaP));
        currentImage <- Obj.repr ((Obj.magic imageArray).(!index))
        end [@@warning "-7"]
    

    method previousRotation () : unit =
        begin
        ignore (super#previousRotation ());
        let index : int ref = ref ((circularIndexUtil#getIndex ())) in ();
        ignore ((Obj.magic imageModifierUtil)#setAlpha ((Obj.magic originalImageArray).(!index), (Obj.magic imageArray).(!index), !index, alphaP));
        currentImage <- Obj.repr ((Obj.magic imageArray).(!index))
        end [@@warning "-7"]
    

    method setFrame ((index2 : int)) : unit =
        begin
        ignore (super#setFrame (index2));
        let index : int ref = ref ((circularIndexUtil#getIndex ())) in ();
        ignore ((Obj.magic imageModifierUtil)#setAlpha ((Obj.magic originalImageArray).(!index), (Obj.magic imageArray).(!index), !index, alphaP));
        currentImage <- Obj.repr ((Obj.magic imageArray).(!index))
        end [@@warning "-7"]
    

    method setSequence ((_sequence : int array)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getSequence () : int array =
        begin
        (PrimitiveIntUtil.getArrayInstance ())
        end [@@warning "-7"]
    

    method setImageArray (imageArray_arg) : unit =
        begin
        imageArray <- Obj.repr (imageArray_arg);
        totalFrames <- (Array.length imageArray_arg);
        circularIndexUtil <- (CircularIndexUtil.createInstance (totalFrames))
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic graphics)#drawImage ((Obj.magic currentImage), x, y, anchor))
        end [@@warning "-7-20"]
    

    method close () : unit =
        begin
        let disposalUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "DisposalUtil.getInstance" (Obj.repr ()))))) in ();
        let size2 : int ref = ref ((Array.length (Obj.magic imageArray))) in ();
        for index = 0 to !size2 - 1 do
            ignore ((Obj.magic !disposalUtil)#disposeImage ((Obj.magic imageArray).(index)))
        done;
        let size : int ref = ref ((Array.length (Obj.magic originalImageArray))) in ();
        for index = 0 to !size - 1 do
            ignore ((Obj.magic !disposalUtil)#disposeImage ((Obj.magic originalImageArray).(index)))
        done;
        ignore ((Obj.magic !disposalUtil)#disposeImage ((Obj.magic currentImage)))
        end [@@warning "-7"]
    

    method finalize () : unit =
        begin
        let disposalUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "DisposalUtil.getInstance" (Obj.repr ()))))) in ();
        let size2 : int ref = ref ((Array.length (Obj.magic imageArray))) in ();
        for index = 0 to !size2 - 1 do
            ignore ((Obj.magic !disposalUtil)#disposeImage ((Obj.magic imageArray).(index)))
        done;
        let size : int ref = ref ((Array.length (Obj.magic originalImageArray))) in ();
        for index = 0 to !size - 1 do
            ignore ((Obj.magic !disposalUtil)#disposeImage ((Obj.magic originalImageArray).(index)))
        done;
        ignore ((Obj.magic !disposalUtil)#disposeImage ((Obj.magic currentImage)))
        end [@@warning "-7"]

    initializer
      begin
        imageModifierUtil <- (Obj.repr (Obj.magic (java_call_static "ImageModifierUtil.getInstanceOrCreate" (Obj.repr ()))));
        ();
        imageArray <- (Obj.repr (NullImage.get_nULL_IMAGE_ARRAY ()));
        ();
        totalFrames <- 0;
        anchor <- (Anchor.get_tOP_LEFT ());
        ();
        (* super(...) is the inherit clause *) ();
        originalImageArray <- Obj.repr (originalImageArray_arg);
        (self#setImageArray (((Obj.magic imageModifierUtil)#getImageArray (originalImageArray_arg))));
        currentImage <- Obj.repr ((Obj.magic imageArray).((circularIndexUtil#getIndex ())))
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageArrayBaseRotationAnimation" (fun arguments -> Obj.repr (new imageArrayBaseRotationAnimation (Obj.obj arguments)))


