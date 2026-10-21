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
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.graphics.Anchor *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.microemu.device.playn.PlaynImage *)
(* import org.microemu.device.ResourceCallbackStrings *)
(* import playn.core.Callback *)
(* import playn.core.Canvas *)
(* import playn.core.CoreImage *)
(* import playn.core.ImageImpl *)
(* import playn.html.HTMLPlaynUtil *)

class imageModifierUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable resourceCallbackStrings : Obj.t = Obj.repr 0
    method resourceCallbackStrings : 'r. 'r = Obj.magic resourceCallbackStrings
    method set_resourceCallbackStrings : 'v. 'v -> unit = fun value' -> resourceCallbackStrings <- Obj.repr value'
    val mutable playnUtil : Obj.t = Obj.repr 0
    method playnUtil : 'r. 'r = Obj.magic playnUtil
    method set_playnUtil : 'v. 'v -> unit = fun value' -> playnUtil <- Obj.repr value'
    val mutable alphaArray : bool array = (Obj.magic 0)
    method alphaArray = alphaArray
    method set_alphaArray value' = alphaArray <- value'
    

    method setColor : 'any1 'any2 'any4. 'any1 * 'any2 * int * 'any4 -> unit = fun (_unusedOriginalImage, _image, (_imageIndex : int), _basicColor) ->
        begin
        ()
        end [@@warning "-20"]
    

    method changeColor : 'any1 'any2 'any4. 'any1 * 'any2 * int * 'any4 -> unit = fun (_unusedOriginalImage, _image, (_imageIndex : int), _basicColor) ->
        begin
        ()
        end [@@warning "-20"]
    

    method setAlpha : 'any1 'any2. 'any1 * 'any2 * int * int -> unit = fun (originalImage, image, (imageIndex : int), (alpha : int)) ->
        let originalImage = Obj.repr originalImage in
        let image = Obj.repr image in
        begin
        let alphaF : float ref = ref ((float_of_int (alpha))) in ();
        let alphaFloat : float ref = ref ((!alphaF /. 255.)) in ();
        (self#setAlphaF ((Obj.magic originalImage), (Obj.magic image), imageIndex, !alphaFloat))
        end [@@warning "-20"]
    

    method setAlphaF : 'any1 'any2. 'any1 * 'any2 * int * float -> unit = fun (originalImage, image, (imageIndex : int), (alpha : float)) ->
        let originalImage = Obj.repr originalImage in
        let image = Obj.repr image in
        begin
        if alphaArray.(imageIndex) then begin
            alphaArray.(imageIndex) <- false;
            (self#setAlpha2 ((Obj.magic originalImage), (Obj.magic image), imageIndex, alpha))
        end
        end [@@warning "-20"]
    

    method setAlpha2 : 'any1 'any2. 'any1 * 'any2 * int * float -> unit = fun (originalImage, image, (_imageIndex : int), (alpha : float)) ->
        let originalImage = Obj.repr originalImage in
        let image = Obj.repr image in
        begin
        let htmlImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic image)))) in ();
        let canvasImage : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !htmlImage)#getImage ())))) in ();
        let originalPlaynImage : Obj.t ref = ref ((Obj.repr (Obj.magic (((Obj.magic (Obj.magic originalImage)))#getImage ())))) in ();
        let canvas : Obj.t ref = ref ((Obj.repr ((Obj.magic playnUtil)#getCanvas ((Obj.magic !canvasImage))))) in ();
        ignore ((Obj.magic !canvas)#clear ());
        ignore ((Obj.magic !canvas)#setAlpha (alpha));
        ignore ((Obj.magic !canvas)#draw ((Obj.magic !originalPlaynImage), 0, 0))
        end [@@warning "-20"]
    

    method setAlpha3 : 'any1. 'any1 * float -> unit = fun (image, (alpha : float)) ->
        let image = Obj.repr image in
        begin
        let alphaF : float ref = ref (alpha) in ();
        let alphaFloat : float ref = ref ((!alphaF /. 255.)) in ();
        let htmlImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic image)))) in ();
        let canvasImage : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !htmlImage)#getImage ())))) in ();
        let canvas : Obj.t ref = ref ((Obj.repr ((Obj.magic playnUtil)#getCanvas ((Obj.magic !canvasImage))))) in ();
        ignore ((Obj.magic !canvas)#setAlpha (!alphaFloat))
        end [@@warning "-20"]
    

    method getImageArray : 'return. _ -> 'return = fun (originalImageArray) ->
        begin
        let size : int ref = ref ((Array.length originalImageArray)) in ();
        alphaArray <- (Array.make (!size) false);
        let imageArray : Obj.t ref = ref ((Obj.repr (Array.make (!size) (Obj.magic 0)))) in ();
        for index = 0 to !size - 1 do
            (Obj.magic !imageArray).(index) <- originalImageArray.(index);
            (self#handleImage ((Obj.magic !imageArray), index, originalImageArray.(index)))
        done;
        (Obj.magic ((Obj.magic !imageArray)))
        end
    

    method handleImage : 'any3. _ * int * 'any3 -> unit = fun (imageArray, (index : int), image) ->
        let image = Obj.repr image in
        begin
        let image3 : Obj.t ref = ref ((Obj.repr (Obj.magic (((Obj.magic (Obj.magic image)))#getImage ())))) in ();
        if ((Obj.magic !image3) != (Obj.magic 0)) then begin
            if ((((Obj.magic !image3)#isReady ()) || ((((Obj.magic !image3)#width ()) + ((Obj.magic !image3)#height ())) <= 0)) || (((Obj.magic image)#getName ()) = (Obj.magic resourceCallbackStrings)#fROM_DATA)) then begin
                (self#copy (imageArray, index, (Obj.magic image), (Obj.magic !image3)))
            end else begin
                let callback : Obj.t ref = ref ((Obj.repr (object (self)
                    inherit Callback.callback () as super
                    

                    method onSuccess : 'any1. 'any1 -> unit = fun (_resource) ->
                        begin
                        let logUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
                        ignore ((Obj.magic !logUtil_arg)#putF ((java_string_of (Obj.repr ((Obj.magic resourceCallbackStrings)#dONE)) ^ (!image#getName ())), self, (Obj.magic resourceCallbackStrings)#hANDLE_IMAGE));
                        (self#copy (!imageArray, !index, !image, !image3))
                        end
                    

                    method onFailure ((e : exn)) : unit =
                        begin
                        let logUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
                        ignore ((Obj.magic !logUtil_arg)#put ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (commonStrings#eXCEPTION_LABEL))#append ((Obj.magic resourceCallbackStrings)#eRROR))#append ((!image#getName ()))))), self, (Obj.magic resourceCallbackStrings)#hANDLE_IMAGE, e))
                        end
                end))) in ();
                ignore ((Obj.magic !image3)#addCallback ((Obj.magic !callback)))
            end
        end else begin
            ignore ((Obj.magic logUtil)#putF (((Obj.magic resourceCallbackStrings)#nULL + ((Obj.magic image)#isMutable ())), self, (Obj.magic resourceCallbackStrings)#hANDLE_IMAGE))
        end
        end [@@warning "-20"]
    

    method copy : 'any3 'any4. _ * int * 'any3 * 'any4 -> unit = fun (imageArray, (index : int), image, image3) ->
        let image = Obj.repr image in
        let image3 = Obj.repr image3 in
        begin
        (try
            let image2 : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "Image.createImageWH" (Obj.repr ((java_to_int (Obj.repr (((Obj.magic image3)#width ())))), (java_to_int (Obj.repr (((Obj.magic image3)#height ())))))))))) in ();
            let graphics : Obj.t ref = ref ((Obj.repr ((Obj.magic !image2)#getGraphics ()))) in ();
            ignore ((Obj.magic !graphics)#drawImage ((Obj.magic image), 0, 0, (Anchor.get_tOP_LEFT ())));
            imageArray.(index) <- (Obj.magic !image2)
        with e -> begin
            ignore ((Obj.magic logUtil)#putF ((commonStrings#eXCEPTION_LABEL + (Obj.magic resourceCallbackStrings)#dONE), self, (Obj.magic resourceCallbackStrings)#hANDLE_IMAGE))
        end)
        end [@@warning "-20"]
    

    method reset () : unit =
        begin
        let size : int ref = ref ((Array.length alphaArray)) in ();
        for index = 0 to !size - 1 do
            alphaArray.(index) <- true
        done
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        resourceCallbackStrings <- (Obj.repr (ResourceCallbackStrings.getInstance ()));
        playnUtil <- (Obj.repr (HTMLPlaynUtil.getInstance ()));
        alphaArray <- (Obj.magic 0);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageModifierUtil" (fun arguments -> Obj.repr (new imageModifierUtil (Obj.obj arguments)))

let getInstanceOrCreate () =
        begin
        (new imageModifierUtil ())
        end
let () = java_register_static "ImageModifierUtil.getInstanceOrCreate" (fun arguments -> Obj.repr (getInstanceOrCreate (Obj.obj arguments)))


