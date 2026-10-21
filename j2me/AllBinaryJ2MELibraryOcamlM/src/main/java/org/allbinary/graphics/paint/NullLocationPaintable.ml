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
(* package org.allbinary.graphics.paint *)

open Allbinary_java [@@warning "-33"]

class nullLocationPaintable () =
  object
    inherit LocationPaintable.locationPaintable ()

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullLocationPaintable" (fun arguments -> Obj.repr (new nullLocationPaintable (Obj.obj arguments)))

let instanceC = (new nullLocationPaintable ())
let get_instanceC () = instanceC
let () = java_register_static "NullLocationPaintable.get_instanceC" (fun _ -> Obj.repr (get_instanceC ()))

let getInstance () =
        begin
        instanceC
        end
let () = java_register_static "NullLocationPaintable.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


