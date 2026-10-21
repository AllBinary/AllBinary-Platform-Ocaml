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
(* import android.graphics.Bitmap *)
(* import android.graphics.Canvas *)
(* import android.graphics.Matrix *)
(* import javax.microedition.lcdui.Image *)
(* import javax.microedition.lcdui.NullImage *)
(* import org.allbinary.graphics.Anchor *)
(* import org.allbinary.image.ImageCache *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.microemu.android.device.AndroidImageInterface *)

class imageScaleUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable anchor : int = 0
    method anchor = anchor
    method set_anchor value' = anchor <- value'
    val mutable imageBasicArrayList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method imageBasicArrayList = imageBasicArrayList
    method set_imageBasicArrayList value' = imageBasicArrayList <- value'
    val mutable scaledImageBasicArrayList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method scaledImageBasicArrayList = scaledImageBasicArrayList
    method set_scaledImageBasicArrayList value' = scaledImageBasicArrayList <- value'
    val mutable scaleXBasicArrayList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method scaleXBasicArrayList = scaleXBasicArrayList
    method set_scaleXBasicArrayList value' = scaleXBasicArrayList <- value'
    val mutable scaleYBasicArrayList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method scaleYBasicArrayList = scaleYBasicArrayList
    method set_scaleYBasicArrayList value' = scaleYBasicArrayList <- value'
    
    

    method createImage2 : 'any1 'any2 'return. 'any1 * 'any2 * float * float * float * float * bool -> 'return = fun (imageCache, originalImage, (scaleNominatorX : float), (scaleDenominatorX : float), (scaleNominatorY : float), (scaleDenominatorY : float), (cached : bool)) ->
        let imageCache = Obj.repr imageCache in
        let originalImage = Obj.repr originalImage in
        begin
        (Obj.magic ((self#createImage3 ((Obj.magic imageCache), (Obj.magic originalImage), scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, true))))
        end [@@warning "-20"]
    

    method createImage3 : 'any1 'any2 'return. 'any1 * 'any2 * float * float * float * float * bool * bool -> 'return = fun (imageCache, originalImage, (scaleNominatorX : float), (scaleDenominatorX : float), (scaleNominatorY : float), (scaleDenominatorY : float), (cached : bool), (_mutable_ : bool)) ->
        let imageCache = Obj.repr imageCache in
        let originalImage = Obj.repr originalImage in
        begin
        let scaleX : float ref = ref ((scaleNominatorX /. scaleDenominatorX)) in ();
        let scaleY : float ref = ref ((scaleNominatorY /. scaleDenominatorY)) in ();
        (Obj.magic ((self#createImage ((Obj.magic imageCache), (Obj.magic originalImage), !scaleX, !scaleY, cached))))
        end [@@warning "-20"]
    

    method createImage : 'any1 'any2 'return. 'any1 * 'any2 * float * float * bool -> 'return = fun (imageCache, originalImage, (scaleX : float), (scaleY : float), (cached : bool)) ->
        let imageCache = Obj.repr imageCache in
        let originalImage = Obj.repr originalImage in
        try
        begin
        let originalAndroidImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic originalImage)))) in ();
        let originalBitmap : Obj.t ref = ref ((Obj.repr ((Obj.magic !originalAndroidImage)#getBitmap ()))) in ();
        let width : int ref = ref ((java_to_int (Obj.repr (((((Obj.magic !originalBitmap)#getWidth ()) *. scaleX)))))) in ();
        let height : int ref = ref ((java_to_int (Obj.repr (((((Obj.magic !originalBitmap)#getHeight ()) *. scaleY)))))) in ();
        let index : int ref = ref ((imageBasicArrayList#indexOf ((Obj.magic originalImage)))) in ();
        let alreadyAvailable : bool ref = ref (false) in ();
        if (!index >= 0) then begin
            let scaleX2Float : float ref = ref ((Obj.magic (scaleXBasicArrayList#get (!index)))) in ();
            let scaleX2 : float ref = ref (!scaleX2Float) in ();
            let scaleY2Float : float ref = ref ((Obj.magic (scaleYBasicArrayList#get (!index)))) in ();
            let scaleY2 : float ref = ref (!scaleY2Float) in ();
            if ((!scaleX2 = scaleX) && (!scaleY2 = scaleY)) then begin
                alreadyAvailable := true
            end
        end;
        if !alreadyAvailable then begin
            raise (Java_return (Obj.repr ((Obj.magic (scaledImageBasicArrayList#get (!index))))))
        end else begin
            let scaledImage : Obj.t ref = ref ((Obj.repr (self#getScaledImage ((Obj.magic imageCache), (Obj.magic originalImage), scaleX, scaleY, !width, !height, cached)))) in ();
            ignore (imageBasicArrayList#add ((Obj.magic originalImage)));
            ignore (scaledImageBasicArrayList#add ((Obj.magic !scaledImage)));
            ignore (scaleXBasicArrayList#add (scaleX));
            ignore (scaleYBasicArrayList#add (scaleY));
            raise (Java_return (Obj.repr ((Obj.magic !scaledImage))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method getScaledImage : 'any1 'any2 'return. 'any1 * 'any2 * float * float * int * int * bool -> 'return = fun (imageCache, originalImage, (scaleX : float), (scaleY : float), (width : int), (height : int), (cached : bool)) ->
        let imageCache = Obj.repr imageCache in
        let originalImage = Obj.repr originalImage in
        try
        begin
        let image : Obj.t ref = ref ((Obj.repr (NullImage.get_nULL_IMAGE ()))) in ();
        if cached then begin
            image := Obj.repr (((Obj.magic imageCache)#get ((java_get_class (Obj.repr self)), width, height)))
        end else begin
            image := Obj.repr (((Obj.magic imageCache)#get (commonStrings#cREATE_IMAGE, width, height)))
        end;
        if ((Obj.magic !image)#isMutable ()) then begin
            let matrix : Obj.t ref = ref ((Obj.repr (new Matrix.matrix ()))) in ();
            (self#scale ((Obj.magic !image), (Obj.magic !matrix), scaleX, scaleY));
            ignore (((Obj.magic !image)#getGraphics ())#drawImage ((Obj.magic originalImage), 0, 0, anchor));
            raise (Java_return (Obj.repr ((Obj.magic !image))))
        end else begin
            raise (Failure ("Not Mutable"))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method scale : 'any1 'any2. 'any1 * 'any2 * float * float -> unit = fun (image, matrix, (scaleX : float), (scaleY : float)) ->
        let image = Obj.repr image in
        let matrix = Obj.repr matrix in
        begin
        ignore ((Obj.magic matrix)#setScale (scaleX, scaleY));
        let canvas : Obj.t ref = ref ((Obj.repr (((Obj.magic (Obj.magic image)))#getCanvas ()))) in ();
        ignore ((Obj.magic !canvas)#concat ((Obj.magic matrix)))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        anchor <- (Anchor.get_tOP_LEFT ());
        imageBasicArrayList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        scaledImageBasicArrayList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        scaleXBasicArrayList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        scaleYBasicArrayList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
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


