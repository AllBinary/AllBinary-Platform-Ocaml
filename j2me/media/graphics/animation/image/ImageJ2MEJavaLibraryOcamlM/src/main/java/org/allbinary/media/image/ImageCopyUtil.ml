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
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.GameFeatureFactory *)
(* import org.allbinary.graphics.Anchor *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class imageCopyUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable imageCreationUtil : ImageCreationUtil.imageCreationUtil = (Obj.magic 0)
    method imageCreationUtil = imageCreationUtil
    method set_imageCreationUtil value' = imageCreationUtil <- value'
    val mutable anchor : int = 0
    method anchor = anchor
    method set_anchor value' = anchor <- value'
    val mutable gameFeatureFactory : GameFeatureFactory.gameFeatureFactory = (Obj.magic 0)
    method gameFeatureFactory = gameFeatureFactory
    method set_gameFeatureFactory value' = gameFeatureFactory <- value'
    val mutable features : Features.features = (Obj.magic 0)
    method features = features
    method set_features value' = features <- value'
    val mutable nO_COPY : string = ""
    method nO_COPY = nO_COPY
    method set_nO_COPY value' = nO_COPY <- value'
    
    

    method createImageForRotation : 'any1 'return. 'any1 -> 'return = fun (originalImage) ->
        let originalImage = Obj.repr originalImage in
        begin
        (Obj.magic ((self#createImage ((Obj.magic originalImage)))))
        end [@@warning "-20"]
    

    method createImage : 'any1 'return. 'any1 -> 'return = fun (originalImage) ->
        let originalImage = Obj.repr originalImage in
        try
        begin
        if (not (features#isFeature (gameFeatureFactory#pOST_IMAGE_LOADING_MODIFICATION))) then begin
            ignore ((Obj.magic logUtil)#put (nO_COPY, self, commonStrings#cONSTRUCTOR, (Failure ("Exception"))));
            raise (Java_return (Obj.repr ((Obj.magic originalImage))))
        end;
        let image : Obj.t ref = ref ((Obj.repr (imageCreationUtil#createImageWH (((Obj.magic originalImage)#getWidth ()), ((Obj.magic originalImage)#getHeight ()))))) in ();
        if ((Obj.magic !image)#isMutable ()) then begin
            ignore (((Obj.magic !image)#getGraphics ())#drawImage ((Obj.magic originalImage), 0, 0, anchor));
            raise (Java_return (Obj.repr ((Obj.magic !image))))
        end else begin
            raise (Failure ("Not Mutable"))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method createImageScale : 'any1 'return. 'any1 * float * bool -> 'return = fun (originalImage, (canvasScale : float), (resize : bool)) ->
        let originalImage = Obj.repr originalImage in
        try
        begin
        if (not (features#isFeature (gameFeatureFactory#pOST_IMAGE_LOADING_MODIFICATION))) then begin
            ignore ((Obj.magic logUtil)#put (nO_COPY, self, commonStrings#cONSTRUCTOR, (Failure ("Exception"))));
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
        let image : Obj.t ref = ref ((Obj.repr (imageCreationUtil#createImageWH (!newWidth, !newHeight)))) in ();
        if ((Obj.magic !image)#isMutable ()) then begin
            let halfWidthDelta : int ref = ref ((((!newWidth - ((Obj.magic originalImage)#getWidth ()))) / 2)) in ();
            let halfHeightDelta : int ref = ref ((((!newHeight - ((Obj.magic originalImage)#getHeight ()))) / 2)) in ();
            let graphics : Obj.t ref = ref ((Obj.repr ((Obj.magic !image)#getGraphics ()))) in ();
            ignore ((Obj.magic !graphics)#drawImage ((Obj.magic originalImage), !halfWidthDelta, !halfHeightDelta, anchor));
            raise (Java_return (Obj.repr ((Obj.magic !image))))
        end else begin
            raise (Failure ("Not Mutable"))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        imageCreationUtil <- ((ImageCreationUtil.getInstance ()) :> ImageCreationUtil.imageCreationUtil);
        anchor <- (Anchor.get_tOP_LEFT ());
        gameFeatureFactory <- ((GameFeatureFactory.getInstance ()) :> GameFeatureFactory.gameFeatureFactory);
        features <- ((Features.getInstance ()) :> Features.features);
        nO_COPY <- "J2ME does not need to copy images after initial loading";
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


