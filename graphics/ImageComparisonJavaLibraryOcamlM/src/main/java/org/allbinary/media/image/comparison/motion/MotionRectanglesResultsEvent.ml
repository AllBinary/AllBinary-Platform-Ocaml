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
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)

class motionRectanglesResultsEvent ((anyType : Obj.t), (frame_arg : int), (motionRectangles_arg : MotionRectangles.motionRectangles)) =
  object (self)
    inherit AllBinaryEventObject.allBinaryEventObject (anyType)
    val mutable frame : int = (Obj.magic 0)
    method frame = frame
    method set_frame value' = frame <- value'
    val mutable motionRectangles : MotionRectangles.motionRectangles = (Obj.magic 0)
    method motionRectangles = motionRectangles
    method set_motionRectangles value' = motionRectangles <- value'
    
    

    method getMotionRectangles () : MotionRectangles.motionRectangles =
        begin
        (motionRectangles :> MotionRectangles.motionRectangles)
        end [@@warning "-7"]
    

    method setMotionRectangles : 'any1. 'any1 -> unit = fun (motionRectangles_arg) ->
        let motionRectangles_arg = Obj.repr motionRectangles_arg in
        begin
        motionRectangles <- (Obj.magic motionRectangles_arg)
        end [@@warning "-7-20"]
    

    method getFrame () : int =
        begin
        frame
        end [@@warning "-7"]

    initializer
      begin
        ();
        motionRectangles <- ((Obj.magic 0) :> MotionRectangles.motionRectangles);
        ();
        (* super(...) is the inherit clause *) ();
        frame <- frame_arg;
        (self#setMotionRectangles (motionRectangles_arg))
      end
  end
let () = java_register_constructor "MotionRectanglesResultsEvent" (fun arguments -> Obj.repr (new motionRectanglesResultsEvent (Obj.obj arguments)))


