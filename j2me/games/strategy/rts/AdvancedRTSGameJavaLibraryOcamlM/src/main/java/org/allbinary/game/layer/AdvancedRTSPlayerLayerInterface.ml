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
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.GameType *)
(* import org.allbinary.graphics.color.BasicColor *)

class virtual advancedRTSPlayerLayerInterface =
  object
    inherit RTSPlayerLayerInterface.rTSPlayerLayerInterface
    method virtual getAdvancedPlayerOwnedRTSLayers : unit -> AdvancedPlayerOwnedRTSLayers.advancedPlayerOwnedRTSLayers
    method virtual isLocalPlayer : unit -> bool
    method virtual getGameType : unit -> GameType.gameType
    method virtual getDecalBasicColor : unit -> BasicColor.basicColor
  end


