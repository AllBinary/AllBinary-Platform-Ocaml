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
(* package org.allbinary.media.image.comparison.color *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.util.cache.CacheableInterface *)
(* import org.allbinary.string.CommonSeps *)


(* Java overload getKey(INT, INT) is not converted: OCaml has one method per name *)
class colorDelta ((rgb1_arg : int), (rgb2_arg : int)) =
  object (self)
    val mutable rgb1 : int = 0
    method rgb1 = rgb1
    method set_rgb1 value' = rgb1 <- value'
    val mutable rgb2 : int = 0
    method rgb2 = rgb2
    method set_rgb2 value' = rgb2 <- value'
    val mutable key : Obj.t = (Obj.magic 0)
    method key = key
    method set_key value' = key <- value'
    
    

    method getKey () : Obj.t =
        begin
        (Obj.repr (key))
        end
    

    method getRgb1 () : int =
        begin
        rgb1
        end
    

    method setRgb1 ((rgb1_arg : int)) : unit =
        begin
        rgb1 <- rgb1_arg
        end
    

    method getRgb2 () : int =
        begin
        rgb2
        end
    

    method setRgb2 ((rgb2_arg : int)) : unit =
        begin
        rgb2 <- rgb2_arg
        end
    

    method toString () : string =
        begin
        (java_string_of (Obj.repr (((((((new StringMaker.stringMaker ())#append ("ColorDelta: "))#append (((StringUtil.getInstance ())#toString ((self#getKey ())))))#append (" RGB1: "))#appendint ((self#getRgb1 ())))#append (" RGB2: "))#appendint ((self#getRgb2 ())))))
        end

    initializer
      begin
        rgb1 <- 0;
        rgb2 <- 0;
        ();
        ();
        (self#setRgb1 (rgb1_arg));
        (self#setRgb2 (rgb2_arg));
        key <- (getKey (rgb1_arg, rgb2_arg))
      end
  end
let () = java_register_constructor "ColorDelta" (fun arguments -> Obj.repr (new colorDelta (Obj.obj arguments)))


