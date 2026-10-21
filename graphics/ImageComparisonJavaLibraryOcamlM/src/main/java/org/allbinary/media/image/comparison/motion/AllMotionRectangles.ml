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
(* import java.awt *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.media.image.comparison.ImageComparisonResult *)
(* import org.allbinary.media.image.comparison.pixel.PixelDelta *)

let nAME : string = "allMotionRectangles_"
let get_nAME () = nAME
let () = java_register_static "AllMotionRectangles.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
class allMotionRectangles ((imageComparisonResult : ImageComparisonResult.imageComparisonResult)) =
  object (self)
    inherit MotionRectangles.motionRectangles (nAME, imageComparisonResult)
    
    

    method createMotionRectangles : 'any1. 'any1 -> unit = fun (imageComparisonInfo) ->
        let imageComparisonInfo = Obj.repr imageComparisonInfo in
        begin
        let vector : BasicArrayList.basicArrayList ref = ref ((((Obj.magic imageComparisonInfo)#getNonMatchingPixelVector ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!vector#size ())) in ();
        for index = 0 to !size - 1 do
            let pixelDelta : PixelDelta.pixelDelta ref = ref (((Obj.magic (!vector#get (index))) :> PixelDelta.pixelDelta)) in ();
            (self#addPixelDeltaToAMotionRectangle (!pixelDelta))
        done
        end [@@warning "-7-20"]
    

    method addPixelDeltaToExistingMotionRectangle : 'any1. 'any1 -> bool = fun (pixelDelta) ->
        let pixelDelta = Obj.repr pixelDelta in
        try
        begin
        let vector : BasicArrayList.basicArrayList ref = ref (((self#getVector ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!vector#size ())) in ();
        for index = 0 to !size - 1 do
            let motionRectangle : Obj.t ref = ref ((Obj.repr (Obj.magic (!vector#get (index))))) in ();
            if (self#shouldPixelDeltaPartOfMotionRectangle ((Obj.magic !motionRectangle), (Obj.magic pixelDelta))) then begin
                let newWidth : int ref = ref (((((Obj.magic pixelDelta)#getPoint ())#getX ()) - ((Obj.magic !motionRectangle)#getRectangle ())#x)) in ();
                let newHeight : int ref = ref (((((Obj.magic pixelDelta)#getPoint ())#getY ()) - ((Obj.magic !motionRectangle)#getRectangle ())#y)) in ();
                if (!newWidth < ((Obj.magic !motionRectangle)#getRectangle ())#width) then begin
                    newWidth := ((Obj.magic !motionRectangle)#getRectangle ())#width
                end;
                if (!newHeight < ((Obj.magic !motionRectangle)#getRectangle ())#height) then begin
                    newHeight := ((Obj.magic !motionRectangle)#getRectangle ())#height
                end;
                ignore (((Obj.magic !motionRectangle)#getRectangle ())#setSize (!newWidth, !newHeight));
                raise (Java_return (Obj.repr (true)))
            end
        done;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method addPixelDeltaToAMotionRectangle : 'any1. 'any1 -> unit = fun (pixelDelta) ->
        let pixelDelta = Obj.repr pixelDelta in
        begin
        if (not (self#addPixelDeltaToExistingMotionRectangle ((Obj.magic pixelDelta)))) then begin
            let newRectangle : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "Rectangle" (Obj.repr ((((Obj.magic pixelDelta)#getPoint ())#getX ()), (((Obj.magic pixelDelta)#getPoint ())#getY ()), 1, 1)))))) in ();
            let motionRectangle : Obj.t ref = ref ((Obj.repr (new MotionRectangle.motionRectangle ((Obj.magic !newRectangle))))) in ();
            ignore (((Obj.magic !motionRectangle)#getPixelDeltaVector ())#add ((Obj.magic pixelDelta)));
            ignore ((self#getVector ())#add ((Obj.magic !motionRectangle)))
        end
        end [@@warning "-7-20"]
    

    method shouldPixelDeltaPartOfMotionRectangle : 'any1 'any2. 'any1 * 'any2 -> bool = fun (motionRectangle, pixelDelta) ->
        let motionRectangle = Obj.repr motionRectangle in
        let pixelDelta = Obj.repr pixelDelta in
        try
        begin
        let isPixelLeftOfTheRectangle : bool ref = ref (false) in ();
        if (((Obj.magic motionRectangle)#getRectangle ())#y > (((Obj.magic pixelDelta)#getPoint ())#getY ())) then begin
            raise (Failure ("PixelAboveTheRectangle"))
        end;
        if (((Obj.magic motionRectangle)#getRectangle ())#x > (((Obj.magic pixelDelta)#getPoint ())#getX ())) then begin
            isPixelLeftOfTheRectangle := true
        end;
        if (not !isPixelLeftOfTheRectangle) then begin
            raise (Java_return (Obj.repr ((self#isPixelDeltaLikelyPartOfMotionRectangle ((Obj.magic motionRectangle), (Obj.magic pixelDelta))))))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method isPixelDeltaLikelyPartOfMotionRectangle : 'any1 'any2. 'any1 * 'any2 -> bool = fun (motionRectangle, pixelDelta) ->
        let motionRectangle = Obj.repr motionRectangle in
        let pixelDelta = Obj.repr pixelDelta in
        try
        begin
        let maxX : int ref = ref ((((Obj.magic motionRectangle)#getRectangle ())#x + ((Obj.magic motionRectangle)#getRectangle ())#width)) in ();
        let maxY : int ref = ref ((((Obj.magic motionRectangle)#getRectangle ())#y + ((Obj.magic motionRectangle)#getRectangle ())#height)) in ();
        let horizontalDistance : int ref = ref (((((Obj.magic pixelDelta)#getPoint ())#getX ()) - !maxX)) in ();
        let verticalDistance : int ref = ref (((((Obj.magic pixelDelta)#getPoint ())#getY ()) - !maxY)) in ();
        if ((!horizontalDistance < mAX_PIXEL_DISTANCE_THRESHOLD) && (!verticalDistance < mAX_PIXEL_DISTANCE_THRESHOLD)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        (self#createMotionRectangles (imageComparisonResult))
      end
  end
let () = java_register_constructor "AllMotionRectangles" (fun arguments -> Obj.repr (new allMotionRectangles (Obj.obj arguments)))


