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
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.util.cache.CacheableInterface *)

class imageComparisonResultFrameCacheable ((imageComparisonResult_arg : ImageComparisonResult.imageComparisonResult), (frame_arg : int)) =
  object (self)
    val mutable frame : int = (Obj.magic 0)
    method frame = frame
    method set_frame value' = frame <- value'
    val mutable imageComparisonResult : ImageComparisonResult.imageComparisonResult = (Obj.magic 0)
    method imageComparisonResult = imageComparisonResult
    method set_imageComparisonResult value' = imageComparisonResult <- value'
    
    

    method getKey () : Obj.t =
        begin
        (Obj.repr (frame))
        end
    

    method getFrame () : int =
        begin
        frame
        end
    

    method setFrame ((frame_arg : int)) : unit =
        begin
        frame <- frame_arg
        end
    

    method getImageComparisonResult () : ImageComparisonResult.imageComparisonResult =
        begin
        (imageComparisonResult :> ImageComparisonResult.imageComparisonResult)
        end
    

    method setImageComparisonResult : 'any1. 'any1 -> unit = fun (imageComparisonResult_arg) ->
        let imageComparisonResult_arg = Obj.repr imageComparisonResult_arg in
        begin
        imageComparisonResult <- (Obj.magic imageComparisonResult_arg)
        end [@@warning "-20"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((java_get_class (Obj.repr self))));
        ignore (!stringBuffer#append (" Frame: "));
        ignore (!stringBuffer#appendlong ((self#getFrame ())));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        ();
        imageComparisonResult <- ((Obj.magic 0) :> ImageComparisonResult.imageComparisonResult);
        ();
        (self#setImageComparisonResult (imageComparisonResult_arg));
        frame <- frame_arg
      end
  end
let () = java_register_constructor "ImageComparisonResultFrameCacheable" (fun arguments -> Obj.repr (new imageComparisonResultFrameCacheable (Obj.obj arguments)))


