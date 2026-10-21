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
(* package org.allbinary.media.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.image.BufferedImage *)
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.microemu.device.j2se.J2SEImmutableImage *)
(* import org.microemu.device.j2se.J2SEMutableImage *)

class imageRotationUtil () =
  object (self)
    val mutable imageJ2SERotationUtil : ImageJ2SERotationUtil.imageJ2SERotationUtil = (Obj.magic 0)
    method imageJ2SERotationUtil = imageJ2SERotationUtil
    method set_imageJ2SERotationUtil value' = imageJ2SERotationUtil <- value'
    
    

    method rotateImage : 'any1 'any2. 'any1 * 'any2 * int -> unit = fun (originalImage, image, (totalAngle : int)) ->
        let originalImage = Obj.repr originalImage in
        let image = Obj.repr image in
        begin
        if ((Obj.magic image)#isMutable ()) then begin
            let j2seImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic image)))) in ();
            let newBufferedImage : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !j2seImage)#getImage ())))) in ();
            let originalAwtImage : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            if ((Obj.magic originalImage)#isMutable ()) then begin
                let originalJ2SEImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic originalImage)))) in ();
                originalAwtImage := Obj.repr ((Obj.magic ((Obj.magic !originalJ2SEImage)#getImage ())))
            end else begin
                let originalJ2SEImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic originalImage)))) in ();
                originalAwtImage := Obj.repr ((Obj.magic ((Obj.magic !originalJ2SEImage)#getImage ())))
            end;
            ignore (imageJ2SERotationUtil#rotateImage ((Obj.magic !originalAwtImage), (Obj.magic !newBufferedImage), totalAngle))
        end else begin
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr ("Not Mutable", self, "getRotatedImage", (Failure ("Exception"))))))
        end
        end [@@warning "-20"]
    

    method createRotatedImage : 'any1 'return. 'any1 * int -> 'return = fun (originalImage, (rotationInDegrees : int)) ->
        let originalImage = Obj.repr originalImage in
        try
        begin
        let image : Obj.t ref = ref ((Obj.repr ((ImageCreationUtil.getInstance ())#createImageWH (((Obj.magic originalImage)#getWidth ()), ((Obj.magic originalImage)#getHeight ()))))) in ();
        if ((Obj.magic !image)#isMutable ()) then begin
            let originalAwtImage : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            if ((Obj.magic originalImage)#isMutable ()) then begin
                let originalJ2SEImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic originalImage)))) in ();
                originalAwtImage := Obj.repr ((Obj.magic ((Obj.magic !originalJ2SEImage)#getImage ())))
            end else begin
                let originalJ2SEImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic originalImage)))) in ();
                originalAwtImage := Obj.repr ((Obj.magic ((Obj.magic !originalJ2SEImage)#getImage ())))
            end;
            let j2seImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic !image)))) in ();
            let newBufferedImage : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !j2seImage)#getImage ())))) in ();
            let bufferedImage : Obj.t ref = ref ((Obj.repr (imageJ2SERotationUtil#createRotatedImage ((Obj.magic !originalAwtImage), (Obj.magic !newBufferedImage), rotationInDegrees)))) in ();
            raise (Java_return (Obj.repr ((Obj.magic !image))))
        end else begin
            raise (Failure ("Not Mutable"))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        imageJ2SERotationUtil <- ((ImageJ2SERotationUtil.getInstance ()) :> ImageJ2SERotationUtil.imageJ2SERotationUtil);
        ();
        ()
      end
  end
let () = java_register_constructor "ImageRotationUtil" (fun arguments -> Obj.repr (new imageRotationUtil (Obj.obj arguments)))

let instance = (new imageRotationUtil ())
let get_instance () = instance
let () = java_register_static "ImageRotationUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ImageRotationUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


