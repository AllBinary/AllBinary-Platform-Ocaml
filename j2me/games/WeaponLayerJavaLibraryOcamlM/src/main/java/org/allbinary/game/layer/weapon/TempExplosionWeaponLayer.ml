(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer.weapon *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.game.combat.weapon.WeaponProperties *)
(* import org.allbinary.game.multiplayer.layer.RemoteInfo *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.physics.movement.Movement *)
(* import org.allbinary.time.GameTickTimeDelayHelperFactory *)
(* import org.allbinary.time.TimeDelayHelper *)
(* import org.allbinary.view.ViewPositionBase *)

class tempExplosionWeaponLayer ((name : string), (movement : Movement.movement), animationInterface, rectangle, (viewPosition : ViewPositionBase.viewPositionBase), (timeDelay : int)) =
  object (self)
    inherit SimpleWeaponLayer.simpleWeaponLayer (name, (Obj.magic (java_call_static "RemoteInfo.get_rEMOTE_INFO" (Obj.repr ()))), (-1), movement, animationInterface, (SimpleWeaponLayer.createDestroyed ()), rectangle, viewPosition) as super
    val mutable weaponProperties : WeaponProperties.weaponProperties = (Obj.magic 0)
    method weaponProperties = weaponProperties
    method set_weaponProperties value' = weaponProperties <- value'
    val mutable timeDelayHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method timeDelayHelper = timeDelayHelper
    method set_timeDelayHelper value' = timeDelayHelper <- value'
    
    

    method processTick : 'any1. 'any1 -> unit = fun (allBinaryLayerManager) ->
        let allBinaryLayerManager = Obj.repr allBinaryLayerManager in
        begin
        if (timeDelayHelper#isTime ((GameTickTimeDelayHelperFactory.getInstance ())#startTime)) then begin
            ignore ((self#getCollidableInferface ())#collide (self, self));
            totalDamage <- ((self#getInitDamage ()) + 1)
        end;
        ignore (super#processTick ((Obj.magic allBinaryLayerManager)))
        end [@@warning "-7-20"]

    initializer
      begin
        weaponProperties <- ((new WeaponProperties.weaponProperties ((-1), (-1), 0, 1000, 0)) :> WeaponProperties.weaponProperties);
        timeDelayHelper <- ((new TimeDelayHelper.timeDelayHelper (0)) :> TimeDelayHelper.timeDelayHelper);
        ();
        (* super(...) is the inherit clause *) ();
        timeDelayHelper#set_delay (timeDelay)
      end
  end
let () = java_register_constructor "TempExplosionWeaponLayer" (fun arguments -> Obj.repr (new tempExplosionWeaponLayer (Obj.obj arguments)))


