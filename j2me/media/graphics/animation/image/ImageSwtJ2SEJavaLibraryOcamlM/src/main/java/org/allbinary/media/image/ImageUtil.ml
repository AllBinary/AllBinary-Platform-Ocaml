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
(* import org.eclipse.swt.SWT *)
(* import org.eclipse.swt.widgets.Canvas *)
(* import org.eclipse.swt.widgets.Composite *)
(* import org.eclipse.swt.graphics.GC *)
(* import org.eclipse.swt.graphics.ImageData *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonLabels *)
(* import org.eclipse.swt.events.PaintEvent *)
(* import org.eclipse.swt.events.PaintListener *)
(* import org.eclipse.swt.graphics.Transform *)
(* import org.eclipse.swt.widgets.Display *)
(* import org.microemu.app.BareMain *)

class imageUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
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
    
    

    method create : 'return. int * int -> 'return = fun ((width : int), (height : int)) ->
        begin
        let display : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "BareMain.get_shell" (Obj.repr ())))#getDisplay ()))) in ();
        (Obj.magic ((Obj.obj (java_new "Image" (Obj.repr ((Obj.magic !display), width, height))))))
        end
    

    method createBufferedImage : 'return. _ * int * bool -> 'return = fun (bufferedImageArray, (percent : int), (scale : bool)) ->
        begin
        let size : int ref = ref ((Array.length bufferedImageArray)) in ();
        let scaledBufferedImageArray : Obj.t ref = ref ((Obj.repr (Array.make (!size) (Obj.magic 0)))) in ();
        let bufferedImage : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let imageData : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        for index = 0 to !size - 1 do
            bufferedImage := Obj.repr (bufferedImageArray.(index));
            imageData := Obj.repr (((Obj.magic !bufferedImage)#getImageData ()));
            let newWidth : int ref = ref ((java_to_int (Obj.repr (((((Obj.magic !imageData)#width * percent) / 100)))))) in ();
            let newHeight : int ref = ref ((java_to_int (Obj.repr (((((Obj.magic !imageData)#height * percent) / 100)))))) in ();
            (Obj.magic !scaledBufferedImageArray).(index) <- (self#createBufferedImage5 ((Obj.magic !bufferedImage), !newWidth, !newHeight, scale))
        done;
        (Obj.magic ((Obj.magic !scaledBufferedImageArray)))
        end
    

    method createBufferedImage2 : 'return. _ * float * bool -> 'return = fun (bufferedImageArray, (percent : float), (scale : bool)) ->
        begin
        let size : int ref = ref ((Array.length bufferedImageArray)) in ();
        let scaledBufferedImageArray : Obj.t ref = ref ((Obj.repr (Array.make (!size) (Obj.magic 0)))) in ();
        let bufferedImage : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let imageData : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        for index = 0 to !size - 1 do
            bufferedImage := Obj.repr (bufferedImageArray.(index));
            imageData := Obj.repr (((Obj.magic !bufferedImage)#getImageData ()));
            let newWidth : int ref = ref ((java_to_int (Obj.repr ((((Obj.magic !imageData)#width *. percent)))))) in ();
            let newHeight : int ref = ref ((java_to_int (Obj.repr ((((Obj.magic !imageData)#height *. percent)))))) in ();
            (Obj.magic !scaledBufferedImageArray).(index) <- (self#createBufferedImage5 ((Obj.magic !bufferedImage), !newWidth, !newHeight, scale))
        done;
        (Obj.magic ((Obj.magic !scaledBufferedImageArray)))
        end
    

    method createBufferedImage3 : 'return. _ * int * int * bool -> 'return = fun (bufferedImageArray, (width : int), (height : int), (scale : bool)) ->
        begin
        let size : int ref = ref ((Array.length bufferedImageArray)) in ();
        let scaledBufferedImageArray : Obj.t ref = ref ((Obj.repr (Array.make (!size) (Obj.magic 0)))) in ();
        for index = 0 to !size - 1 do
            (Obj.magic !scaledBufferedImageArray).(index) <- (self#createBufferedImage5 (bufferedImageArray.(index), width, height, scale))
        done;
        (Obj.magic ((Obj.magic !scaledBufferedImageArray)))
        end
    

    method createBufferedImage4 : 'any1 'return. 'any1 * int * int -> 'return = fun (bufferedImage, (newWidth : int), (newHeight : int)) ->
        let bufferedImage = Obj.repr bufferedImage in
        begin
        (Obj.magic ((self#createBufferedImage5 ((Obj.magic bufferedImage), newWidth, newHeight, true))))
        end [@@warning "-20"]
    

    method createBufferedImage5 : 'any1 'return. 'any1 * int * int * bool -> 'return = fun (bufferedImage, (newWidth : int), (newHeight : int), (scale : bool)) ->
        let bufferedImage = Obj.repr bufferedImage in
        begin
        (Obj.magic ((self#createBufferedImage6 ((Obj.magic bufferedImage), newWidth, newHeight, scale, false))))
        end [@@warning "-20"]
    

    method createBufferedImage6 : 'any1 'return. 'any1 * int * int * bool * bool -> 'return = fun (bufferedImage, (newWidth : int), (newHeight : int), (scale : bool), (allowTranslate : bool)) ->
        let bufferedImage = Obj.repr bufferedImage in
        begin
        let imageData : Obj.t ref = ref ((Obj.repr ((Obj.magic bufferedImage)#getImageData ()))) in ();
        let width : float ref = ref ((Obj.magic !imageData)#width) in ();
        let height : float ref = ref ((Obj.magic !imageData)#height) in ();
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
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((((((((((((new StringMaker.stringMaker ())#appendfloat (!width))#append (commonSeps#fORWARD_SLASH))#appendfloat (!height))#append (commonSeps#cOLON))#appendint (newWidth))#append (commonSeps#fORWARD_SLASH))#appendint (newHeight))#append (commonSeps#cOLON))#appendfloat (!widthRatio))#append (commonSeps#fORWARD_SLASH))#appendfloat (!heightRatio)))), self, cREATE_BUFFERED_IMAGE));
        let dx : float ref = ref (0.) in ();
        let dy : float ref = ref (0.) in ();
        if ((not scale) && allowTranslate) then begin
            dx := ((((float_of_int (newWidth)) -. !width)) /. 2.);
            dy := ((((float_of_int (newHeight)) -. !height)) /. 2.);
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append ("Translate dx: "))#appendfloat (!dx))#append (" dy: "))#appendfloat (!dy)))), self, cREATE_BUFFERED_IMAGE))
        end;
        let newBufferedImage : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "Image" (Obj.repr (((Obj.magic (java_call_static "BareMain.get_shell" (Obj.repr ())))#getDisplay ()), newWidth, newHeight)))))) in ();
        let gc : Obj.t ref = ref ((Obj.repr (new GC.gC ((Obj.magic !newBufferedImage))))) in ();
        let affineTransform : Obj.t ref = ref ((Obj.repr (new Transform.transform (((Obj.magic !gc)#getDevice ()))))) in ();
        ignore ((Obj.magic !affineTransform)#scale (!ratioX, !ratioY));
        ignore ((Obj.magic !affineTransform)#translate (!dx, !dy));
        ignore ((Obj.magic !gc)#setTransform ((Obj.magic !affineTransform)));
        ignore ((Obj.magic !gc)#setAntialias ((SWT.get_oN ())));
        ignore ((Obj.magic !gc)#setInterpolation ((SWT.get_hIGH ())));
        ignore ((Obj.magic !gc)#drawImage ((Obj.magic bufferedImage), 0, 0, ((Obj.magic bufferedImage)#getBounds ())#width, ((Obj.magic bufferedImage)#getBounds ())#height, 0, 0, newWidth, newHeight));
        ignore ((Obj.magic !gc)#dispose ());
        (Obj.magic ((Obj.magic !newBufferedImage)))
        end [@@warning "-20"]
    

    method drawTransformedImage : 'any1 'any2 'return. 'any1 * 'any2 * int * int * int * int -> 'return = fun (image, parent, (dx : int), (dy : int), (width : int), (height : int)) ->
        let image = Obj.repr image in
        let parent = Obj.repr parent in
        begin
        let imageCanvas : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "Canvas" (Obj.repr ((Obj.magic parent), (SWT.get_nONE ()))))))) in ();
        ignore ((Obj.magic !imageCanvas)#addPaintListener ((object (self)
            inherit PaintListener.paintListener () as super
            

            method paintControl : 'any1. 'any1 -> unit = fun (event) ->
                let event = Obj.repr event in
                begin
                let gc : Obj.t ref = ref ((Obj.repr (Obj.magic event)#gc)) in ();
                let affineTransform : Obj.t ref = ref ((Obj.repr (new Transform.transform (((Obj.magic !gc)#getDevice ()))))) in ();
                ignore ((Obj.magic !affineTransform)#translate (!dx, !dy));
                ignore ((Obj.magic !gc)#setAntialias ((SWT.get_oN ())));
                ignore ((Obj.magic !gc)#setInterpolation ((SWT.get_hIGH ())));
                ignore ((Obj.magic !gc)#drawImage (!image, 0, 0, (!image#getBounds ())#width, (!image#getBounds ())#height, 0, 0, !width, !height))
                end [@@warning "-20"]
        end)));
        (Obj.magic ((Obj.magic !imageCanvas)))
        end [@@warning "-20"]
    

    method toString : 'any1. 'any1 -> string = fun (bufferedImage) ->
        let bufferedImage = Obj.repr bufferedImage in
        begin
        let commonLabels : CommonLabels.commonLabels ref = ref (((CommonLabels.getInstance ()) :> CommonLabels.commonLabels)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let imageData : Obj.t ref = ref ((Obj.repr ((Obj.magic bufferedImage)#getImageData ()))) in ();
        ignore (!stringBuffer#append (" org.eclipse.swt.graphics.Image: "));
        ignore (!stringBuffer#append (!commonLabels#wIDTH_LABEL));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr ((Obj.magic !imageData)#width)))));
        ignore (!stringBuffer#append (!commonLabels#hEIGHT_LABEL));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr ((Obj.magic !imageData)#height)))));
        ignore (!stringBuffer#append (" Type: "));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr ((Obj.magic !imageData)#type_)))));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        commonSeps <- ((CommonSeps.getInstance ()) :> CommonSeps.commonSeps);
        iIOIMAGE_POOL_NAME <- "IIOIMAGE_POOL_NAME";
        cREATE_BUFFERED_IMAGE <- "createBufferedImage";
        ();
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#cONSTRUCTOR))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#cONSTRUCTOR, e))
        end)
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageUtil" (fun arguments -> Obj.repr (new imageUtil (Obj.obj arguments)))

let instance = (new imageUtil ())
let get_instance () = instance
let () = java_register_static "ImageUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ImageUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


