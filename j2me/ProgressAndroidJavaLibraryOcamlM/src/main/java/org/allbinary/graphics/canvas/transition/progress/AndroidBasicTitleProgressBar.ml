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
(* package org.allbinary.graphics.canvas.transition.progress *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.Image *)
(* import javax.microedition.lcdui.NullImage *)
(* import android.app.Activity *)
(* import org.allbinary.AndroidUtil *)
(* import org.allbinary.image.GameFeatureImageCacheFactory *)
(* import org.allbinary.image.PreResourceImageUtil *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.java.exception.ExceptionUtil *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.NullAnimationFactory *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.MainFeatureFactory *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.displayable.event.DisplayChangeEvent *)
(* import org.allbinary.graphics.displayable.event.DisplayChangeEventHandler *)
(* import org.allbinary.graphics.displayable.event.DisplayChangeEventListener *)
(* import org.allbinary.image.ImageCacheFactory *)
(* import org.allbinary.media.image.ImageScaleUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.animation.image.ImageAnimation *)
(* import org.allbinary.data.resource.ResourceUtil *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.thread.ARunnable *)
(* import org.allbinary.thread.NullRunnable *)

let rESOURCE : string = "ProgressImage"
let get_rESOURCE () = rESOURCE
let () = java_register_static "AndroidBasicTitleProgressBar.get_rESOURCE" (fun _ -> Obj.repr (get_rESOURCE ()))
let background : int ref = ref (0)
let get_background () = !background
let set_background value' = background := value'
let () = java_register_static "AndroidBasicTitleProgressBar.get_background" (fun _ -> Obj.repr (get_background ()))

let setBackgroundResource ((background_arg : int)) : unit =
        begin
        background := background_arg
        end

let () = java_register_static "AndroidBasicTitleProgressBar.setBackgroundResource" (fun arguments -> Obj.repr (setBackgroundResource (Obj.obj arguments)))
class androidBasicTitleProgressBar ((title : string), (backgroundBasicColor : BasicColor.basicColor), (foregroundBasicColor : BasicColor.basicColor)) =
  object (self)
    inherit ProgressCanvas.progressCanvas (title, backgroundBasicColor, foregroundBasicColor) as super
    val mutable showTitleProgressBarRunnable : ARunnable.aRunnable = (Obj.magic 0)
    method showTitleProgressBarRunnable = showTitleProgressBarRunnable
    method set_showTitleProgressBarRunnable value' = showTitleProgressBarRunnable <- value'
    val mutable dismissTitleProgressBarRunnable : ARunnable.aRunnable = (Obj.magic 0)
    method dismissTitleProgressBarRunnable = dismissTitleProgressBarRunnable
    method set_dismissTitleProgressBarRunnable value' = dismissTitleProgressBarRunnable <- value'
    val mutable titleProgressDialogPortionSetProgressRunnable : ARunnable.aRunnable = (Obj.magic 0)
    method titleProgressDialogPortionSetProgressRunnable = titleProgressDialogPortionSetProgressRunnable
    method set_titleProgressDialogPortionSetProgressRunnable value' = titleProgressDialogPortionSetProgressRunnable <- value'
    val mutable titleProgressDialogSetProgressRunnable : ARunnable.aRunnable = (Obj.magic 0)
    method titleProgressDialogSetProgressRunnable = titleProgressDialogSetProgressRunnable
    method set_titleProgressDialogSetProgressRunnable value' = titleProgressDialogSetProgressRunnable <- value'
    val mutable midletActivity : Obj.t = Obj.repr 0
    method midletActivity : 'r. 'r = Obj.magic midletActivity
    method set_midletActivity : 'v. 'v -> unit = fun value' -> midletActivity <- Obj.repr value'
    val mutable portion : int = 0
    method portion = portion
    method set_portion value' = portion <- value'
    val mutable iMAGE : Obj.t = Obj.repr 0
    method iMAGE : 'r. 'r = Obj.magic iMAGE
    method set_iMAGE : 'v. 'v -> unit = fun value' -> iMAGE <- Obj.repr value'
    val mutable image : Obj.t = Obj.repr 0
    method image : 'r. 'r = Obj.magic image
    method set_image : 'v. 'v -> unit = fun value' -> image <- Obj.repr value'
    val mutable animation : Obj.t = Obj.repr 0
    method animation : 'r. 'r = Obj.magic animation
    method set_animation : 'v. 'v -> unit = fun value' -> animation <- Obj.repr value'
    
    

    method init () : unit =
        begin
        (try
            if (!background != 0) then begin
                ignore ((Obj.magic (java_call_static "ResourceUtil.getInstance" (Obj.repr ())))#addResource (rESOURCE, (Obj.obj (java_new "Integer" (Obj.repr (!background))))));
                ignore (GameFeatureImageCacheFactory.init ());
                image <- Obj.repr (((ImageCacheFactory.getInstance ())#getWithKey (rESOURCE)))
            end
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#commonStrings)#iNIT, e))
        end)
        end [@@warning "-7"]
    

    method initActivity : 'any1. 'any1 -> unit = fun (activity) ->
        let activity = Obj.repr activity in
        begin
        (try
            if ((Obj.repr (Obj.magic midletActivity)) != (Obj.repr (Obj.magic activity))) then begin
                midletActivity <- Obj.repr ((Obj.magic activity));
                showTitleProgressBarRunnable <- (new ShowTitleProgressBarRunnable.showTitleProgressBarRunnable ((Obj.magic midletActivity), self));
                dismissTitleProgressBarRunnable <- (new DismissTitleProgressBarRunnable.dismissTitleProgressBarRunnable ((Obj.magic midletActivity), self));
                titleProgressDialogSetProgressRunnable <- (new TitleProgressBarSetProgressRunnable.titleProgressBarSetProgressRunnable ((Obj.magic midletActivity), self));
                titleProgressDialogPortionSetProgressRunnable <- (Obj.obj (java_new "TitleProgressBarPortionSetProgressRunnable" (Obj.repr ((Obj.magic midletActivity), self))));
                (self#loadProgressImages ())
            end;
            (self#updateCurrent ())
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#commonStrings)#iNIT, e))
        end)
        end [@@warning "-7-20"]
    

    method updateCurrent () : unit =
        begin
        (try
            if (not (self#isBackground ())) then begin
                animation <- Obj.repr (((NullAnimationFactory.getFactoryInstance ())#getInstance (0)))
            end else if (!background != 0) then begin
                let displayInfo : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
                let currentImage : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
                if (!displayInfo#isPortrait ()) then begin
                    currentImage := Obj.repr ((self#getImage (0)))
                end else begin
                    currentImage := Obj.repr ((self#getImage (2)))
                end;
                if ((Obj.magic !currentImage) == (Obj.magic 0)) then begin
                    animation <- Obj.repr (((NullAnimationFactory.getFactoryInstance ())#getInstance (0)))
                end else begin
                    animation <- Obj.repr ((new ImageAnimation.imageAnimation ((Obj.magic !currentImage), (AnimationBehavior.getInstance ()))))
                end
            end
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#commonStrings)#uPDATE, e))
        end)
        end [@@warning "-7"]
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, self))
        end [@@warning "-7-20"]
    

    method onDisplayChangeEvent : 'any1. 'any1 -> unit = fun (_displayChangeEvent) ->
        begin
        (try
            (self#loadProgressImages ());
            (self#updateCurrent ())
        with e -> begin
            ignore ((self#logUtil)#putF (((self#commonStrings)#eXCEPTION_LABEL + ((Obj.magic (java_call_static "ExceptionUtil.getInstance" (Obj.repr ())))#getStackTrace (e))), self, (self#canvasStrings)#oN_DISPLAY_CHANGE_EVENT));
            animation <- Obj.repr (((NullAnimationFactory.getFactoryInstance ())#getInstance (0)))
        end)
        end [@@warning "-7-20"]
    

    method loadProgressImages () : unit =
        begin
        (try
            let displayInfo : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
            let lastWidth : int ref = ref ((!displayInfo#getLastWidth ())) in ();
            let lastHeight : int ref = ref ((!displayInfo#getLastHeight ())) in ();
            if (!displayInfo#isPortraitWH (!lastWidth, !lastHeight)) then begin
                (self#setImages (0, !lastWidth, !lastHeight))
            end else begin
                (self#setImages (2, !lastWidth, !lastHeight))
            end
        with e -> begin
            ignore ((self#logUtil)#putF (("IllegalArgumentException " ^ java_string_of (Obj.repr (((Obj.magic (java_call_static "ExceptionUtil.getInstance" (Obj.repr ())))#getStackTrace (e))))), self, "loadProgressImages"));
            animation <- Obj.repr (((NullAnimationFactory.getFactoryInstance ())#getInstance (0)))
        end)
        end [@@warning "-7"]
    

    method isInitialized () : bool =
        try
        begin
        if ((Obj.repr (Obj.magic midletActivity)) != (Obj.repr (Obj.magic (java_call_static "AndroidUtil.get_nULL_ACTIVITY" (Obj.repr ()))))) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method start () : unit =
        begin
        (try
            ignore ((self#logUtil)#putF ((self#commonStrings)#sTART, self, (self#commonStrings)#sTART_METHOD_NAME));
            ignore (super#start ());
            ignore ((Obj.magic midletActivity)#runOnUiThread (showTitleProgressBarRunnable))
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#commonStrings)#sTART_METHOD_NAME, e))
        end)
        end [@@warning "-7"]
    

    method end_ () : unit =
        begin
        (try
            ignore ((self#logUtil)#putF ((self#commonStrings)#sTART, self, (self#commonStrings)#eND_METHOD_NAME));
            ignore ((Obj.magic midletActivity)#runOnUiThread (dismissTitleProgressBarRunnable));
            ignore (super#end_ ())
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#commonStrings)#eND_METHOD_NAME, e))
        end)
        end [@@warning "-7"]
    

    method addEarlyPortion ((value : int), (text : string), (index : int)) : unit =
        begin
        (try
            portion <- value;
            ignore (super#addEarlyPortion (value, text, index));
            if ((Obj.repr (Obj.magic midletActivity)) != (Obj.repr (Obj.magic (java_call_static "AndroidUtil.get_nULL_ACTIVITY" (Obj.repr ()))))) then begin
                ignore ((Obj.magic midletActivity)#runOnUiThread (titleProgressDialogPortionSetProgressRunnable))
            end
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#aDD_PORTION), e))
        end)
        end [@@warning "-7"]
    

    method addPortion ((value : int), (text : string), (index : int)) : unit =
        begin
        (try
            portion <- value;
            ignore (super#addPortion (value, text, index));
            ignore ((Obj.magic midletActivity)#runOnUiThread (titleProgressDialogPortionSetProgressRunnable))
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#aDD_PORTION), e))
        end)
        end [@@warning "-7"]
    

    method addNormalPortion ((value : int), (text : string)) : unit =
        begin
        (try
            portion <- value;
            ignore (super#addNormalPortion (value, text));
            ignore ((Obj.magic midletActivity)#runOnUiThread (titleProgressDialogPortionSetProgressRunnable))
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#aDD_PORTION), e))
        end)
        end [@@warning "-7"]
    

    method setValue ((value : int)) : unit =
        begin
        (try
            ignore (super#setValue (value));
            ignore ((Obj.magic midletActivity)#runOnUiThread (titleProgressDialogSetProgressRunnable))
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, "setValue", e))
        end)
        end [@@warning "-7"]
    

    method waitUntilDisplayed () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method setImages ((index : int), (lastWidth : int), (lastHeight : int)) : unit =
        begin
        let image_arg : Obj.t ref = ref ((Obj.repr (Obj.magic image))) in ();
        if ((Obj.repr (Obj.magic !image_arg)) != (Obj.repr (NullImage.get_nULL_IMAGE ()))) then begin
            if ((Features.getInstance ())#isFeature ((MainFeatureFactory.getInstance ())#fULL_SCREEN)) then begin
                if ((Obj.repr (Obj.magic iMAGE).(index)) == (Obj.repr (NullImage.get_nULL_IMAGE ()))) then begin
                    (Obj.magic iMAGE).(index) <- ((Obj.magic (java_call_static "ImageScaleUtil.getInstance" (Obj.repr ())))#createImage2 ((ImageCacheFactory.getInstance ()), (Obj.magic !image_arg), (float_of_int (lastWidth)), (java_to_float (Obj.repr (((Obj.magic !image_arg)#getWidth ())))), ((float_of_int (lastHeight)) -. 20.), (java_to_float (Obj.repr (((Obj.magic !image_arg)#getHeight ())))), false))
                end
            end else begin
                let nextIndex : int ref = ref ((index + 1)) in ();
                if ((Obj.repr (Obj.magic iMAGE).(!nextIndex)) == (Obj.repr (NullImage.get_nULL_IMAGE ()))) then begin
                    (Obj.magic iMAGE).(!nextIndex) <- ((Obj.magic (java_call_static "ImageScaleUtil.getInstance" (Obj.repr ())))#createImage2 ((ImageCacheFactory.getInstance ()), (Obj.magic !image_arg), (float_of_int (lastWidth)), (java_to_float (Obj.repr (((Obj.magic !image_arg)#getWidth ())))), ((float_of_int (lastHeight)) -. 28.), (java_to_float (Obj.repr (((Obj.magic !image_arg)#getHeight ())))), false))
                end
            end
        end
        end [@@warning "-7"]
    

    method initOpenGL : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ignore ((self#logUtil)#putF ((self#commonStrings)#sTART, self, (self#commonStrings)#iNIT));
        image <- Obj.repr (((GameFeatureImageCacheFactory.getInstance ())#getWithKey (rESOURCE)));
        let preResourceImageUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "PreResourceImageUtil.getInstance" (Obj.repr ()))))) in ();
        let size : int ref = ref ((Array.length (Obj.magic iMAGE))) in ();
        for index = 0 to !size - 1 do
            if ((Obj.repr (Obj.magic iMAGE).(index)) != (Obj.repr (NullImage.get_nULL_IMAGE ()))) then begin
                (Obj.magic iMAGE).(index) <- ((Obj.magic !preResourceImageUtil)#encapsulate ((Obj.magic iMAGE).(index)))
            end
        done;
        (self#updateCurrent ())
        end [@@warning "-7-20"]
    

    method update : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((self#logUtil)#putF ((self#commonStrings)#sTART, self, (self#commonStrings)#uPDATE));
        (self#initOpenGL ((Obj.magic graphics)));
        image <- Obj.repr (((GameFeatureImageCacheFactory.getInstance ())#getWithKey (rESOURCE)));
        let preResourceImageUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "PreResourceImageUtil.getInstance" (Obj.repr ()))))) in ();
        let size : int ref = ref ((Array.length (Obj.magic iMAGE))) in ();
        for index = 0 to !size - 1 do
            if ((Obj.repr (Obj.magic iMAGE).(index)) != (Obj.repr (NullImage.get_nULL_IMAGE ()))) then begin
                ignore ((Obj.magic !preResourceImageUtil)#update ((Obj.magic graphics), (Obj.magic iMAGE).(index)))
            end
        done
        end [@@warning "-7-20"]
    

    method getImage : 'return. int -> 'return = fun ((index : int)) ->
        begin
        let image_arg : Obj.t ref = ref ((Obj.repr (NullImage.get_nULL_IMAGE ()))) in ();
        if ((Features.getInstance ())#isFeature ((MainFeatureFactory.getInstance ())#fULL_SCREEN)) then begin
            image_arg := Obj.repr ((Obj.magic iMAGE).(index))
        end else begin
            image_arg := Obj.repr ((Obj.magic iMAGE).((index + 1)))
        end;
        (Obj.magic ((Obj.magic !image_arg)))
        end [@@warning "-7"]
    

    method paint2 : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        (try
            ignore ((Obj.magic animation)#paintXY ((Obj.magic graphics), 0, 20));
            ignore (super#paint2 ((Obj.magic graphics)))
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#canvasStrings)#pAINT, e))
        end)
        end [@@warning "-7-20"]
    

    method setBackground ((background_arg : bool)) : unit =
        begin
        ignore (super#setBackground (background_arg));
        (self#updateCurrent ())
        end [@@warning "-7"]
    

    method setPortion ((portion_arg : int)) : unit =
        begin
        portion <- portion_arg
        end [@@warning "-7"]
    

    method getPortion () : int =
        begin
        portion
        end [@@warning "-7"]

    initializer
      begin
        showTitleProgressBarRunnable <- ((NullRunnable.getInstance ()) :> ARunnable.aRunnable);
        dismissTitleProgressBarRunnable <- ((NullRunnable.getInstance ()) :> ARunnable.aRunnable);
        titleProgressDialogPortionSetProgressRunnable <- ((NullRunnable.getInstance ()) :> ARunnable.aRunnable);
        titleProgressDialogSetProgressRunnable <- ((NullRunnable.getInstance ()) :> ARunnable.aRunnable);
        midletActivity <- (Obj.repr (Obj.magic (java_call_static "AndroidUtil.get_nULL_ACTIVITY" (Obj.repr ()))));
        portion <- 0;
        iMAGE <- (Obj.repr (Array.make (4) (Obj.magic 0)));
        image <- (Obj.repr (NullImage.get_nULL_IMAGE ()));
        animation <- (Obj.repr ((NullAnimationFactory.getFactoryInstance ())#getInstance (0)));
        ();
        (* super(...) is the inherit clause *) ();
        (self#init ());
        ignore ((DisplayChangeEventHandler.getInstance ())#addListenerInterface (self));
        let size : int ref = ref ((Array.length (Obj.magic iMAGE))) in ();
        for index = 0 to !size - 1 do
            (Obj.magic iMAGE).(index) <- (NullImage.get_nULL_IMAGE ())
        done
      end
  end [@@warning "-20"]
let () = java_register_constructor "AndroidBasicTitleProgressBar" (fun arguments -> Obj.repr (new androidBasicTitleProgressBar (Obj.obj arguments)))


