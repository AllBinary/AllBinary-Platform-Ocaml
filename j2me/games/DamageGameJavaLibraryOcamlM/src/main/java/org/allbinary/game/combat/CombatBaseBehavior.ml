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
(* package org.allbinary.game.combat *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.combat.damage.DamageableBaseBehavior *)
(* import org.allbinary.game.combat.destroy.DestroyableBaseBehavior *)

class combatBaseBehavior ((damageableBaseBehavior_arg : DamageableBaseBehavior.damageableBaseBehavior), (destroyableBaseBehavior_arg : DestroyableBaseBehavior.destroyableBaseBehavior)) =
  object
    val mutable damageableBaseBehavior : DamageableBaseBehavior.damageableBaseBehavior = (Obj.magic 0)
    method damageableBaseBehavior = damageableBaseBehavior
    method set_damageableBaseBehavior value' = damageableBaseBehavior <- value'
    val mutable destroyableBaseBehavior : DestroyableBaseBehavior.destroyableBaseBehavior = (Obj.magic 0)
    method destroyableBaseBehavior = destroyableBaseBehavior
    method set_destroyableBaseBehavior value' = destroyableBaseBehavior <- value'
    val mutable readyForExplosion : bool = false
    method readyForExplosion = readyForExplosion
    method set_readyForExplosion value' = readyForExplosion <- value'
    
    

    method getDamageableBaseBehavior () : DamageableBaseBehavior.damageableBaseBehavior =
        begin
        (damageableBaseBehavior :> DamageableBaseBehavior.damageableBaseBehavior)
        end
    

    method getDestroyableBaseBehavior () : DestroyableBaseBehavior.destroyableBaseBehavior =
        begin
        (destroyableBaseBehavior :> DestroyableBaseBehavior.destroyableBaseBehavior)
        end
    

    method isReadyForExplosion () : bool =
        begin
        readyForExplosion
        end
    

    method setReadyForExplosion ((readyForExplosion_arg : bool)) : unit =
        begin
        readyForExplosion <- readyForExplosion_arg
        end

    initializer
      begin
        ();
        ();
        readyForExplosion <- false;
        ();
        damageableBaseBehavior <- damageableBaseBehavior_arg;
        destroyableBaseBehavior <- destroyableBaseBehavior_arg
      end
  end
let () = java_register_constructor "CombatBaseBehavior" (fun arguments -> Obj.repr (new combatBaseBehavior (Obj.obj arguments)))

let nULL_COMBAT_BEHAVIOR = (new combatBaseBehavior ((DamageableBaseBehavior.getInstance ()), (DestroyableBaseBehavior.getInstance ())))
let get_nULL_COMBAT_BEHAVIOR () = nULL_COMBAT_BEHAVIOR
let () = java_register_static "CombatBaseBehavior.get_nULL_COMBAT_BEHAVIOR" (fun _ -> Obj.repr (get_nULL_COMBAT_BEHAVIOR ()))


