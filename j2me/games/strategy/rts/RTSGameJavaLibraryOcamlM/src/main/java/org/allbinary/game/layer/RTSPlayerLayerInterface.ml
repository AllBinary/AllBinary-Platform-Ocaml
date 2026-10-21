(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface *)
(* import org.allbinary.game.input.BuildMenuCompositeInterface *)
(* import org.allbinary.game.input.form.RTSFormInput *)
(* import org.allbinary.game.layer.capital.Capital *)
(* import org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface *)
(* import org.allbinary.game.input.PlayerGameInputCompositeInterface *)
(* import org.allbinary.game.tick.TickableInterface *)
(* import org.allbinary.media.audio.Sound *)

class virtual rTSPlayerLayerInterface =
  object
    inherit GameNotificationHudCompositeInterface.gameNotificationHudCompositeInterface
    inherit BuildMenuCompositeInterface.buildMenuCompositeInterface
    inherit PlayerGameInputCompositeInterface.playerGameInputCompositeInterface
    inherit DestroyedEventListenerInterface.destroyedEventListenerInterface
    inherit TickableInterface.tickableInterface
    inherit PathFindingLayerInterface.pathFindingLayerInterface
    method virtual getCapital : unit -> Capital.capital
    method virtual getRTSFormInput : 'return . unit -> 'return
    method virtual add : 'any1 . 'any1 -> unit
    method virtual getPlayerOwnedRTSLayers : unit -> PlayerOwnedRTSLayers.playerOwnedRTSLayers
    method virtual implmentsArtificialIntelligenceCompositeInterface : unit -> bool
  end


