(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.thread *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory *)
(* import org.allbinary.image.ImageCache *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class concurrentImageLoadingProcessor (imageCache_arg) =
  object
    inherit BaseImageLoadingProcessor.baseImageLoadingProcessor ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable runnable : ABRunnable.aBRunnable = (Obj.magic 0)
    method runnable = runnable
    method set_runnable value' = runnable <- value'
    
    

    method runTask () : unit =
        begin
        if (not (runnable#isRunning ())) then begin
            ignore ((ImageThreadPool.getInstance ())#runTask (runnable))
        end
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        runnable <- (new ImageCacheRunnable.imageCacheRunnable (imageCache_arg))
      end
  end [@@warning "-20"]
let () = java_register_constructor "ConcurrentImageLoadingProcessor" (fun arguments -> Obj.repr (new concurrentImageLoadingProcessor (Obj.obj arguments)))


