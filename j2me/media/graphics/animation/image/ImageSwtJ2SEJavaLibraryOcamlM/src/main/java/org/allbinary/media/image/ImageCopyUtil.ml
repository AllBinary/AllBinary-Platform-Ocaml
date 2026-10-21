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
(* import org.allbinary.game.configuration.feature.GameFeatureFactory *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.opengles.OpenGLFeatureFactory *)
(* import org.allbinary.graphics.opengles.OpenGLUtil *)
(* import org.allbinary.image.opengles.OpenGLESDeviceImageTranslate *)
(* import org.allbinary.image.opengles.OpenGLESImage *)
(* import org.allbinary.image.opengles.OpenGLESImageExclusionUtil *)
(* import org.allbinary.image.opengles.OpenGLESImageProperties *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.eclipse.swt.graphics.ImageData *)
(* import org.microemu.app.ui.swt.SwtDeviceComponent *)
(* import org.microemu.device.swt.PostLoadSwtImmutableImageProcessor *)
(* import org.microemu.device.swt.PostLoadSwtMutableImageProcessor *)
(* import org.microemu.device.swt.SwtImmutableImage *)
(* import org.microemu.device.swt.SwtMutableImage *)

class imageCopyUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable gameFeatureFactory : GameFeatureFactory.gameFeatureFactory = (Obj.magic 0)
    method gameFeatureFactory = gameFeatureFactory
    method set_gameFeatureFactory value' = gameFeatureFactory <- value'
    val mutable features : Features.features = (Obj.magic 0)
    method features = features
    method set_features value' = features <- value'
    val mutable openGLFeatureFactory : OpenGLFeatureFactory.openGLFeatureFactory = (Obj.magic 0)
    method openGLFeatureFactory = openGLFeatureFactory
    method set_openGLFeatureFactory value' = openGLFeatureFactory <- value'
    val mutable openGLUtil : Obj.t = Obj.repr 0
    method openGLUtil : 'r. 'r = Obj.magic openGLUtil
    method set_openGLUtil : 'v. 'v -> unit = fun value' -> openGLUtil <- Obj.repr value'
    val mutable openGLESImageExclusionUtil : Obj.t = Obj.repr 0
    method openGLESImageExclusionUtil : 'r. 'r = Obj.magic openGLESImageExclusionUtil
    method set_openGLESImageExclusionUtil : 'v. 'v -> unit = fun value' -> openGLESImageExclusionUtil <- Obj.repr value'
    val mutable nO_COPY : string = ""
    method nO_COPY = nO_COPY
    method set_nO_COPY value' = nO_COPY <- value'
    val mutable uNABLE : string = ""
    method uNABLE = uNABLE
    method set_uNABLE value' = uNABLE <- value'
    val mutable iNFORMATION : string = ""
    method iNFORMATION = iNFORMATION
    method set_iNFORMATION value' = iNFORMATION <- value'
    val mutable lEADERBOARD : string = ""
    method lEADERBOARD = lEADERBOARD
    method set_lEADERBOARD value' = lEADERBOARD <- value'
    
    

    method createImageForRotation : 'any1 'return. 'any1 -> 'return = fun (originalImage) ->
        let originalImage = Obj.repr originalImage in
        try
        begin
        if (features#isFeature (openGLFeatureFactory#oPENGL)) then begin
            let image : Obj.t ref = ref ((Obj.repr (Obj.magic originalImage))) in ();
            image := Obj.repr (((Obj.magic openGLUtil)#addImage ((Obj.magic !image))));
            raise (Java_return (Obj.repr ((Obj.magic !image))))
        end else begin
            raise (Java_return (Obj.repr ((self#createImage ((Obj.magic originalImage))))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method createImage : 'any1 'return. 'any1 -> 'return = fun (originalImage) ->
        let originalImage = Obj.repr originalImage in
        try
        begin
        if (not (features#isFeature (gameFeatureFactory#pOST_IMAGE_LOADING_MODIFICATION))) then begin
            ignore ((Obj.magic logUtil)#putF (nO_COPY, self, commonStrings#cONSTRUCTOR));
            raise (Java_return (Obj.repr ((Obj.magic originalImage))))
        end;
        let originalImage2 : Obj.t ref = ref ((Obj.repr (Obj.magic originalImage))) in ();
        if (features#isFeature (openGLFeatureFactory#oPENGL)) then begin
            if (((Obj.magic originalImage)#getType ()) >= (Obj.magic (java_call_static "OpenGLESImage.get_tYPE" (Obj.repr ())))) then begin
                let openGLESImage : Obj.t ref = ref ((Obj.repr ((Obj.magic (Obj.magic originalImage))))) in ();
                originalImage2 := Obj.repr (((Obj.magic !openGLESImage)#openGLBitmap#getImage ()))
            end
        end;
        let image : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        if ((Obj.magic !originalImage2)#isMutable ()) then begin
            let originalMutableImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic !originalImage2)))) in ();
            image := Obj.repr ((Obj.obj (java_new "SwtMutableImage" (Obj.repr ((Obj.magic (java_call_static "SwtDeviceComponent.createImage" (Obj.repr (((Obj.magic !originalMutableImage)#image#getImageData ()))))))))))
        end else begin
            let originalImmutableImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic !originalImage2)))) in ();
            image := Obj.repr ((Obj.obj (java_new "SwtMutableImage" (Obj.repr ((Obj.magic (java_call_static "SwtDeviceComponent.createImage" (Obj.repr (((Obj.magic !originalImmutableImage)#image#getImageData ()))))))))))
        end;
        image := Obj.repr (((Obj.magic openGLUtil)#addImage ((Obj.magic !image))));
        (Obj.magic ((Obj.magic !image)))
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method createImageWH : 'any1 'return. 'any1 * int * int * bool -> 'return = fun (originalImage, (width : int), (height : int), (mutable_ : bool)) ->
        let originalImage = Obj.repr originalImage in
        try
        begin
        let originalImage2 : Obj.t ref = ref ((Obj.repr (Obj.magic originalImage))) in ();
        if (not (features#isFeature (gameFeatureFactory#pOST_IMAGE_LOADING_MODIFICATION))) then begin
            ignore ((Obj.magic logUtil)#putF (nO_COPY, self, commonStrings#cONSTRUCTOR));
            raise (Java_return (Obj.repr ((Obj.magic originalImage))))
        end;
        if (features#isFeature (openGLFeatureFactory#oPENGL)) then begin
            if ((Obj.magic openGLESImageExclusionUtil)#isCustomScaling ((Obj.magic originalImage))) then begin
                raise (Java_return (Obj.repr ((self#createImage2 ((Obj.magic originalImage), width, height, mutable_)))))
            end;
            if (((Obj.magic originalImage)#getType ()) >= (Obj.magic (java_call_static "OpenGLESImage.get_tYPE" (Obj.repr ())))) then begin
                let openGLESImage : Obj.t ref = ref ((Obj.repr ((Obj.magic (Obj.magic originalImage))))) in ();
                originalImage2 := Obj.repr (((Obj.magic !openGLESImage)#openGLBitmap#getImage ()))
            end
        end;
        let image : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        if (((Obj.magic !originalImage2)#isMutable ()) && mutable_) then begin
            let originalMutableImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic !originalImage2)))) in ();
            if (((Obj.magic !originalMutableImage)#getImage ()) != (Obj.magic 0)) then begin
                let imageData2 : Obj.t ref = ref ((Obj.repr ((Obj.magic !originalMutableImage)#image#getImageData ()))) in ();
                let imageData : Obj.t ref = ref ((Obj.repr ((Obj.magic !imageData2)#scaledTo (width, height)))) in ();
                image := Obj.repr ((Obj.obj (java_new "SwtMutableImage" (Obj.repr ((Obj.magic (java_call_static "SwtDeviceComponent.createImage" (Obj.repr ((Obj.magic !imageData))))))))))
            end else begin
                image := Obj.repr ((Obj.obj (java_new "SwtMutableImage" (Obj.repr (((Obj.magic !originalMutableImage)#getName ()), (new PostLoadSwtMutableImageProcessor.postLoadSwtMutableImageProcessor ((Obj.magic !originalMutableImage))))))))
            end
        end else begin
            let originalImmutableImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic !originalImage2)))) in ();
            if (((Obj.magic !originalImmutableImage)#getImage ()) != (Obj.magic 0)) then begin
                let imageData2 : Obj.t ref = ref ((Obj.repr ((Obj.magic !originalImmutableImage)#image#getImageData ()))) in ();
                if ((width > 0) && (height > 0)) then begin
                    let imageData : Obj.t ref = ref ((Obj.repr ((Obj.magic !imageData2)#scaledTo (width, height)))) in ();
                    image := Obj.repr ((Obj.obj (java_new "SwtImmutableImage" (Obj.repr (((Obj.magic originalImage)#getName ()), (Obj.magic (java_call_static "SwtDeviceComponent.createImage" (Obj.repr ((Obj.magic !imageData))))))))))
                end else begin
                    ignore ((Obj.magic logUtil)#putF (uNABLE, self, commonStrings#cONSTRUCTOR));
                    image := Obj.repr ((Obj.obj (java_new "SwtImmutableImage" (Obj.repr (((Obj.magic !originalImmutableImage)#getName ()), (new PostLoadSwtImmutableImageProcessor.postLoadSwtImmutableImageProcessor ((Obj.magic !originalImmutableImage))))))))
                end
            end else begin
                image := Obj.repr ((Obj.obj (java_new "SwtImmutableImage" (Obj.repr (((Obj.magic !originalImmutableImage)#getName ()), (new PostLoadSwtImmutableImageProcessor.postLoadSwtImmutableImageProcessor ((Obj.magic !originalImmutableImage))))))))
            end
        end;
        image := Obj.repr (((Obj.magic openGLUtil)#addImage ((Obj.magic !image))));
        (Obj.magic ((Obj.magic !image)))
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method createImage2 : 'any1 'return. 'any1 * int * int * bool -> 'return = fun (originalImage, (width : int), (height : int), (mutable_ : bool)) ->
        let originalImage = Obj.repr originalImage in
        try
        begin
        let originalImage2 : Obj.t ref = ref ((Obj.repr (Obj.magic originalImage))) in ();
        if (not (features#isFeature (gameFeatureFactory#pOST_IMAGE_LOADING_MODIFICATION))) then begin
            ignore ((Obj.magic logUtil)#putF (nO_COPY, self, commonStrings#cONSTRUCTOR));
            raise (Java_return (Obj.repr ((Obj.magic originalImage))))
        end;
        let image : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        if (features#isFeature (openGLFeatureFactory#oPENGL)) then begin
            let displayInfoSingleton : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
            if (((Obj.magic originalImage)#getType ()) >= (Obj.magic (java_call_static "OpenGLESImage.get_tYPE" (Obj.repr ())))) then begin
                let openGLESImage : Obj.t ref = ref ((Obj.repr ((Obj.magic (Obj.magic originalImage))))) in ();
                let openGLESImageProperties : OpenGLESImageProperties.openGLESImageProperties ref = ref (((Obj.magic !openGLESImage)#openGLESImageProperties :> OpenGLESImageProperties.openGLESImageProperties)) in ();
                let openGLWidth : int ref = ref (((Obj.magic !openGLESImage)#openGLBitmap#getWidth ())) in ();
                let openGLHeight : int ref = ref (((Obj.magic !openGLESImage)#openGLBitmap#getHeight ())) in ();
                !openGLESImageProperties#set_scaleX2 (((((float_of_int (width))) /. (float_of_int (!openGLWidth)))));
                !openGLESImageProperties#set_scaleX (!openGLESImageProperties#scaleX2);
                !openGLESImageProperties#set_scaleY2 (((((float_of_int (height))) /. (float_of_int (!openGLHeight)))));
                !openGLESImageProperties#set_scaleY (!openGLESImageProperties#scaleY2);
                !openGLESImageProperties#set_scaleX ((!openGLESImageProperties#scaleX *. 0.75));
                !openGLESImageProperties#set_scaleY ((!openGLESImageProperties#scaleY *. 0.75));
                if ((((Obj.magic originalImage)#getHeight ()) mod 2) != 0) then begin
                    !openGLESImageProperties#set_scaleX2 ((!openGLESImageProperties#scaleX2 + (1.0 /. (float_of_int (!openGLWidth)))));
                    !openGLESImageProperties#set_scaleY2 ((!openGLESImageProperties#scaleY2 + (1.0 /. (float_of_int (!openGLHeight)))))
                end;
                image := Obj.repr ((Obj.magic !openGLESImage))
            end else begin
                image := Obj.repr ((Obj.magic originalImage));
                let openGLESImage : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic openGLUtil)#addImage ((Obj.magic !image)))))) in ();
                let openGLESImageProperties : OpenGLESImageProperties.openGLESImageProperties ref = ref (((Obj.magic !openGLESImage)#openGLESImageProperties :> OpenGLESImageProperties.openGLESImageProperties)) in ();
                !openGLESImageProperties#set_scaleX2 ((java_to_float (Obj.repr (((((float_of_int (width))) /. ((Obj.magic !openGLESImage)#getWidth ())))))));
                !openGLESImageProperties#set_scaleX (!openGLESImageProperties#scaleX2);
                !openGLESImageProperties#set_scaleY2 ((java_to_float (Obj.repr (((((float_of_int (height))) /. ((Obj.magic !openGLESImage)#getHeight ())))))));
                !openGLESImageProperties#set_scaleY (!openGLESImageProperties#scaleY2);
                if (((Obj.magic !image)#getName ())#startsWith (iNFORMATION)) then begin
                    ignore ((Obj.magic !openGLESImage)#set_openGLESImageTranslate ((new OpenGLESDeviceImageTranslate.openGLESDeviceImageTranslate ())));
                    let openGLESDeviceImageTranslate : OpenGLESDeviceImageTranslate.openGLESDeviceImageTranslate ref = ref (((Obj.magic (Obj.magic !openGLESImage)#openGLESImageTranslate) :> OpenGLESDeviceImageTranslate.openGLESDeviceImageTranslate)) in ();
                    !openGLESDeviceImageTranslate#set_translateX ((((!displayInfoSingleton#getLastWidth ()) /. 1.4) / !openGLESImageProperties#scaleX));
                    !openGLESDeviceImageTranslate#set_translateY ((((!displayInfoSingleton#getLastHeight ()) / 4) / !openGLESImageProperties#scaleY));
                    !openGLESImageProperties#set_scaleX ((!openGLESImageProperties#scaleX *. 0.25));
                    !openGLESImageProperties#set_scaleY ((!openGLESImageProperties#scaleY *. 0.25))
                end else begin
                    !openGLESImageProperties#set_scaleX ((!openGLESImageProperties#scaleX *. 0.75));
                    !openGLESImageProperties#set_scaleY ((!openGLESImageProperties#scaleY *. 0.75));
                    if (((Obj.magic !image)#getName ())#startsWith (lEADERBOARD)) then begin
                        ignore ((Obj.magic !openGLESImage)#set_openGLESImageTranslate ((new OpenGLESDeviceImageTranslate.openGLESDeviceImageTranslate ())));
                        let openGLESDeviceImageTranslate : OpenGLESDeviceImageTranslate.openGLESDeviceImageTranslate ref = ref (((Obj.magic (Obj.magic !openGLESImage)#openGLESImageTranslate) :> OpenGLESDeviceImageTranslate.openGLESDeviceImageTranslate)) in ();
                        !openGLESDeviceImageTranslate#set_translateX ((((-(!displayInfoSingleton#getLastWidth ())) / 40) / !openGLESImageProperties#scaleX))
                    end;
                    if (((Obj.magic !image)#getName ())#startsWith (lEADERBOARD)) then begin
                        ()
                    end else begin
                        !openGLESImageProperties#set_scaleX (1.0);
                        !openGLESImageProperties#set_scaleY (1.0)
                    end
                end;
                image := Obj.repr ((Obj.magic !openGLESImage))
            end
        end else begin
            if (((Obj.magic !originalImage2)#isMutable ()) && mutable_) then begin
                let originalMutableImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic !originalImage2)))) in ();
                if (((Obj.magic !originalMutableImage)#getImage ()) != (Obj.magic 0)) then begin
                    let imageData2 : Obj.t ref = ref ((Obj.repr ((Obj.magic !originalMutableImage)#image#getImageData ()))) in ();
                    let imageData : Obj.t ref = ref ((Obj.repr ((Obj.magic !imageData2)#scaledTo (width, height)))) in ();
                    image := Obj.repr ((Obj.obj (java_new "SwtMutableImage" (Obj.repr ((Obj.magic (java_call_static "SwtDeviceComponent.createImage" (Obj.repr ((Obj.magic !imageData))))))))))
                end else begin
                    image := Obj.repr ((Obj.obj (java_new "SwtMutableImage" (Obj.repr (((Obj.magic !originalMutableImage)#getName ()), (new PostLoadSwtMutableImageProcessor.postLoadSwtMutableImageProcessor ((Obj.magic !originalMutableImage))))))))
                end
            end else begin
                let originalImmutableImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic !originalImage2)))) in ();
                if (((Obj.magic !originalImmutableImage)#getImage ()) != (Obj.magic 0)) then begin
                    let imageData2 : Obj.t ref = ref ((Obj.repr ((Obj.magic !originalImmutableImage)#image#getImageData ()))) in ();
                    let imageData : Obj.t ref = ref ((Obj.repr ((Obj.magic !imageData2)#scaledTo (width, height)))) in ();
                    image := Obj.repr ((Obj.obj (java_new "SwtImmutableImage" (Obj.repr (((Obj.magic originalImage)#getName ()), (Obj.magic (java_call_static "SwtDeviceComponent.createImage" (Obj.repr ((Obj.magic !imageData))))))))))
                end else begin
                    image := Obj.repr ((Obj.obj (java_new "SwtImmutableImage" (Obj.repr (((Obj.magic !originalImmutableImage)#getName ()), (new PostLoadSwtImmutableImageProcessor.postLoadSwtImmutableImageProcessor ((Obj.magic !originalImmutableImage))))))))
                end
            end;
            image := Obj.repr (((Obj.magic openGLUtil)#addImage ((Obj.magic !image))))
        end;
        (Obj.magic ((Obj.magic !image)))
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method createImageScale : 'any1 'return. 'any1 * float * bool -> 'return = fun (originalImage, (canvasScale : float), (resize : bool)) ->
        let originalImage = Obj.repr originalImage in
        try
        begin
        if (not (features#isFeature (gameFeatureFactory#pOST_IMAGE_LOADING_MODIFICATION))) then begin
            ignore ((Obj.magic logUtil)#putF (nO_COPY, self, commonStrings#cONSTRUCTOR));
            raise (Java_return (Obj.repr ((Obj.magic originalImage))))
        end;
        let newWidth : int ref = ref ((java_to_int (Obj.repr (((((Obj.magic originalImage)#getWidth ()) *. canvasScale)))))) in ();
        let newHeight : int ref = ref ((java_to_int (Obj.repr (((((Obj.magic originalImage)#getHeight ()) *. canvasScale)))))) in ();
        if resize then begin
            if (!newWidth < !newHeight) then begin
                newWidth := !newHeight
            end;
            if (!newHeight < !newWidth) then begin
                newHeight := !newWidth
            end
        end;
        let image : Obj.t ref = ref ((Obj.repr (self#createImageWH ((Obj.magic originalImage), !newWidth, !newHeight, true)))) in ();
        if ((Obj.magic !image)#isMutable ()) then begin
            let originalImageData : Obj.t ref = ref ((Obj.repr (((Obj.magic ((Obj.magic originalImage)#getImage ())))#getImageData ()))) in ();
            let mutableImage2 : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic !image)))) in ();
            let halfWidthDelta : int ref = ref ((((!newWidth - ((Obj.magic originalImage)#getWidth ()))) / 2)) in ();
            let halfHeightDelta : int ref = ref ((((!newHeight - ((Obj.magic originalImage)#getHeight ()))) / 2)) in ();
            let originalPixelArray : int array ref = ref ((Array.make ((((Obj.magic originalImage)#getWidth ()) * ((Obj.magic originalImage)#getHeight ()))) 0)) in ();
            let newPixelArray : int array ref = ref ((Array.make ((((Obj.magic !image)#getWidth ()) * ((Obj.magic !image)#getHeight ()))) 0)) in ();
            let width : int ref = ref (((Obj.magic originalImage)#getWidth ())) in ();
            let height : int ref = ref (((Obj.magic originalImage)#getHeight ())) in ();
            for i = 0 to !height - 1 do
                ignore ((Obj.magic !originalImageData)#getPixels (0, i, !width, !originalPixelArray, ((i * !width))))
            done;
            for index = !halfWidthDelta to !width - 1 do
                for index2 = !halfHeightDelta to !height - 1 do
                    !newPixelArray.((index + ((index2 * !width)))) <- !originalPixelArray.((((index - !halfWidthDelta)) + ((((index2 - !halfHeightDelta)) * !width))))
                done
            done;
            ignore ((((Obj.magic ((Obj.magic !mutableImage2)#getImage ())))#getImageData ())#setPixels (0, 0, ((Obj.magic !image)#getWidth ()), !newPixelArray, 0));
            raise (Java_return (Obj.repr ((Obj.magic !image))))
        end else begin
            let originalImmutableImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic !image)))) in ();
            let originalImageData : Obj.t ref = ref ((Obj.repr (((Obj.magic ((Obj.magic originalImage)#getImage ())))#getImageData ()))) in ();
            let halfWidthDelta : int ref = ref ((((!newWidth - ((Obj.magic originalImage)#getWidth ()))) / 2)) in ();
            let halfHeightDelta : int ref = ref ((((!newHeight - ((Obj.magic originalImage)#getHeight ()))) / 2)) in ();
            let originalPixelArray : int array ref = ref ((Array.make ((((Obj.magic originalImage)#getWidth ()) * ((Obj.magic originalImage)#getHeight ()))) 0)) in ();
            let newPixelArray : int array ref = ref ((Array.make ((((Obj.magic !image)#getWidth ()) * ((Obj.magic !image)#getHeight ()))) 0)) in ();
            let width : int ref = ref (((Obj.magic originalImage)#getWidth ())) in ();
            let height : int ref = ref (((Obj.magic originalImage)#getHeight ())) in ();
            for i = 0 to !height - 1 do
                ignore ((Obj.magic !originalImageData)#getPixels (0, i, !width, !originalPixelArray, ((i * !width))))
            done;
            for index = !halfWidthDelta to !width - 1 do
                for index2 = !halfHeightDelta to !height - 1 do
                    !newPixelArray.((index + ((index2 * !width)))) <- !originalPixelArray.((((index - !halfWidthDelta)) + ((((index2 - !halfHeightDelta)) * !width))))
                done
            done;
            ignore ((((Obj.magic ((Obj.magic !originalImmutableImage)#getImage ())))#getImageData ())#setPixels (0, 0, ((Obj.magic !image)#getWidth ()), !newPixelArray, 0));
            raise (Java_return (Obj.repr ((Obj.magic !image))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        gameFeatureFactory <- ((GameFeatureFactory.getInstance ()) :> GameFeatureFactory.gameFeatureFactory);
        features <- ((Features.getInstance ()) :> Features.features);
        openGLFeatureFactory <- ((OpenGLFeatureFactory.getInstance ()) :> OpenGLFeatureFactory.openGLFeatureFactory);
        openGLUtil <- (Obj.repr (Obj.magic (java_call_static "OpenGLUtil.getInstance" (Obj.repr ()))));
        openGLESImageExclusionUtil <- (Obj.repr (Obj.magic (java_call_static "OpenGLESImageExclusionUtil.getInstance" (Obj.repr ()))));
        nO_COPY <- "SWT should not copy images after initial loading as the alpha is not honored";
        uNABLE <- "Unable to scale image without dimensions";
        iNFORMATION <- "about_";
        lEADERBOARD <- "leaderboard";
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageCopyUtil" (fun arguments -> Obj.repr (new imageCopyUtil (Obj.obj arguments)))

let instance = (new imageCopyUtil ())
let get_instance () = instance
let () = java_register_static "ImageCopyUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ImageCopyUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


