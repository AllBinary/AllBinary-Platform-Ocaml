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
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.util.cache.CacheableInterface *)

class motionRectanglesResultsFrameCacheable ((motionRectangles_arg : MotionRectangles.motionRectangles), (frame_arg : int)) =
  object (self)
    val mutable motionRectangles : MotionRectangles.motionRectangles = (Obj.magic 0)
    method motionRectangles = motionRectangles
    method set_motionRectangles value' = motionRectangles <- value'
    val mutable frame : int = (Obj.magic 0)
    method frame = frame
    method set_frame value' = frame <- value'
    
    

    method getKey () : Obj.t =
        begin
        (Obj.repr (frame))
        end
    

    method getMotionRectangles () : MotionRectangles.motionRectangles =
        begin
        (motionRectangles :> MotionRectangles.motionRectangles)
        end
    

    method setMotionRectangles : 'any1. 'any1 -> unit = fun (motionRectangles_arg) ->
        let motionRectangles_arg = Obj.repr motionRectangles_arg in
        begin
        motionRectangles <- (Obj.magic motionRectangles_arg)
        end [@@warning "-20"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((java_get_class (Obj.repr self))));
        ignore (!stringBuffer#append (" Frame: "));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (self#getKey ())))));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        motionRectangles <- ((Obj.magic 0) :> MotionRectangles.motionRectangles);
        ();
        ();
        frame <- frame_arg;
        (self#setMotionRectangles (motionRectangles_arg))
      end
  end
let () = java_register_constructor "MotionRectanglesResultsFrameCacheable" (fun arguments -> Obj.repr (new motionRectanglesResultsFrameCacheable (Obj.obj arguments)))


