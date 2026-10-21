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
(* package org.allbinary.media.image.comparison.motion *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.media.image.comparison.ImageComparisonResult *)

class motionRectangles ((name_arg : string), (imageComparisonResult_arg : ImageComparisonResult.imageComparisonResult)) =
  object (self)
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable rectangleVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method rectangleVector = rectangleVector
    method set_rectangleVector value' = rectangleVector <- value'
    val mutable imageComparisonResult : ImageComparisonResult.imageComparisonResult = (Obj.magic 0)
    method imageComparisonResult = imageComparisonResult
    method set_imageComparisonResult value' = imageComparisonResult <- value'
    val mutable mAX_PIXEL_DISTANCE_THRESHOLD : int = 0
    method mAX_PIXEL_DISTANCE_THRESHOLD = mAX_PIXEL_DISTANCE_THRESHOLD
    method set_mAX_PIXEL_DISTANCE_THRESHOLD value' = mAX_PIXEL_DISTANCE_THRESHOLD <- value'
    
    

    method getVector () : BasicArrayList.basicArrayList =
        begin
        (rectangleVector :> BasicArrayList.basicArrayList)
        end
    

    method setVector : 'any1. 'any1 -> unit = fun (rectangleVector_arg) ->
        let rectangleVector_arg = Obj.repr rectangleVector_arg in
        begin
        rectangleVector <- (Obj.magic rectangleVector_arg)
        end [@@warning "-20"]
    

    method getName () : string =
        begin
        name
        end
    

    method getImageComparisonResult () : ImageComparisonResult.imageComparisonResult =
        begin
        (imageComparisonResult :> ImageComparisonResult.imageComparisonResult)
        end
    

    method setImageComparisonResult : 'any1. 'any1 -> unit = fun (imageComparisonResult_arg) ->
        let imageComparisonResult_arg = Obj.repr imageComparisonResult_arg in
        begin
        imageComparisonResult <- (Obj.magic imageComparisonResult_arg)
        end [@@warning "-20"]

    initializer
      begin
        ();
        rectangleVector <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        imageComparisonResult <- ((Obj.magic 0) :> ImageComparisonResult.imageComparisonResult);
        mAX_PIXEL_DISTANCE_THRESHOLD <- 2;
        ();
        name <- name_arg;
        (self#setImageComparisonResult (imageComparisonResult_arg));
        (self#setVector ((new BasicArrayListD.basicArrayListD ())))
      end
  end
let () = java_register_constructor "MotionRectangles" (fun arguments -> Obj.repr (new motionRectangles (Obj.obj arguments)))


