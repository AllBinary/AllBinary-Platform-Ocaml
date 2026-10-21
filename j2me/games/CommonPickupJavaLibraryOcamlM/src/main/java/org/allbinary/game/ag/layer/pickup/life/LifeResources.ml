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
(* package org.allbinary.game.ag.layer.pickup.life *)

open Allbinary_java [@@warning "-33"]

class lifeResources () =
  object
    val mutable rESOURCE : string = ""
    method rESOURCE = rESOURCE
    method set_rESOURCE value' = rESOURCE <- value'
    

    initializer
      begin
        rESOURCE <- "life_drop_20_by_20.png";
        ();
        ()
      end
  end
let () = java_register_constructor "LifeResources" (fun arguments -> Obj.repr (new lifeResources (Obj.obj arguments)))

let sINGLETON = (new lifeResources ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "LifeResources.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "LifeResources.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


