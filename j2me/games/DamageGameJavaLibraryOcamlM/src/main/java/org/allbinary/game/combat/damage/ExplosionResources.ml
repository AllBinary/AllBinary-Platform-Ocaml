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
(* package org.allbinary.game.combat.damage *)

open Allbinary_java [@@warning "-33"]

class explosionResources () =
  object
    val mutable eXPLOSION_90_RESOURCE : string = ""
    method eXPLOSION_90_RESOURCE = eXPLOSION_90_RESOURCE
    method set_eXPLOSION_90_RESOURCE value' = eXPLOSION_90_RESOURCE <- value'
    val mutable eXPLOSION_60_RESOURCE : string = ""
    method eXPLOSION_60_RESOURCE = eXPLOSION_60_RESOURCE
    method set_eXPLOSION_60_RESOURCE value' = eXPLOSION_60_RESOURCE <- value'
    val mutable hALF_EXPLOSION_RESOURCE : string = ""
    method hALF_EXPLOSION_RESOURCE = hALF_EXPLOSION_RESOURCE
    method set_hALF_EXPLOSION_RESOURCE value' = hALF_EXPLOSION_RESOURCE <- value'
    val mutable tHIRD_EXPLOSION_RESOURCE : string = ""
    method tHIRD_EXPLOSION_RESOURCE = tHIRD_EXPLOSION_RESOURCE
    method set_tHIRD_EXPLOSION_RESOURCE value' = tHIRD_EXPLOSION_RESOURCE <- value'
    

    initializer
      begin
        eXPLOSION_90_RESOURCE <- "/explosion_sprite_90_by_90.png";
        eXPLOSION_60_RESOURCE <- "/explosion_sprite_60_by_60.png";
        hALF_EXPLOSION_RESOURCE <- "/explosion_sprite_30_by_30.png";
        tHIRD_EXPLOSION_RESOURCE <- "/explosion_sprite_15_by_15.png";
        ();
        ()
      end
  end
let () = java_register_constructor "ExplosionResources" (fun arguments -> Obj.repr (new explosionResources (Obj.obj arguments)))

let instance = (new explosionResources ())
let get_instance () = instance
let () = java_register_static "ExplosionResources.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ExplosionResources.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


