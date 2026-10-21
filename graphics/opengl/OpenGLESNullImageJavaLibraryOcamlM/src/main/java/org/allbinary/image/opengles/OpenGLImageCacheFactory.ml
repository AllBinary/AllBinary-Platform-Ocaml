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
(* package org.allbinary.image.opengles *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.image.ImageCache *)

let iMAGE_CACHE : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "ImageCache.get_nULL_IMAGE_CACHE" (Obj.repr ())))))
let get_iMAGE_CACHE () = Obj.magic !iMAGE_CACHE
let set_iMAGE_CACHE value' = iMAGE_CACHE := Obj.repr value'
let () = java_register_static "OpenGLImageCacheFactory.get_iMAGE_CACHE" (fun _ -> Obj.repr (get_iMAGE_CACHE ()))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic !iMAGE_CACHE)))
        end

and init () : unit =
        begin
        if ((Obj.magic !iMAGE_CACHE) == (Obj.magic 0)) then begin
            ()
        end
        end

let () = java_register_static "OpenGLImageCacheFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
let () = java_register_static "OpenGLImageCacheFactory.init" (fun arguments -> Obj.repr (init (Obj.obj arguments)))
class openGLImageCacheFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "OpenGLImageCacheFactory" (fun arguments -> Obj.repr (new openGLImageCacheFactory (Obj.obj arguments)))


