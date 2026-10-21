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
(* package org.allbinary.media.image.comparison *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.image.BufferedImage *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.media.image.ImageUtil *)
(* import org.allbinary.media.image.comparison.pixel.PixelDelta *)
(* import org.allbinary.string.CommonStrings *)

class imageComparisonResult ((name_arg : string), bufferedImage, bufferedImage2, (frameOne_arg : int), (frameTwo_arg : int), (_tolerance_arg : int)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable bufferedImages : Obj.t = Obj.repr 0
    method bufferedImages : 'r. 'r = Obj.magic bufferedImages
    method set_bufferedImages : 'v. 'v -> unit = fun value' -> bufferedImages <- Obj.repr value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable isSameHeight : bool = false
    method isSameHeight = isSameHeight
    method set_isSameHeight value' = isSameHeight <- value'
    val mutable isSameWidth : bool = false
    method isSameWidth = isSameWidth
    method set_isSameWidth value' = isSameWidth <- value'
    val mutable imageHeight : int = 0
    method imageHeight = imageHeight
    method set_imageHeight value' = imageHeight <- value'
    val mutable imageWidth : int = 0
    method imageWidth = imageWidth
    method set_imageWidth value' = imageWidth <- value'
    val mutable nonMatchingPixelVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method nonMatchingPixelVector = nonMatchingPixelVector
    method set_nonMatchingPixelVector value' = nonMatchingPixelVector <- value'
    val mutable frameOne : int = (Obj.magic 0)
    method frameOne = frameOne
    method set_frameOne value' = frameOne <- value'
    val mutable frameTwo : int = (Obj.magic 0)
    method frameTwo = frameTwo
    method set_frameTwo value' = frameTwo <- value'
    val mutable pixelsThatMatch : int = 0
    method pixelsThatMatch = pixelsThatMatch
    method set_pixelsThatMatch value' = pixelsThatMatch <- value'
    val mutable pixelsIgnored : int = 0
    method pixelsIgnored = pixelsIgnored
    method set_pixelsIgnored value' = pixelsIgnored <- value'
    val mutable tolerance : int = 0
    method tolerance = tolerance
    method set_tolerance value' = tolerance <- value'
    val mutable matchingPercent : float = 0.0
    method matchingPercent = matchingPercent
    method set_matchingPercent value' = matchingPercent <- value'
    
    

    method getMatchingPercent () : float =
        begin
        if (matchingPercent = (float_of_int ((-1)))) then begin
            matchingPercent <- ((float_of_int (pixelsThatMatch)) /. (float_of_int (((imageWidth * imageHeight)))))
        end;
        matchingPercent
        end
    

    method add : 'any1. 'any1 -> unit = fun (pixel) ->
        let pixel = Obj.repr pixel in
        begin
        ignore (nonMatchingPixelVector#add ((Obj.magic pixel)))
        end [@@warning "-20"]
    

    method getNonMatchingPixelVector () : BasicArrayList.basicArrayList =
        begin
        (nonMatchingPixelVector :> BasicArrayList.basicArrayList)
        end
    

    method toString () : string =
        begin
        (java_string_of (Obj.repr (((((((((((new StringMaker.stringMaker ())#append ("ImageComparisonInfo: "))#append (name))#append (" Number Of Matching Pixels: "))#appendint (pixelsThatMatch))#append ("\nNumber Of Non-Matching Pixels: "))#appendint (((self#getNonMatchingPixelVector ())#size ())))#append ("\nNumber Of Pixels Ignored: "))#appendint (pixelsIgnored))#append ("\nMatching Percentage: "))#appendfloat ((self#getMatchingPercent ())))))
        end
    

    method getBufferedImages : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic bufferedImages)))
        end
    

    method getTolerance () : int =
        begin
        tolerance
        end
    

    method setTolerance ((tolerance_arg : int)) : unit =
        begin
        tolerance <- tolerance_arg
        end
    

    method getFrameOne () : int =
        begin
        frameOne
        end
    

    method getFrameTwo () : int =
        begin
        frameTwo
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        bufferedImages <- (Obj.repr (Array.make (2) (Obj.magic 0)));
        ();
        isSameHeight <- false;
        isSameWidth <- false;
        ();
        ();
        ();
        ();
        ();
        pixelsThatMatch <- 0;
        pixelsIgnored <- 0;
        tolerance <- 0;
        matchingPercent <- (float_of_int ((-1)));
        ();
        name <- name_arg;
        nonMatchingPixelVector <- (new BasicArrayListD.basicArrayListD ());
        (Obj.magic bufferedImages).(0) <- bufferedImage;
        (Obj.magic bufferedImages).(1) <- bufferedImage2;
        frameOne <- frameOne_arg;
        frameTwo <- frameTwo_arg;
        (self#setTolerance (0));
        let imageHeight_arg : int ref = ref ((bufferedImage#getHeight ())) in ();
        let imageWidth_arg : int ref = ref ((bufferedImage#getWidth ())) in ();
        if ((Obj.repr (bufferedImage#getHeight ())) != (Obj.repr (bufferedImage2#getHeight ()))) then begin
            isSameHeight <- false;
            if (!imageHeight_arg > (bufferedImage2#getHeight ())) then begin
                imageHeight_arg := (bufferedImage2#getHeight ())
            end
        end else begin
            isSameHeight <- true
        end;
        if ((Obj.repr (bufferedImage#getWidth ())) != (Obj.repr (bufferedImage2#getWidth ()))) then begin
            isSameWidth <- false;
            if (!imageWidth_arg > (bufferedImage2#getWidth ())) then begin
                imageWidth_arg := (bufferedImage2#getWidth ())
            end
        end else begin
            isSameWidth <- true
        end;
        imageWidth <- !imageWidth_arg;
        imageHeight <- !imageHeight_arg;
        if ((not isSameWidth) || (not isSameHeight)) then begin
            let imageUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "ImageUtil.getInstance" (Obj.repr ()))))) in ();
            ignore ((Obj.magic logUtil)#putF ("Images were not the same size? Most likely a resolution change.", self, commonStrings#cONSTRUCTOR));
            ignore ((Obj.magic logUtil)#putF (("1: " ^ ((Obj.magic !imageUtil)#toString (bufferedImage))), self, commonStrings#cONSTRUCTOR));
            ignore ((Obj.magic logUtil)#putF (("2: " ^ ((Obj.magic !imageUtil)#toString (bufferedImage2))), self, commonStrings#cONSTRUCTOR))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageComparisonResult" (fun arguments -> Obj.repr (new imageComparisonResult (Obj.obj arguments)))


