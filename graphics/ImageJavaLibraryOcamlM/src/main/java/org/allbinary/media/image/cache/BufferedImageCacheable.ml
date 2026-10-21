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
(* package org.allbinary.media.image.cache *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.image.BufferedImage *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.util.cache.CacheableInterface *)

class bufferedImageCacheable ((key_arg : BufferedImageInfo.bufferedImageInfo)) =
  object (self)
    val mutable key : BufferedImageInfo.bufferedImageInfo = (Obj.magic 0)
    method key = key
    method set_key value' = key <- value'
    val mutable bufferedImage : Obj.t = Obj.repr 0
    method bufferedImage : 'r. 'r = Obj.magic bufferedImage
    method set_bufferedImage : 'v. 'v -> unit = fun value' -> bufferedImage <- Obj.repr value'
    
    

    method getKey () : Obj.t =
        begin
        (Obj.repr (key))
        end
    

    method getBufferedImage : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic bufferedImage)))
        end
    

    method setBufferedImage : 'any1. 'any1 -> unit = fun (bufferedImage_arg) ->
        let bufferedImage_arg = Obj.repr bufferedImage_arg in
        begin
        bufferedImage <- Obj.repr ((Obj.magic bufferedImage_arg))
        end [@@warning "-20"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((java_get_class (Obj.repr self))));
        ignore (!stringBuffer#append (" "));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (self#getKey ())))));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        ();
        bufferedImage <- (Obj.repr (Obj.magic 0));
        ();
        key <- key_arg;
        (self#setBufferedImage ((new BufferedImage.bufferedImage ((key_arg#getWidth ()), (key_arg#getHeight ()), (key_arg#getType ())))))
      end
  end [@@warning "-20"]
let () = java_register_constructor "BufferedImageCacheable" (fun arguments -> Obj.repr (new bufferedImageCacheable (Obj.obj arguments)))


