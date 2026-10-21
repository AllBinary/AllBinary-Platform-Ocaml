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
(* package org.allbinary.input.media.image.capture *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.image.BufferedImage *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)

class capturedImageWorkerResultsEvent ((anyType : Obj.t), (frame_arg : int), bufferedImage_arg) =
  object (self)
    inherit AllBinaryEventObject.allBinaryEventObject (anyType)
    val mutable frame : int = (Obj.magic 0)
    method frame = frame
    method set_frame value' = frame <- value'
    val mutable bufferedImage : Obj.t = Obj.repr 0
    method bufferedImage : 'r. 'r = Obj.magic bufferedImage
    method set_bufferedImage : 'v. 'v -> unit = fun value' -> bufferedImage <- Obj.repr value'
    
    

    method getBufferedImage : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic bufferedImage)))
        end [@@warning "-7"]
    

    method setBufferedImage : 'any1. 'any1 -> unit = fun (bufferedImage_arg) ->
        let bufferedImage_arg = Obj.repr bufferedImage_arg in
        begin
        bufferedImage <- Obj.repr ((Obj.magic bufferedImage_arg))
        end [@@warning "-7-20"]
    

    method getFrame () : int =
        begin
        frame
        end [@@warning "-7"]

    initializer
      begin
        ();
        bufferedImage <- (Obj.repr (Obj.magic 0));
        ();
        (* super(...) is the inherit clause *) ();
        frame <- frame_arg;
        (self#setBufferedImage (bufferedImage_arg))
      end
  end [@@warning "-20"]
let () = java_register_constructor "CapturedImageWorkerResultsEvent" (fun arguments -> Obj.repr (new capturedImageWorkerResultsEvent (Obj.obj arguments)))


