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
(* import java.awt.image.BufferedImage *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.input.automation.ImageOutputData *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.java.number.LongUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.util.cache.AutomaticCacheInterface *)
(* import org.allbinary.logic.util.cache.PoolInterface *)
(* import org.allbinary.logic.visual.media.MediaDataFactory *)
(* import org.allbinary.media.image.ImagePersistanceUtil *)
(* import org.allbinary.media.image.cache.BufferedImageCacheable *)
(* import org.allbinary.media.image.cache.BufferedImageInfo *)
(* import org.allbinary.media.image.cache.BufferedImageInfoFactory *)
(* import org.allbinary.media.image.cache.BufferedImagePoolSingleton *)
(* import org.allbinary.media.image.comparison.ImageComparisonResult *)
(* import org.allbinary.media.image.io.ImageIOInterface *)
(* import org.allbinary.string.CommonStrings *)

class motionRectanglesImageInputOutput () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable nUMBER_OF_IMAGES : int = 0
    method nUMBER_OF_IMAGES = nUMBER_OF_IMAGES
    method set_nUMBER_OF_IMAGES value' = nUMBER_OF_IMAGES <- value'
    
    

    method save ((frame : int)) : unit =
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        let motionRectanglesResultsFrameCacheable : Obj.t ref = ref ((Obj.repr (Obj.magic (((Obj.magic (AllMotionRectanglesResultsCacheSingleton.getInstance ())))#get (frame))))) in ();
        if ((Obj.magic !motionRectanglesResultsFrameCacheable) != (Obj.magic 0)) then begin
            let motionRectangles : Obj.t ref = ref ((Obj.repr ((Obj.magic !motionRectanglesResultsFrameCacheable)#getMotionRectangles ()))) in ();
            (self#save ((Obj.magic !motionRectangles), frame));
            motionRectanglesResultsFrameCacheable := Obj.repr ((Obj.magic (((Obj.magic (ConsolidatedMotionRectanglesResultsCacheSingleton.getInstance ())))#get (frame))));
            motionRectangles := Obj.repr (((Obj.magic !motionRectanglesResultsFrameCacheable)#getMotionRectangles ()));
            (self#save ((Obj.magic !motionRectangles), frame));
            motionRectanglesResultsFrameCacheable := Obj.repr ((Obj.magic (((Obj.magic (ConstrainedMotionRectanglesResultsCacheSingleton.getInstance ())))#get (frame))));
            motionRectangles := Obj.repr (((Obj.magic !motionRectanglesResultsFrameCacheable)#getMotionRectangles ()));
            (self#save ((Obj.magic !motionRectangles), frame))
        end else begin
            ignore ((Obj.magic logUtil)#putF (("No Motion Rectangle Results for Frame: " ^ java_string_of (Obj.repr (frame))), self, !commonStrings#sAVE))
        end
        end
    

    (* Java overload save(MotionRectangles, Long) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        nUMBER_OF_IMAGES <- 1;
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "MotionRectanglesImageInputOutput" (fun arguments -> Obj.repr (new motionRectanglesImageInputOutput (Obj.obj arguments)))


