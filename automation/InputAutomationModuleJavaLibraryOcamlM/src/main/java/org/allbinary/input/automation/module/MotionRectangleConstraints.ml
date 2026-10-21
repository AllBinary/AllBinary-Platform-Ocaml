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
(* package org.allbinary.input.automation.module *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt *)
(* import java.awt.image.BufferedImage *)
(* import org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface *)

class motionRectangleConstraints () =
  object (self)
    val mutable minDimension : Obj.t = Obj.repr 0
    method minDimension : 'r. 'r = Obj.magic minDimension
    method set_minDimension : 'v. 'v -> unit = fun value' -> minDimension <- Obj.repr value'
    val mutable maxDimension : Obj.t = Obj.repr 0
    method maxDimension : 'r. 'r = Obj.magic maxDimension
    method set_maxDimension : 'v. 'v -> unit = fun value' -> maxDimension <- Obj.repr value'
    val mutable maxMotionRectangles : int = 0
    method maxMotionRectangles = maxMotionRectangles
    method set_maxMotionRectangles value' = maxMotionRectangles <- value'
    val mutable minArea : int = 0
    method minArea = minArea
    method set_minArea value' = minArea <- value'
    
    

    method getMinDimension : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic minDimension)))
        end
    

    method getMaxDimension : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic maxDimension)))
        end
    

    method isTooSmall : 'any1. 'any1 -> bool = fun (rectangle) ->
        let rectangle = Obj.repr rectangle in
        try
        begin
        if (((Obj.magic rectangle)#width < (self#getMinDimension ())#width) || ((Obj.magic rectangle)#height < (self#getMinDimension ())#height)) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method isAreaTooSmall : 'any1. 'any1 -> bool = fun (rectangle) ->
        let rectangle = Obj.repr rectangle in
        try
        begin
        if (((Obj.magic rectangle)#width * (Obj.magic rectangle)#height) < (self#getMinArea ())) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method isTooBig : 'any1. 'any1 -> bool = fun (rectangle) ->
        let rectangle = Obj.repr rectangle in
        try
        begin
        if (((Obj.magic rectangle)#width > (self#getMaxDimension ())#width) || ((Obj.magic rectangle)#height > (self#getMaxDimension ())#height)) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method isValid : 'any2 'any3. int * 'any2 * 'any3 -> bool = fun ((_frame : int), _bufferedImage, _rectangle) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method setMinDimension : 'any1. 'any1 -> unit = fun (minDimension_arg) ->
        let minDimension_arg = Obj.repr minDimension_arg in
        begin
        minDimension <- Obj.repr ((Obj.magic minDimension_arg))
        end [@@warning "-20"]
    

    method setMaxDimension : 'any1. 'any1 -> unit = fun (maxDimension_arg) ->
        let maxDimension_arg = Obj.repr maxDimension_arg in
        begin
        maxDimension <- Obj.repr ((Obj.magic maxDimension_arg))
        end [@@warning "-20"]
    

    method getMaxMotionRectangles () : int =
        begin
        maxMotionRectangles
        end
    

    method setMaxMotionRectangles ((maxMotionRectangles_arg : int)) : unit =
        begin
        maxMotionRectangles <- maxMotionRectangles_arg
        end
    

    method getMinArea () : int =
        begin
        minArea
        end
    

    method setMinArea ((minArea_arg : int)) : unit =
        begin
        minArea <- minArea_arg
        end

    initializer
      begin
        minDimension <- (Obj.repr (Obj.magic 0));
        maxDimension <- (Obj.repr (Obj.magic 0));
        maxMotionRectangles <- 0;
        minArea <- 0;
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "MotionRectangleConstraints" (fun arguments -> Obj.repr (new motionRectangleConstraints (Obj.obj arguments)))


