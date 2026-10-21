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
(* package org.allbinary.input.motion *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.input.motion.button.TouchButtonRecognizer *)

class onlyTouchButtonRecognizer () =
  object
    inherit MotionRecognizer.motionRecognizer ()
    val mutable touchButtonRecognizer : TouchButtonRecognizer.touchButtonRecognizer = (Obj.magic 0)
    method touchButtonRecognizer = touchButtonRecognizer
    method set_touchButtonRecognizer value' = touchButtonRecognizer <- value'
    val mutable touchButtonProcessing : bool = false
    method touchButtonProcessing = touchButtonProcessing
    method set_touchButtonProcessing value' = touchButtonProcessing <- value'
    
    

    method processStartMotionEvent ((x : int), (y : int), (deviceId : int), (_modifiers : int)) : unit =
        begin
        if (touchButtonRecognizer#pressTouchButtonInput (x, y, deviceId)) then begin
            touchButtonProcessing <- true
        end
        end [@@warning "-7"]
    

    method processEndMotionEvent ((x : int), (y : int), (deviceId : int), (_modifiers : int)) : unit =
        try
        begin
        if touchButtonProcessing then begin
            touchButtonProcessing <- false
        end;
        if (touchButtonRecognizer#releaseTouchButtonInput (x, y, deviceId)) then begin
            raise (Java_return (Obj.repr (())))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method processDraggedMotionEvent ((x : int), (y : int), (deviceId : int), (_modifiers : int)) : unit =
        begin
        if touchButtonProcessing then begin
            ignore (touchButtonRecognizer#pressTouchButtonInput (x, y, deviceId))
        end
        end [@@warning "-7"]

    initializer
      begin
        ();
        touchButtonProcessing <- false;
        ();
        touchButtonRecognizer <- (new TouchButtonRecognizer.touchButtonRecognizer ())
      end
  end
let () = java_register_constructor "OnlyTouchButtonRecognizer" (fun arguments -> Obj.repr (new onlyTouchButtonRecognizer (Obj.obj arguments)))


