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
(* package org.allbinary.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]


let init () : unit =
        begin
        ()
        end

let () = java_register_static "ImageCacheFactory.init" (fun arguments -> Obj.repr (init (Obj.obj arguments)))
class imageCacheFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ImageCacheFactory" (fun arguments -> Obj.repr (new imageCacheFactory (Obj.obj arguments)))

let iMAGE_CACHE : Obj.t = (Obj.repr (Obj.obj (java_new "ImageCache" (Obj.repr ()))))
let get_iMAGE_CACHE () = Obj.magic iMAGE_CACHE
let () = java_register_static "ImageCacheFactory.get_iMAGE_CACHE" (fun _ -> Obj.repr (get_iMAGE_CACHE ()))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic iMAGE_CACHE)))
        end
let () = java_register_static "ImageCacheFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


