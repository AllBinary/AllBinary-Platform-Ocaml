(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.combat.destroy.DestroyableInterface *)
(* import org.allbinary.game.identification.GroupInterfaceCompositeInterface *)
(* import org.allbinary.game.input.GameKeyEventSourceInterface *)
(* import org.allbinary.game.layer.waypoint.WaypointLayerInterface *)
(* import org.allbinary.util.BasicArrayList *)

class virtual pathFindingLayerInterface =
  object
    inherit WaypointLayerInterface.waypointLayerInterface
    inherit GameKeyEventSourceInterface.gameKeyEventSourceInterface
    inherit GroupInterfaceCompositeInterface.groupInterfaceCompositeInterface
    inherit DestroyableInterface.destroyableInterface
    method virtual getEndGeographicMapCellPositionList : unit -> BasicArrayList.basicArrayList
    method virtual shouldHandleStartSameAsEnd : unit -> bool
    method virtual getGeographicMapCellPositionArea : unit -> GeographicMapCellPositionAreaBase.geographicMapCellPositionAreaBase
    method virtual getHudPaintable : unit -> SelectionHudPaintable.selectionHudPaintable
    method virtual handleCost : 'any1 . 'any1 -> unit
    method virtual getParentLayer : unit -> Obj.t
    method virtual getRTSLayer2LogHelper : 'return . unit -> 'return
    method virtual setTarget : 'any1 . 'any1 -> unit
  end


