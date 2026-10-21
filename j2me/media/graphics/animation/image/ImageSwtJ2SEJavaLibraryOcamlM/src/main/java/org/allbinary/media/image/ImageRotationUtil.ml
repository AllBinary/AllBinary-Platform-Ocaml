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
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.graphics.opengles.OpenGLFeatureFactory *)
(* import org.allbinary.image.opengles.OpenGLESImage *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.eclipse.swt.graphics.GC *)
(* import org.microemu.device.swt.SwtImmutableImage *)
(* import org.microemu.device.swt.SwtMutableImage *)

class imageRotationUtil () =
  object (self)
    val mutable imageSwtRotationUtil : ImageSwtRotationUtil.imageSwtRotationUtil = (Obj.magic 0)
    method imageSwtRotationUtil = imageSwtRotationUtil
    method set_imageSwtRotationUtil value' = imageSwtRotationUtil <- value'
    val mutable features : Features.features = (Obj.magic 0)
    method features = features
    method set_features value' = features <- value'
    
    

    method rotateImage : 'any1 'any2. 'any1 * 'any2 * int -> unit = fun (originalImage, image, (totalAngle : int)) ->
        let originalImage = Obj.repr originalImage in
        let image = Obj.repr image in
        try
        begin
        let originalImage2 : Obj.t ref = ref ((Obj.repr (Obj.magic originalImage))) in ();
        if (features#isFeature ((OpenGLFeatureFactory.getInstance ())#oPENGL)) then begin
            if (((Obj.magic image)#getType ()) >= (Obj.magic (java_call_static "OpenGLESImage.get_tYPE" (Obj.repr ())))) then begin
                let openGLESImage : Obj.t ref = ref ((Obj.repr ((Obj.magic (Obj.magic image))))) in ();
                ignore ((Obj.magic !openGLESImage)#openGLESImageProperties#set_angle (totalAngle));
                raise (Java_return (Obj.repr (())))
            end else begin
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (((("OpenGL but image is: " ^ java_string_of (Obj.repr ((Obj.magic image)))) ^ " type: ") ^ java_string_of (Obj.repr (((Obj.magic image)#getType ())))), self, "rotateImage"))))
            end
        end;
        let originalSwtImage : Obj.t ref = ref ((Obj.repr ((Obj.magic ((Obj.magic !originalImage2)#getImage ()))))) in ();
        let gc : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let copySwtImage : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        if ((Obj.magic image)#isMutable ()) then begin
            let swtImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic image)))) in ();
            copySwtImage := Obj.repr ((Obj.magic ((Obj.magic !swtImage)#getImage ())));
            gc := Obj.repr (((Obj.magic !swtImage)#getGc ()));
            ignore (imageSwtRotationUtil#rotateImage ((Obj.magic !originalSwtImage), (Obj.magic !copySwtImage), (Obj.magic !gc), totalAngle))
        end else begin
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (("No rotation for: " ^ (java_string_of (Obj.repr (Obj.magic image)))), self, "rotateImage"))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method createRotatedImage : 'any1 'return. 'any1 * int -> 'return = fun (originalImage, (_rotationInDegrees : int)) ->
        let originalImage = Obj.repr originalImage in
        begin
        (Obj.magic ((Obj.magic originalImage)))
        end [@@warning "-20"]

    initializer
      begin
        imageSwtRotationUtil <- ((ImageSwtRotationUtil.getInstance ()) :> ImageSwtRotationUtil.imageSwtRotationUtil);
        features <- ((Features.getInstance ()) :> Features.features);
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


