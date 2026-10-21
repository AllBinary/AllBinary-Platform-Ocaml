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
(* import org.allbinary.image.ImageCache *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class imageScaleUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable imageCopyUtil : Obj.t = Obj.repr 0
    method imageCopyUtil : 'r. 'r = Obj.magic imageCopyUtil
    method set_imageCopyUtil : 'v. 'v -> unit = fun value' -> imageCopyUtil <- Obj.repr value'
    val mutable gameFeatureFactory : GameFeatureFactory.gameFeatureFactory = (Obj.magic 0)
    method gameFeatureFactory = gameFeatureFactory
    method set_gameFeatureFactory value' = gameFeatureFactory <- value'
    val mutable features : Features.features = (Obj.magic 0)
    method features = features
    method set_features value' = features <- value'
    val mutable nO_COPY : string = ""
    method nO_COPY = nO_COPY
    method set_nO_COPY value' = nO_COPY <- value'
    
    

    method createImage2 : 'any1 'any2 'return. 'any1 * 'any2 * float * float * float * float * bool -> 'return = fun (imageCache, originalImage, (scaleNominatorX : float), (scaleDenominatorX : float), (scaleNominatorY : float), (scaleDenominatorY : float), (cached : bool)) ->
        let imageCache = Obj.repr imageCache in
        let originalImage = Obj.repr originalImage in
        begin
        (Obj.magic ((self#createImage3 ((Obj.magic imageCache), (Obj.magic originalImage), scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, true))))
        end [@@warning "-20"]
    

    method createImage3 : 'any1 'any2 'return. 'any1 * 'any2 * float * float * float * float * bool * bool -> 'return = fun (_imageCache, originalImage, (scaleNominatorX : float), (scaleDenominatorX : float), (scaleNominatorY : float), (scaleDenominatorY : float), (_cached : bool), (mutable_ : bool)) ->
        let originalImage = Obj.repr originalImage in
        try
        begin
        if (not (features#isFeature (gameFeatureFactory#pOST_IMAGE_LOADING_MODIFICATION))) then begin
            ignore ((Obj.magic logUtil)#putF (nO_COPY, self, commonStrings#cONSTRUCTOR));
            raise (Java_return (Obj.repr ((Obj.magic originalImage))))
        end;
        let width : int ref = ref (((Obj.magic originalImage)#getWidth ())) in ();
        let height : int ref = ref (((Obj.magic originalImage)#getHeight ())) in ();
        let scaleX : float ref = ref ((scaleNominatorX /. scaleDenominatorX)) in ();
        let scaleY : float ref = ref ((scaleNominatorY /. scaleDenominatorY)) in ();
        let scaledImage : Obj.t ref = ref ((Obj.repr ((Obj.magic imageCopyUtil)#createImageWH ((Obj.magic originalImage), (int_of_float (((!scaleX *. (float_of_int (!width)))))), (int_of_float (((!scaleY *. (float_of_int (!height)))))), mutable_)))) in ();
        (Obj.magic ((Obj.magic !scaledImage)))
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method scale2 : 'any1. 'any1 * _ * _ * int * float * float * float * float -> unit = fun (originalImage, originalImageArray, ximageToShowArray, (unused : int), (scaleX : float), (scaleY : float), (maxScaleX : float), (maxScaleY : float)) ->
        let originalImage = Obj.repr originalImage in
        begin
        (self#scale ((Obj.magic originalImage), originalImageArray, ximageToShowArray, unused, scaleX, scaleY, maxScaleX, maxScaleY, true))
        end [@@warning "-20"]
    

    method scale : 'any1. 'any1 * _ * _ * int * float * float * float * float * bool -> unit = fun (originalImage, originalImageArray, _ximageToShowArray, (_unused : int), (scaleX : float), (scaleY : float), (_maxScaleX : float), (_maxScaleY : float), (mutable_ : bool)) ->
        let originalImage = Obj.repr originalImage in
        begin
        let width : int ref = ref (((Obj.magic originalImage)#getWidth ())) in ();
        let height : int ref = ref (((Obj.magic originalImage)#getHeight ())) in ();
        let scaledImage : Obj.t ref = ref ((Obj.repr ((Obj.magic imageCopyUtil)#createImageWH ((Obj.magic originalImage), (int_of_float (((scaleX *. (float_of_int (!width)))))), (int_of_float (((scaleY *. (float_of_int (!height)))))), mutable_)))) in ();
        originalImageArray.(0) <- (Obj.magic !scaledImage)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        imageCopyUtil <- (Obj.repr (Obj.magic (java_call_static "ImageCopyUtil.getInstance" (Obj.repr ()))));
        gameFeatureFactory <- ((GameFeatureFactory.getInstance ()) :> GameFeatureFactory.gameFeatureFactory);
        features <- ((Features.getInstance ()) :> Features.features);
        nO_COPY <- "SWT should not copy images after initial loading as the alpha is not honored";
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageScaleUtil" (fun arguments -> Obj.repr (new imageScaleUtil (Obj.obj arguments)))

let instance = (new imageScaleUtil ())
let get_instance () = instance
let () = java_register_static "ImageScaleUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ImageScaleUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


