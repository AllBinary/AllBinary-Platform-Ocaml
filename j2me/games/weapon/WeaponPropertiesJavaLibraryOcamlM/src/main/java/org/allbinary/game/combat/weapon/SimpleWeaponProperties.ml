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
(* package org.allbinary.game.combat.weapon *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class simpleWeaponProperties () =
  object (self)
    val mutable damage : int = 0
    method damage = damage
    method set_damage value' = damage <- value'
    val mutable dissipation : int = 0
    method dissipation = dissipation
    method set_dissipation value' = dissipation <- value'
    val mutable range : int = 0
    method range = range
    method set_range value' = range <- value'
    

    method set : 'any1. 'any1 -> unit = fun (simpleWeaponProperties) ->
        let simpleWeaponProperties = Obj.repr simpleWeaponProperties in
        begin
        (self#setDamage (((Obj.magic simpleWeaponProperties)#getDamage ())));
        (self#setDissipation (((Obj.magic simpleWeaponProperties)#getDissipation ())));
        (self#setRange (((Obj.magic simpleWeaponProperties)#getRange ())))
        end [@@warning "-20"]
    

    method setDamage ((damage_arg : int)) : unit =
        begin
        damage <- damage_arg
        end
    

    method getDamage () : int =
        begin
        damage
        end
    

    method setDissipation ((dissipation_arg : int)) : unit =
        begin
        dissipation <- dissipation_arg
        end
    

    method getDissipation () : int =
        begin
        dissipation
        end
    

    method getRange () : int =
        begin
        range
        end
    

    method setRange ((range_arg : int)) : unit =
        begin
        range <- range_arg
        end

    initializer
      begin
        damage <- 0;
        dissipation <- 0;
        range <- 0;
        ()
      end
  end
let () = java_register_constructor "SimpleWeaponProperties" (fun arguments -> Obj.repr (new simpleWeaponProperties (Obj.obj arguments)))


