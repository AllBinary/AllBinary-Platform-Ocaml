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
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.animation.RotationAnimation *)
(* import org.allbinary.layer.LayerInterface *)
(* import org.allbinary.logic.math.BasicDecimal *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellHistory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking *)

class virtual vehicleLayerInterface =
  object
    inherit LayerInterface.layerInterface
    inherit VehiclePropertiesCompositeInterface.vehiclePropertiesCompositeInterface
    method virtual getGameKeyEventList : unit -> BasicArrayList.basicArrayList
    method virtual getSpeedBasicDecimal : unit -> BasicDecimal.basicDecimal
    method virtual isReadyForExplosion : unit -> bool
    method virtual getRotationAnimationInterface : unit -> RotationAnimation.rotationAnimation
    method virtual setRotationAnimationInterface : 'any1 . 'any1 -> unit
    method virtual isDestroyed : unit -> bool
    method virtual isFinish : unit -> bool
    method virtual getFinalPosition : unit -> int
    method virtual handleFinish : unit -> unit
    method virtual getGeographicMapCellPositionTracking : unit -> GeographicMapCellPositionTracking.geographicMapCellPositionTracking
    method virtual getGeographicMapCellHistoryArray : unit -> GeographicMapCellHistory.geographicMapCellHistory array
    method virtual setGeographicMapCellHistoryArray : GeographicMapCellHistory.geographicMapCellHistory array -> unit
  end


