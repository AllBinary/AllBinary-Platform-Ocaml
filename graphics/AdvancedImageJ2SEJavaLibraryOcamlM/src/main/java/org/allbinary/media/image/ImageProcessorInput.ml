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
(* import java.awt.image.BufferedImage *)
(* import java.io.File *)

class imageProcessorInput (files_arg, bufferedImageArray_arg) =
  object
    val mutable bufferedImageArray : Obj.t = Obj.repr 0
    method bufferedImageArray : 'r. 'r = Obj.magic bufferedImageArray
    method set_bufferedImageArray : 'v. 'v -> unit = fun value' -> bufferedImageArray <- Obj.repr value'
    val mutable files : Obj.t = Obj.repr 0
    method files : 'r. 'r = Obj.magic files
    method set_files : 'v. 'v -> unit = fun value' -> files <- Obj.repr value'
    
    

    method getBufferedImageArray : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic bufferedImageArray)))
        end
    

    method getFiles : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic files)))
        end

    initializer
      begin
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        bufferedImageArray <- Obj.repr (bufferedImageArray_arg);
        files <- Obj.repr (files_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageProcessorInput" (fun arguments -> Obj.repr (new imageProcessorInput (Obj.obj arguments)))


