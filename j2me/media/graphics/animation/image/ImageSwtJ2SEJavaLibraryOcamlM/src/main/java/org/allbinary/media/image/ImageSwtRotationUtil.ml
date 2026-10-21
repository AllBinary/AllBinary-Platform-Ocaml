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
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.GameFeatureFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.eclipse.swt.SWT *)
(* import org.eclipse.swt.graphics.GC *)
(* import org.eclipse.swt.graphics.ImageData *)

class imageSwtRotationUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable imageUtil : Obj.t = Obj.repr 0
    method imageUtil : 'r. 'r = Obj.magic imageUtil
    method set_imageUtil : 'v. 'v -> unit = fun value' -> imageUtil <- Obj.repr value'
    val mutable gameFeatureFactory : GameFeatureFactory.gameFeatureFactory = (Obj.magic 0)
    method gameFeatureFactory = gameFeatureFactory
    method set_gameFeatureFactory value' = gameFeatureFactory <- value'
    val mutable features : Features.features = (Obj.magic 0)
    method features = features
    method set_features value' = features <- value'
    val mutable nO_COPY : string = ""
    method nO_COPY = nO_COPY
    method set_nO_COPY value' = nO_COPY <- value'
    
    

    method getRotatedImage : 'any1 'return. 'any1 * int -> 'return = fun (bufferedImage, (_totalAngle : int)) ->
        let bufferedImage = Obj.repr bufferedImage in
        try
        begin
        if (not (features#isFeature (gameFeatureFactory#pOST_IMAGE_LOADING_MODIFICATION))) then begin
            ignore ((Obj.magic logUtil)#putF (nO_COPY, self, commonStrings#cONSTRUCTOR));
            raise (Java_return (Obj.repr ((Obj.magic bufferedImage))))
        end;
        (Obj.magic ((Obj.magic bufferedImage)))
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method getRotatedImage2 : 'any1 'any2 'any3 'return. 'any1 * 'any2 * 'any3 * float -> 'return = fun (bufferedImage, _newBufferedImage, _gc, (_angle : float)) ->
        let bufferedImage = Obj.repr bufferedImage in
        try
        begin
        if (not (features#isFeature (gameFeatureFactory#pOST_IMAGE_LOADING_MODIFICATION))) then begin
            ignore ((Obj.magic logUtil)#putF (nO_COPY, self, commonStrings#cONSTRUCTOR));
            raise (Java_return (Obj.repr ((Obj.magic bufferedImage))))
        end;
        (Obj.magic ((Obj.magic bufferedImage)))
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method rotateImage : 'any1 'any2 'any3 'return. 'any1 * 'any2 * 'any3 * int -> 'return = fun (originalSwtImage, newSwtImage, gc, (totalAngle : int)) ->
        let originalSwtImage = Obj.repr originalSwtImage in
        let newSwtImage = Obj.repr newSwtImage in
        let gc = Obj.repr gc in
        begin
        (Obj.magic ((self#getRotatedImage2 ((Obj.magic originalSwtImage), (Obj.magic newSwtImage), (Obj.magic gc), totalAngle))))
        end [@@warning "-20"]
    

    method getRotatedImageSWT : 'any1 'any2 'any3 'return. 'any1 * 'any2 * 'any3 * int -> 'return = fun (bufferedImage, newSwtImage, gc, (totalAngle : int)) ->
        let bufferedImage = Obj.repr bufferedImage in
        let newSwtImage = Obj.repr newSwtImage in
        let gc = Obj.repr gc in
        begin
        (Obj.magic ((self#getRotatedImage2 ((Obj.magic bufferedImage), (Obj.magic newSwtImage), (Obj.magic gc), totalAngle))))
        end [@@warning "-20"]
    

    method getRotatedImages : 'any1 'return. 'any1 * int * int -> 'return = fun (bufferedImage, (numberOfFrames : int), (totalAngle : int)) ->
        let bufferedImage = Obj.repr bufferedImage in
        begin
        let bufferedImageArray : Obj.t ref = ref ((Obj.repr (Array.make (numberOfFrames) (Obj.magic 0)))) in ();
        let angle : int ref = ref (0) in ();
        let size : int ref = ref ((Array.length (Obj.magic !bufferedImageArray))) in ();
        for index = 0 to !size - 1 do
            angle := (((totalAngle / !size)) * index);
            (Obj.magic !bufferedImageArray).(index) <- (self#getRotatedImage ((Obj.magic bufferedImage), !angle))
        done;
        (Obj.magic ((Obj.magic !bufferedImageArray)))
        end [@@warning "-20"]
    

    method createSpriteImage : 'return. _ -> 'return = fun (bufferedImageArray) ->
        begin
        let columns : int ref = ref (9) in ();
        let rows : int ref = ref (0) in ();
        let size : int ref = ref ((Array.length bufferedImageArray)) in ();
        if (!size < !columns) then begin
            columns := !size
        end;
        rows := ((!size / !columns));
        if ((!size mod !columns) <> 0) then begin
            rows := !rows + 1
        end;
        let firstBufferedImage : Obj.t ref = ref ((Obj.repr bufferedImageArray.(0))) in ();
        let imageData : Obj.t ref = ref ((Obj.repr ((Obj.magic !firstBufferedImage)#getImageData ()))) in ();
        let bufferedImage : Obj.t ref = ref ((Obj.repr ((Obj.magic imageUtil)#create (((Obj.magic !imageData)#width * !columns), ((Obj.magic !imageData)#height * !rows))))) in ();
        let gc : Obj.t ref = ref ((Obj.repr (new GC.gC ((Obj.magic !bufferedImage))))) in ();
        ignore ((Obj.magic !gc)#setAntialias ((SWT.get_oN ())));
        ignore ((Obj.magic !gc)#setInterpolation ((SWT.get_hIGH ())));
        let columnIndex : int ref = ref (0) in ();
        let rowIndex : int ref = ref (0) in ();
        let nextBufferedImage : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        for index = 0 to !size - 1 do
            if (((index / 9) <> 0) && ((index mod 9) = 0)) then begin
                rowIndex := !rowIndex + 1;
                columnIndex := 0
            end;
            nextBufferedImage := Obj.repr (bufferedImageArray.(index));
            imageData := Obj.repr (((Obj.magic !nextBufferedImage)#getImageData ()));
            ignore ((Obj.magic !gc)#drawImage ((Obj.magic !bufferedImage), 0, 0, ((Obj.magic !bufferedImage)#getBounds ())#width, ((Obj.magic !bufferedImage)#getBounds ())#height, ((Obj.magic !imageData)#width * !columnIndex), ((Obj.magic !imageData)#height * !rowIndex), (Obj.magic !imageData)#width, (Obj.magic !imageData)#height));
            columnIndex := !columnIndex + 1
        done;
        ignore ((Obj.magic !gc)#dispose ());
        (Obj.magic ((Obj.magic !bufferedImage)))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        imageUtil <- (Obj.repr (Obj.magic (java_call_static "ImageUtil.getInstance" (Obj.repr ()))));
        gameFeatureFactory <- ((GameFeatureFactory.getInstance ()) :> GameFeatureFactory.gameFeatureFactory);
        features <- ((Features.getInstance ()) :> Features.features);
        nO_COPY <- "SWT should not copy images after initial loading as the alpha is not honored";
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageSwtRotationUtil" (fun arguments -> Obj.repr (new imageSwtRotationUtil (Obj.obj arguments)))

let instance = (new imageSwtRotationUtil ())
let get_instance () = instance
let () = java_register_static "ImageSwtRotationUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ImageSwtRotationUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


