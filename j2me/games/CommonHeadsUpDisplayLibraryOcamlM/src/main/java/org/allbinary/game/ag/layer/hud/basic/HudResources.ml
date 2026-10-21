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
(* package org.allbinary.game.ag.layer.hud.basic *)

open Allbinary_java [@@warning "-33"]

class hudResources () =
  object
    val mutable rESOURCE_LIFE : string = ""
    method rESOURCE_LIFE = rESOURCE_LIFE
    method set_rESOURCE_LIFE value' = rESOURCE_LIFE <- value'
    val mutable rESOURCE_HEALTH : string = ""
    method rESOURCE_HEALTH = rESOURCE_HEALTH
    method set_rESOURCE_HEALTH value' = rESOURCE_HEALTH <- value'
    

    initializer
      begin
        rESOURCE_LIFE <- "/hud_life_10_by_10.png";
        rESOURCE_HEALTH <- "/hud_health_10_by_10.png";
        ();
        ()
      end
  end
let () = java_register_constructor "HudResources" (fun arguments -> Obj.repr (new hudResources (Obj.obj arguments)))

let instance = (new hudResources ())
let get_instance () = instance
let () = java_register_static "HudResources.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "HudResources.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


