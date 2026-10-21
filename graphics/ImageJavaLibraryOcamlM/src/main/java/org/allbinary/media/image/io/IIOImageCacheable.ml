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
(* package org.allbinary.media.image.io *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.image.BufferedImage *)
(* import javax.imageio.IIOImage *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.util.cache.CacheableInterface *)

class iIOImageCacheable ((key_arg : string)) =
  object (self)
    val mutable key : string = ""
    method key = key
    method set_key value' = key <- value'
    val mutable iioImage : Obj.t = Obj.repr 0
    method iioImage : 'r. 'r = Obj.magic iioImage
    method set_iioImage : 'v. 'v -> unit = fun value' -> iioImage <- Obj.repr value'
    
    

    method getKey () : Obj.t =
        begin
        (Obj.repr (key))
        end
    

    method setBufferedImage : 'any1. 'any1 -> unit = fun (bufferedImage) ->
        let bufferedImage = Obj.repr bufferedImage in
        begin
        (self#setIioImage ((new IIOImage.iIOImage ((Obj.magic bufferedImage), (Obj.magic 0), (Obj.magic 0)))))
        end [@@warning "-20"]
    

    method getIioImage : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic iioImage)))
        end
    

    method setIioImage : 'any1. 'any1 -> unit = fun (iioImage_arg) ->
        let iioImage_arg = Obj.repr iioImage_arg in
        begin
        iioImage <- Obj.repr ((Obj.magic iioImage_arg))
        end [@@warning "-20"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((java_get_class (Obj.repr self))));
        ignore (!stringBuffer#append (" Reusable IIOImage"));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        ();
        iioImage <- (Obj.repr (Obj.magic 0));
        ();
        key <- key_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "IIOImageCacheable" (fun arguments -> Obj.repr (new iIOImageCacheable (Obj.obj arguments)))


