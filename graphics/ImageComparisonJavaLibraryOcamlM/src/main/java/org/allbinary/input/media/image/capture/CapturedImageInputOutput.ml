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
(* import org.allbinary.input.automation.ImageOutputData *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.java.number.LongUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.util.cache.AutomaticCacheInterface *)
(* import org.allbinary.logic.visual.media.MediaDataFactory *)
(* import org.allbinary.media.image.ImagePersistanceUtil *)
(* import org.allbinary.media.image.ImageUtil *)
(* import org.allbinary.media.image.cache.BufferedImageFrameCacheable *)
(* import org.allbinary.media.image.io.ImageIOInterface *)
(* import org.allbinary.string.CommonStrings *)

class capturedImageInputOutput () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    

    method save ((frame : int)) : unit =
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        let capturedBufferedImageCacheable : BufferedImageFrameCacheable.bufferedImageFrameCacheable ref = ref ((((Obj.magic (((Obj.magic (CapturedBufferedImagesCacheSingleton.getInstance ())))#get (frame)))) :> BufferedImageFrameCacheable.bufferedImageFrameCacheable)) in ();
        ignore ((Obj.magic logUtil)#putF ((("Saving: " ^ (java_string_of (Obj.repr !capturedBufferedImageCacheable)))), self, !commonStrings#sAVE));
        (self#save ((!capturedBufferedImageCacheable#getBufferedImage ()), frame))
        end
    

    (* Java overload save(BufferedImage, Long) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "CapturedImageInputOutput" (fun arguments -> Obj.repr (new capturedImageInputOutput (Obj.obj arguments)))


