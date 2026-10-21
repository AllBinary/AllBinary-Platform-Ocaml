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


let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((ImageCacheFactory.getInstance ())))
        end

and init () : unit =
        begin
        ignore (ImageCacheFactory.init ())
        end

and releaseAll () : unit =
        begin
        ignore ((ImageCacheFactory.getInstance ())#releaseAll ())
        end

let () = java_register_static "GameFeatureImageCacheFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
let () = java_register_static "GameFeatureImageCacheFactory.init" (fun arguments -> Obj.repr (init (Obj.obj arguments)))
let () = java_register_static "GameFeatureImageCacheFactory.releaseAll" (fun arguments -> Obj.repr (releaseAll (Obj.obj arguments)))
class gameFeatureImageCacheFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "GameFeatureImageCacheFactory" (fun arguments -> Obj.repr (new gameFeatureImageCacheFactory (Obj.obj arguments)))


