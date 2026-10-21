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
(* package org.allbinary.media.image.comparison *)

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
(* import org.allbinary.media.image.cache.BufferedImageCacheable *)
(* import org.allbinary.media.image.io.ImageIOInterface *)
(* import org.allbinary.string.CommonStrings *)

let rOOT_NAME : string = "_Changed_"
let get_rOOT_NAME () = rOOT_NAME
let () = java_register_static "ComparisonImageInputOutput.get_rOOT_NAME" (fun _ -> Obj.repr (get_rOOT_NAME ()))
class comparisonImageInputOutput () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method save ((frame : int)) : unit =
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        if (frame > 0) then begin
            let imageComparisonResultFrameCacheable : ImageComparisonResultFrameCacheable.imageComparisonResultFrameCacheable ref = ref (((Obj.magic (((Obj.magic (ImageComparisonResultCacheSingleton.getInstance ())))#get (frame))) :> ImageComparisonResultFrameCacheable.imageComparisonResultFrameCacheable)) in ();
            if (!imageComparisonResultFrameCacheable != (Obj.magic 0)) then begin
                let imageComparisonResult : ImageComparisonResult.imageComparisonResult ref = ref (((!imageComparisonResultFrameCacheable#getImageComparisonResult ()) :> ImageComparisonResult.imageComparisonResult)) in ();
                (self#save (!imageComparisonResult, (!imageComparisonResultFrameCacheable#getFrame ())))
            end else begin
                ignore ((Obj.magic logUtil)#putF (("Comparison Results Not Available for Output: " ^ java_string_of (Obj.repr (frame))), self, !commonStrings#sAVE))
            end
        end else begin
            ignore ((Obj.magic logUtil)#putF (("No Comparison Results: for first frame: " ^ java_string_of (Obj.repr (frame))), self, !commonStrings#sAVE))
        end
        end
    

    (* Java overload save(ImageComparisonResult, Long) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ComparisonImageInputOutput" (fun arguments -> Obj.repr (new comparisonImageInputOutput (Obj.obj arguments)))


