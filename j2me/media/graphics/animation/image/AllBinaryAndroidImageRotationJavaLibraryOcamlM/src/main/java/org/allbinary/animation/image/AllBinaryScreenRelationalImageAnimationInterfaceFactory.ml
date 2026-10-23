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
(* import org.allbinary.image.GameFeatureImageCacheFactory *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.AnimationBehaviorFactory *)
(* import org.allbinary.graphics.displayable.ScreenRelationalUtil *)
(* import org.allbinary.logic.math.PrimitiveIntUtil *)
(* import org.allbinary.media.image.ImageScaleUtil *)
(* import org.microemu.android.device.AndroidImageInterface *)

class allBinaryScreenRelationalImageAnimationInterfaceFactory (image, (animationBehaviorFactory : AnimationBehaviorFactory.animationBehaviorFactory)) =
  object (self)
    inherit BaseImageAnimationFactory.baseImageAnimationFactory (image, (PrimitiveIntUtil.getArrayInstance ()), 0, 0, 0, 0, animationBehaviorFactory)
    val mutable lastImage : Obj.t = Obj.repr 0
    method lastImage : 'r. 'r = Obj.magic lastImage
    method set_lastImage : 'v. 'v -> unit = fun value' -> lastImage <- Obj.repr value'
    
    

    method getInstance : 'return. int -> 'return = fun ((_instanceId : int)) ->
        begin
        (Obj.magic ((new ImageAnimation.imageAnimation ((Obj.magic lastImage), ((self#animationBehaviorFactory)#getOrCreateInstance ())))))
        end [@@warning "-7"]

    initializer
      begin
        lastImage <- (Obj.repr (NullImage.get_nULL_IMAGE ()));
        ();
        (* super(...) is the inherit clause *) ();
        if ((Obj.repr (Obj.magic lastImage)) != (Obj.repr (NullImage.get_nULL_IMAGE ()))) then begin
            let androidImageInterface : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic lastImage)))) in ();
            ignore (((Obj.magic !androidImageInterface)#getBitmap ())#recycle ())
        end;
        let scale : float ref = ref (((ScreenRelationalUtil.getInstance ())#getScaleImage (image))) in ();
        lastImage <- Obj.repr (((Obj.magic (java_call_static "ImageScaleUtil.getInstance" (Obj.repr ())))#createImage ((GameFeatureImageCacheFactory.getInstance ()), (self#getImage ()), !scale, !scale, false)))
      end
  end [@@warning "-20"]
let () = java_register_constructor "AllBinaryScreenRelationalImageAnimationInterfaceFactory" (fun arguments -> Obj.repr (new allBinaryScreenRelationalImageAnimationInterfaceFactory (Obj.obj arguments)))


