(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.animation.transition.shake.NoShakeAnimationListener *)
(* import org.allbinary.animation.transition.shake.ShakeAnimationListener *)
(* import org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory *)
(* import org.allbinary.game.configuration.GameConfigurationCentral *)
(* import org.allbinary.game.tick.TickableInterface *)
(* import org.allbinary.media.AllBinaryNoVibration *)
(* import org.allbinary.media.AllBinaryVibration *)
(* import org.allbinary.media.AllBinaryVibrationME *)

class advancedRTSProperties ((shakeListener_arg : ShakeAnimationListener.shakeAnimationListener), (vibration_arg : AllBinaryVibrationME.allBinaryVibrationME), (duration_arg : int), (waypointBehaviorBase_arg : TickableInterface.tickableInterface)) =
  object
    val mutable shakeListener : ShakeAnimationListener.shakeAnimationListener = (Obj.magic 0)
    method shakeListener = shakeListener
    method set_shakeListener value' = shakeListener <- value'
    val mutable vibration : AllBinaryVibrationME.allBinaryVibrationME = (Obj.magic 0)
    method vibration = vibration
    method set_vibration value' = vibration <- value'
    val mutable duration : int = 0
    method duration = duration
    method set_duration value' = duration <- value'
    val mutable waypointBehaviorBase : TickableInterface.tickableInterface = (Obj.magic 0)
    method waypointBehaviorBase = waypointBehaviorBase
    method set_waypointBehaviorBase value' = waypointBehaviorBase <- value'
    

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        shakeListener <- shakeListener_arg;
        vibration <- vibration_arg;
        duration <- duration_arg;
        waypointBehaviorBase <- waypointBehaviorBase_arg
      end
  end
let () = java_register_constructor "AdvancedRTSProperties" (fun arguments -> Obj.repr (new advancedRTSProperties (Obj.obj arguments)))

let createPropertiesSimulated () =
        begin
        (new advancedRTSProperties ((NoShakeAnimationListener.get_nO_SHAKE_ANIMATION_LISTENER ()), (AllBinaryNoVibration.get_nO_VIBRATION ()), 0, (new WaypointBehaviorBase.waypointBehaviorBase ())))
        end

and createProperties () =
        begin
        (new advancedRTSProperties ((ShakeAnimationListenerFactory.getInstance ()), (Obj.magic (java_call_static "AllBinaryVibration.getInstance" (Obj.repr ()))), ((((GameConfigurationCentral.getInstance ())#vIBRATION#getValue ())#intValue ()) * 100), (new WaypointBehaviorBase.waypointBehaviorBase ())))
        end
let () = java_register_static "AdvancedRTSProperties.createPropertiesSimulated" (fun arguments -> Obj.repr (createPropertiesSimulated (Obj.obj arguments)))
let () = java_register_static "AdvancedRTSProperties.createProperties" (fun arguments -> Obj.repr (createProperties (Obj.obj arguments)))


