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
(* import java.awt.Graphics2D *)
(* import java.awt.GraphicsConfiguration *)
(* import java.awt.GraphicsDevice *)
(* import java.awt.GraphicsEnvironment *)
(* import java.awt.Transparency *)
(* import java.awt.geom.AffineTransform *)
(* import java.awt.image.BufferedImage *)
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import org.microemu.device.j2se.J2SEImmutableImage *)
(* import org.microemu.device.j2se.J2SEMutableImage *)

class imageUtil () =
  object (self)
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable commonSeps : CommonSeps.commonSeps = (Obj.magic 0)
    method commonSeps = commonSeps
    method set_commonSeps value' = commonSeps <- value'
    val mutable iIOIMAGE_POOL_NAME : string = ""
    method iIOIMAGE_POOL_NAME = iIOIMAGE_POOL_NAME
    method set_iIOIMAGE_POOL_NAME value' = iIOIMAGE_POOL_NAME <- value'
    val mutable cREATE_BUFFERED_IMAGE : string = ""
    method cREATE_BUFFERED_IMAGE = cREATE_BUFFERED_IMAGE
    method set_cREATE_BUFFERED_IMAGE value' = cREATE_BUFFERED_IMAGE <- value'
    
    

    method getDefaultConfiguration : 'return. unit -> 'return = fun () ->
        begin
        let ge : Obj.t ref = ref ((Obj.repr (GraphicsEnvironment.getLocalGraphicsEnvironment ()))) in ();
        let gd : Obj.t ref = ref ((Obj.repr ((Obj.magic !ge)#getDefaultScreenDevice ()))) in ();
        (Obj.magic (((Obj.magic !gd)#getDefaultConfiguration ())))
        end
    

    method create : 'return. int * int -> 'return = fun ((width : int), (height : int)) ->
        begin
        let graphicsConfiguration : Obj.t ref = ref ((Obj.repr (self#getDefaultConfiguration ()))) in ();
        (Obj.magic (((Obj.magic !graphicsConfiguration)#createCompatibleImage (width, height, (Transparency.get_tRANSLUCENT ())))))
        end
    

    method createBufferedImageForResize : 'return. _ * int * bool -> 'return = fun (bufferedImageArray, (percent : int), (scale : bool)) ->
        begin
        let size : int ref = ref ((Array.length bufferedImageArray)) in ();
        let scaledBufferedImageArray : Obj.t ref = ref ((Obj.repr (Array.make (!size) (Obj.magic 0)))) in ();
        let bufferedImage : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        for index = 0 to !size - 1 do
            bufferedImage := Obj.repr (bufferedImageArray.(index));
            let newWidth : int ref = ref ((java_to_int (Obj.repr ((((((Obj.magic !bufferedImage)#getWidth ()) * percent) / 100)))))) in ();
            let newHeight : int ref = ref ((java_to_int (Obj.repr ((((((Obj.magic !bufferedImage)#getHeight ()) * percent) / 100)))))) in ();
            (Obj.magic !scaledBufferedImageArray).(index) <- (self#createBufferedImage ((Obj.magic !bufferedImage), !newWidth, !newHeight, scale))
        done;
        (Obj.magic ((Obj.magic !scaledBufferedImageArray)))
        end
    

    method createBufferedImage2 : 'return. _ * float * bool -> 'return = fun (bufferedImageArray, (percent : float), (scale : bool)) ->
        begin
        let size : int ref = ref ((Array.length bufferedImageArray)) in ();
        let scaledBufferedImageArray : Obj.t ref = ref ((Obj.repr (Array.make (!size) (Obj.magic 0)))) in ();
        let bufferedImage : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        for index = 0 to !size - 1 do
            bufferedImage := Obj.repr (bufferedImageArray.(index));
            let newWidth : int ref = ref ((java_to_int (Obj.repr (((((Obj.magic !bufferedImage)#getWidth ()) *. percent)))))) in ();
            let newHeight : int ref = ref ((java_to_int (Obj.repr (((((Obj.magic !bufferedImage)#getHeight ()) *. percent)))))) in ();
            (Obj.magic !scaledBufferedImageArray).(index) <- (self#createBufferedImage ((Obj.magic !bufferedImage), !newWidth, !newHeight, scale))
        done;
        (Obj.magic ((Obj.magic !scaledBufferedImageArray)))
        end
    

    method createBufferedImage3 : 'return. _ * int * int * bool -> 'return = fun (bufferedImageArray, (width : int), (height : int), (scale : bool)) ->
        begin
        let size : int ref = ref ((Array.length bufferedImageArray)) in ();
        let scaledBufferedImageArray : Obj.t ref = ref ((Obj.repr (Array.make (!size) (Obj.magic 0)))) in ();
        for index = 0 to !size - 1 do
            (Obj.magic !scaledBufferedImageArray).(index) <- (self#createBufferedImage (bufferedImageArray.(index), width, height, scale))
        done;
        (Obj.magic ((Obj.magic !scaledBufferedImageArray)))
        end
    

    method createBufferedImageForSave : 'any1 'return. 'any1 * int * int -> 'return = fun (bufferedImage, (newWidth : int), (newHeight : int)) ->
        let bufferedImage = Obj.repr bufferedImage in
        begin
        (Obj.magic ((self#createBufferedImage ((Obj.magic bufferedImage), newWidth, newHeight, true))))
        end [@@warning "-20"]
    

    method createBufferedImage : 'any1 'return. 'any1 * int * int * bool -> 'return = fun (bufferedImage, (newWidth : int), (newHeight : int), (scale : bool)) ->
        let bufferedImage = Obj.repr bufferedImage in
        begin
        (Obj.magic ((self#createBufferedImageAllowTranslate ((Obj.magic bufferedImage), newWidth, newHeight, scale, false))))
        end [@@warning "-20"]
    

    method createBufferedImageAllowTranslate : 'any1 'return. 'any1 * int * int * bool * bool -> 'return = fun (bufferedImage, (newWidth : int), (newHeight : int), (scale : bool), (allowTranslate : bool)) ->
        let bufferedImage = Obj.repr bufferedImage in
        begin
        let width : float ref = ref (((Obj.magic bufferedImage)#getWidth ())) in ();
        let height : float ref = ref (((Obj.magic bufferedImage)#getHeight ())) in ();
        let d_newWidth : float ref = ref ((float_of_int (newWidth))) in ();
        let d_newHeight : float ref = ref ((float_of_int (newHeight))) in ();
        let widthRatio : float ref = ref ((!d_newWidth /. !width)) in ();
        let heightRatio : float ref = ref ((!d_newHeight /. !height)) in ();
        let ratioX : float ref = ref (1.0) in ();
        let ratioY : float ref = ref (1.0) in ();
        if scale then begin
            ratioX := !widthRatio;
            ratioY := !heightRatio
        end;
        let affineTransform : Obj.t ref = ref ((Obj.repr (AffineTransform.getScaleInstance (!ratioX, !ratioY)))) in ();
        if ((not scale) && allowTranslate) then begin
            let dx : float ref = ref (((((float_of_int (newWidth)) -. !width)) /. 2.)) in ();
            let dy : float ref = ref (((((float_of_int (newHeight)) -. !height)) /. 2.)) in ();
            ignore ((Obj.magic !affineTransform)#translate (!dx, !dy))
        end;
        let newBufferedImage : Obj.t ref = ref ((Obj.repr (new BufferedImage.bufferedImage (newWidth, newHeight, (BufferedImage.get_tYPE_INT_ARGB_PRE ()))))) in ();
        let graphics : Obj.t ref = ref ((Obj.repr ((Obj.magic !newBufferedImage)#createGraphics ()))) in ();
        ignore ((Obj.magic !graphics)#drawRenderedImage ((Obj.magic bufferedImage), (Obj.magic !affineTransform)));
        (Obj.magic ((Obj.magic !newBufferedImage)))
        end [@@warning "-20"]
    

    method createBufferedImageWithLargerCanvas : 'any1 'return. 'any1 * int * int -> 'return = fun (bufferedImage, (newWidth : int), (newHeight : int)) ->
        let bufferedImage = Obj.repr bufferedImage in
        begin
        let width : float ref = ref (((Obj.magic bufferedImage)#getWidth ())) in ();
        let height : float ref = ref (((Obj.magic bufferedImage)#getHeight ())) in ();
        let d_newWidth : float ref = ref ((float_of_int (newWidth))) in ();
        let d_newHeight : float ref = ref ((float_of_int (newHeight))) in ();
        let widthRatio : float ref = ref ((!d_newWidth /. !width)) in ();
        let heightRatio : float ref = ref ((!d_newHeight /. !height)) in ();
        let dx2 : int ref = ref ((int_of_float ((((float_of_int (newWidth)) -. !width))))) in ();
        let dy2 : int ref = ref ((int_of_float ((((float_of_int (newHeight)) -. !height))))) in ();
        let dx : int ref = ref ((!dx2 / 2)) in ();
        let dy : int ref = ref ((!dy2 / 2)) in ();
        let dx4 : int ref = ref ((!dx2 / 4)) in ();
        let dy4 : int ref = ref ((!dy2 / 4)) in ();
        let newBufferedImage : Obj.t ref = ref ((Obj.repr (new BufferedImage.bufferedImage (newWidth, newHeight, (BufferedImage.get_tYPE_INT_ARGB_PRE ()))))) in ();
        let graphics : Obj.t ref = ref ((Obj.repr ((Obj.magic !newBufferedImage)#createGraphics ()))) in ();
        ignore ((Obj.magic !graphics)#drawImage ((Obj.magic bufferedImage), !dx4, !dy4, (Obj.magic 0)));
        (Obj.magic ((Obj.magic !newBufferedImage)))
        end [@@warning "-20"]
    

    method convertToBufferedImage : 'any1 'return. 'any1 -> 'return = fun (toolkitImage) ->
        let toolkitImage = Obj.repr toolkitImage in
        try
        begin
        if ((Obj.magic toolkitImage) == (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr ((Obj.magic 0))))
        end;
        let bufferedImage : Obj.t ref = ref ((Obj.repr (new BufferedImage.bufferedImage (((Obj.magic toolkitImage)#getWidth ((Obj.magic 0))), ((Obj.magic toolkitImage)#getHeight ((Obj.magic 0))), (BufferedImage.get_tYPE_INT_ARGB ()))))) in ();
        let g2d : Obj.t ref = ref ((Obj.repr ((Obj.magic !bufferedImage)#createGraphics ()))) in ();
        ignore ((Obj.magic !g2d)#drawImage ((Obj.magic toolkitImage), 0, 0, (Obj.magic 0)));
        ignore ((Obj.magic !g2d)#dispose ());
        (Obj.magic ((Obj.magic !bufferedImage)))
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method getBufferedImage : 'any1 'return. 'any1 -> 'return = fun (image) ->
        let image = Obj.repr image in
        begin
        let bufferedImage : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        if ((Obj.magic image)#isMutable ()) then begin
            let j2seImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic image)))) in ();
            bufferedImage := Obj.repr ((Obj.magic ((Obj.magic !j2seImage)#getImage ())))
        end else begin
            let j2seImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic image)))) in ();
            bufferedImage := Obj.repr ((Obj.magic ((Obj.magic !j2seImage)#getImage ())))
        end;
        (Obj.magic ((Obj.magic !bufferedImage)))
        end [@@warning "-20"]
    

    method toString : 'any1. 'any1 -> string = fun (bufferedImage) ->
        let bufferedImage = Obj.repr bufferedImage in
        begin
        let commonLabels : CommonLabels.commonLabels ref = ref (((CommonLabels.getInstance ()) :> CommonLabels.commonLabels)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (" BufferedImage -"));
        ignore (!stringBuffer#append (!commonLabels#wIDTH_LABEL));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((Obj.magic bufferedImage)#getWidth ()))))));
        ignore (!stringBuffer#append (!commonLabels#hEIGHT_LABEL));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((Obj.magic bufferedImage)#getHeight ()))))));
        ignore (!stringBuffer#append (" Type: "));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((Obj.magic bufferedImage)#getType ()))))));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-20"]

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        commonSeps <- ((CommonSeps.getInstance ()) :> CommonSeps.commonSeps);
        iIOIMAGE_POOL_NAME <- "IIOIMAGE_POOL_NAME";
        cREATE_BUFFERED_IMAGE <- "createBufferedImage";
        ();
        ()
      end
  end
let () = java_register_constructor "ImageUtil" (fun arguments -> Obj.repr (new imageUtil (Obj.obj arguments)))

let instance = (new imageUtil ())
let get_instance () = instance
let () = java_register_static "ImageUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ImageUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


