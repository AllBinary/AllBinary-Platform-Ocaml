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
(* package org.allbinary.media.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.opengles.OpenGLFeatureFactory *)
(* import org.allbinary.image.opengles.ModifierOpenGLESImageProcessor *)
(* import org.allbinary.image.opengles.OpenGLESImage *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.eclipse.swt.graphics.ImageData *)
(* import org.microemu.device.swt.SwtImmutableImage *)
(* import org.microemu.device.swt.SwtMutableImage *)

class imageModifierUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable imageCopyUtil : Obj.t = Obj.repr 0
    method imageCopyUtil : 'r. 'r = Obj.magic imageCopyUtil
    method set_imageCopyUtil : 'v. 'v -> unit = fun value' -> imageCopyUtil <- Obj.repr value'
    val mutable features : Features.features = (Obj.magic 0)
    method features = features
    method set_features value' = features <- value'
    

    method setBasicColorP : 'any1. 'any1 -> unit = fun (_basicColor) ->
        begin
        ()
        end [@@warning "-20"]
    

    method setColor : 'any1 'any2 'any4. 'any1 * 'any2 * int * 'any4 -> unit = fun (_unusedOriginalImage, image, (_imageIndex : int), basicColor) ->
        let image = Obj.repr image in
        let basicColor = Obj.repr basicColor in
        begin
        let newBufferedImage : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        if ((Obj.magic image)#isMutable ()) then begin
            let swtImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic image)))) in ();
            newBufferedImage := Obj.repr ((Obj.magic ((Obj.magic !swtImage)#getImage ())))
        end else begin
            let swtImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic image)))) in ();
            newBufferedImage := Obj.repr ((Obj.magic ((Obj.magic !swtImage)#getImage ())))
        end;
        let r : int ref = ref ((Obj.magic basicColor)#red) in ();
        let g : int ref = ref ((Obj.magic basicColor)#green) in ();
        let b : int ref = ref ((Obj.magic basicColor)#blue) in ();
        let width : int ref = ref (((Obj.magic image)#getWidth ())) in ();
        let height : int ref = ref (((Obj.magic image)#getHeight ())) in ();
        let imageData : Obj.t ref = ref ((Obj.repr ((Obj.magic !newBufferedImage)#getImageData ()))) in ();
        if ((Obj.magic !imageData)#depth == 24) then begin
            let rx : int ref = ref (0) in ();
            let gx : int ref = ref (0) in ();
            let bx : int ref = ref (0) in ();
            let index3 : int ref = ref (0) in ();
            for index = 0 to !width - 1 do
                for index2 = 0 to !height - 1 do
                    index3 := (((index2 * (Obj.magic !imageData)#bytesPerLine)) + ((index * 4)));
                    rx := ((((Obj.magic !imageData)#data.(!index3) land 0xFF)) lsl 16);
                    gx := ((((Obj.magic !imageData)#data.((!index3 + 1)) land 0xFF)) lsl 8);
                    bx := (((Obj.magic !imageData)#data.((!index3 + 2)) land 0xFF));
                    if (((!rx <> 0) || (!gx <> 0)) || (!bx <> 0)) then begin
                        (Obj.magic !imageData)#data.(!index3) <- !r;
                        (Obj.magic !imageData)#data.((!index3 + 1)) <- !g;
                        (Obj.magic !imageData)#data.((!index3 + 2)) <- !b
                    end
                done
            done
        end
        end [@@warning "-20"]
    

    method changeColor : 'any1 'any2 'any4. 'any1 * 'any2 * int * 'any4 -> unit = fun (_unusedOriginalImage, image, (_imageIndex : int), basicColor) ->
        let image = Obj.repr image in
        let basicColor = Obj.repr basicColor in
        try
        begin
        if (features#isFeature ((OpenGLFeatureFactory.getInstance ())#oPENGL)) then begin
            if (((Obj.magic image)#getType ()) >= (Obj.magic (java_call_static "OpenGLESImage.get_tYPE" (Obj.repr ())))) then begin
                let openGLESImage : Obj.t ref = ref ((Obj.repr ((Obj.magic (Obj.magic image))))) in ();
                ignore ((Obj.magic !openGLESImage)#set_imageProcessor ((Obj.magic (java_call_static "ModifierOpenGLESImageProcessor.getInstance" (Obj.repr ())))));
                ignore ((Obj.magic !openGLESImage)#openGLESImageProperties#set_redf (((Obj.magic basicColor)#getRedComponent ())));
                ignore ((Obj.magic !openGLESImage)#openGLESImageProperties#set_greenf (((Obj.magic basicColor)#getGreenComponent ())));
                ignore ((Obj.magic !openGLESImage)#openGLESImageProperties#set_bluef (((Obj.magic basicColor)#getBlueComponent ())));
                raise (Java_return (Obj.repr (())))
            end
        end;
        let newBufferedImage : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        if ((Obj.magic image)#isMutable ()) then begin
            let swtImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic image)))) in ();
            newBufferedImage := Obj.repr ((Obj.magic ((Obj.magic !swtImage)#getImage ())))
        end else begin
            let swtImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic image)))) in ();
            newBufferedImage := Obj.repr ((Obj.magic ((Obj.magic !swtImage)#getImage ())))
        end;
        let mAX : float ref = ref (255.) in ();
        let r : float ref = ref ((((java_to_float (Obj.repr ((Obj.magic basicColor)#red)))) /. !mAX)) in ();
        let g : float ref = ref ((((java_to_float (Obj.repr ((Obj.magic basicColor)#green)))) /. !mAX)) in ();
        let b : float ref = ref ((((java_to_float (Obj.repr ((Obj.magic basicColor)#blue)))) /. !mAX)) in ();
        let rx : int ref = ref (0) in ();
        let gx : int ref = ref (0) in ();
        let bx : int ref = ref (0) in ();
        let imageData : Obj.t ref = ref ((Obj.repr ((Obj.magic !newBufferedImage)#getImageData ()))) in ();
        if ((Obj.magic !imageData)#depth == 24) then begin
            let size : int ref = ref ((Array.length (Obj.magic !imageData)#data)) in ();
            let index : int ref = ref (0) in ();
            while (index < !size) do
                rx := ((((Obj.magic !imageData)#data.(index) land 0xFF)) lsl 16);
                gx := ((((Obj.magic !imageData)#data.((index + 1)) land 0xFF)) lsl 8);
                bx := (((Obj.magic !imageData)#data.((index + 2)) land 0xFF));
                rx := (int_of_float ((!rx *. !r)));
                gx := (int_of_float ((!gx *. !g)));
                bx := (int_of_float ((!bx *. !b)));
                (Obj.magic !imageData)#data.(index) <- !rx;
                (Obj.magic !imageData)#data.((index + 1)) <- !gx;
                (Obj.magic !imageData)#data.((index + 2)) <- !bx;
                index <- (index + 4)
            done
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method setAlpha : 'any1 'any2. 'any1 * 'any2 * int * int -> unit = fun (_unusedOriginalImage, image, (_imageIndex : int), (alphaInt : int)) ->
        let image = Obj.repr image in
        try
        begin
        if (features#isFeature ((OpenGLFeatureFactory.getInstance ())#oPENGL)) then begin
            if (((Obj.magic image)#getType ()) >= (Obj.magic (java_call_static "OpenGLESImage.get_tYPE" (Obj.repr ())))) then begin
                let openGLESImage : Obj.t ref = ref ((Obj.repr ((Obj.magic (Obj.magic image))))) in ();
                ignore ((Obj.magic !openGLESImage)#set_imageProcessor ((Obj.magic (java_call_static "ModifierOpenGLESImageProcessor.getInstance" (Obj.repr ())))));
                ignore ((Obj.magic !openGLESImage)#openGLESImageProperties#set_alphaf ((((float_of_int (alphaInt))) /. 255.)));
                raise (Java_return (Obj.repr (())))
            end
        end;
        (self#setAlphaSWT ((Obj.magic image), alphaInt))
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method setAlphaSWT : 'any1. 'any1 * int -> unit = fun (image, (alphaInt : int)) ->
        let image = Obj.repr image in
        begin
        let alpha : int ref = ref (alphaInt) in ();
        let newBufferedImage : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        if ((Obj.magic image)#isMutable ()) then begin
            let swtImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic image)))) in ();
            newBufferedImage := Obj.repr ((Obj.magic ((Obj.magic !swtImage)#getImage ())))
        end else begin
            let swtImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic image)))) in ();
            newBufferedImage := Obj.repr ((Obj.magic ((Obj.magic !swtImage)#getImage ())))
        end;
        ((Obj.magic !newBufferedImage)#getImageData ())#set_alpha (!alpha)
        end [@@warning "-20"]
    

    method getImageArray : 'return. _ -> 'return = fun (originalImageArray) ->
        begin
        (try
            let newImageArray : Obj.t ref = ref ((Obj.repr (Array.make ((Array.length originalImageArray)) (Obj.magic 0)))) in ();
            let size : int ref = ref ((Array.length (Obj.magic !newImageArray))) in ();
            let originalImage : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            for index = 0 to !size - 1 do
                originalImage := Obj.repr (originalImageArray.(index));
                let image : Obj.t ref = ref ((Obj.repr ((Obj.magic imageCopyUtil)#createImage ((Obj.magic !originalImage))))) in ();
                (Obj.magic !newImageArray).(index) <- (Obj.magic !image)
            done;
            (Obj.magic ((Obj.magic !newImageArray)))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (!commonStrings#eXCEPTION, self, "getImageArray", e))));
            (Obj.magic (originalImageArray))
        end)
        end
    

    method handleImage : 'any3. _ * int * 'any3 -> unit = fun (_imageArray, (_index : int), _image) ->
        begin
        ()
        end [@@warning "-20"]
    

    method reset () : unit =
        begin
        ()
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        imageCopyUtil <- (Obj.repr (Obj.magic (java_call_static "ImageCopyUtil.getInstance" (Obj.repr ()))));
        features <- ((Features.getInstance ()) :> Features.features);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageModifierUtil" (fun arguments -> Obj.repr (new imageModifierUtil (Obj.obj arguments)))

let instance = (new imageModifierUtil ())
let get_instance () = instance
let () = java_register_static "ImageModifierUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstanceOrCreate () =
        begin
        instance
        end
let () = java_register_static "ImageModifierUtil.getInstanceOrCreate" (fun arguments -> Obj.repr (getInstanceOrCreate (Obj.obj arguments)))


