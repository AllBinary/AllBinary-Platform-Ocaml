(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.rts.technology *)

open Allbinary_java [@@warning "-33"]

class unitTechnologySingletonFactory () =
  object (self)
    val mutable damage : int = 0
    method damage = damage
    method set_damage value' = damage <- value'
    val mutable health : int = 0
    method health = health
    method set_health value' = health <- value'
    val mutable reload : int = 0
    method reload = reload
    method set_reload value' = reload <- value'
    val mutable repair : int = 0
    method repair = repair
    method set_repair value' = repair <- value'
    val mutable speed : int = 0
    method speed = speed
    method set_speed value' = speed <- value'
    
    

    method init () : unit =
        begin
        (self#setDamage (0));
        (self#setHealth (0));
        (self#setReload (0));
        (self#setRepair (0));
        (self#setSpeed (0))
        end
    

    method getDamage () : int =
        begin
        damage
        end
    

    method setDamage ((damage_arg : int)) : unit =
        begin
        damage <- damage_arg
        end
    

    method getHealth () : int =
        begin
        health
        end
    

    method setHealth ((health_arg : int)) : unit =
        begin
        health <- health_arg
        end
    

    method getReload () : int =
        begin
        reload
        end
    

    method setReload ((reload_arg : int)) : unit =
        begin
        reload <- reload_arg
        end
    

    method getRepair () : int =
        begin
        repair
        end
    

    method setRepair ((repair_arg : int)) : unit =
        begin
        repair <- repair_arg
        end
    

    method getSpeed () : int =
        begin
        speed
        end
    

    method setSpeed ((speed_arg : int)) : unit =
        begin
        speed <- speed_arg
        end

    initializer
      begin
        damage <- 0;
        health <- 0;
        reload <- 0;
        repair <- 0;
        speed <- 0;
        ();
        ()
      end
  end
let () = java_register_constructor "UnitTechnologySingletonFactory" (fun arguments -> Obj.repr (new unitTechnologySingletonFactory (Obj.obj arguments)))

let instance = (new unitTechnologySingletonFactory ())
let get_instance () = instance
let () = java_register_static "UnitTechnologySingletonFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "UnitTechnologySingletonFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


