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
(* package org.allbinary.game.ag.layer.pickup.health *)

open Allbinary_java [@@warning "-33"]

class healthResources () =
  object
    val mutable rESOURCE : string = ""
    method rESOURCE = rESOURCE
    method set_rESOURCE value' = rESOURCE <- value'
    

    initializer
      begin
        rESOURCE <- "health_drop_20_by_20.png";
        ();
        ()
      end
  end
let () = java_register_constructor "HealthResources" (fun arguments -> Obj.repr (new healthResources (Obj.obj arguments)))

let sINGLETON = (new healthResources ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "HealthResources.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "HealthResources.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


