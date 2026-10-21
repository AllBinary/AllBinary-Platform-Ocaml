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
(* package org.allbinary.graphics.color *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt *)
(* import org.allbinary.logic.util.cache.CacheableInterface *)

class colorCacheable ((key_arg : Obj.t)) =
  object
    val mutable key : Obj.t = (Obj.magic 0)
    method key = key
    method set_key value' = key <- value'
    val mutable color : Obj.t = Obj.repr 0
    method color : 'r. 'r = Obj.magic color
    method set_color : 'v. 'v -> unit = fun value' -> color <- Obj.repr value'
    
    

    method getKey () : Obj.t =
        begin
        (Obj.repr (key))
        end
    

    method getColor : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic color)))
        end
    

    method setColor : 'any1. 'any1 -> unit = fun (color_arg) ->
        let color_arg = Obj.repr color_arg in
        begin
        color <- Obj.repr ((Obj.magic color_arg))
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        ();
        key <- key_arg;
        color <- Obj.repr ((Obj.obj (java_new "Color" (Obj.repr ((((Obj.magic key_arg))#intValue ()))))))
      end
  end [@@warning "-20"]
let () = java_register_constructor "ColorCacheable" (fun arguments -> Obj.repr (new colorCacheable (Obj.obj arguments)))


