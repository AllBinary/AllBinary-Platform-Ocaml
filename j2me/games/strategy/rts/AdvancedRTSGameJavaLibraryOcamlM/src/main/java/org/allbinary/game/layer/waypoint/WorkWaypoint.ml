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
(* package org.allbinary.game.layer.waypoint *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.layer.PathFindingLayerInterface *)
(* import org.allbinary.game.layer.RTSLayer *)
(* import org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition *)
(* import org.allbinary.game.layer.geological.resources.GeologicalResource *)
(* import org.allbinary.game.layer.unit.UnitLayer *)
(* import org.allbinary.game.layer.unit.UnitWaypointBehavior *)
(* import org.allbinary.media.audio.WorkSound *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)

let iD : int = ((SmallIntegerSingletonFactory.getInstance ())#getAt (25))
let get_iD () = iD
let () = java_register_static "WorkWaypoint.get_iD" (fun _ -> Obj.repr (get_iD ()))
class workWaypoint ((ownerLayer : PathFindingLayerInterface.pathFindingLayerInterface)) =
  object (self)
    inherit Waypoint.waypoint (ownerLayer, (WorkSound.getInstance ()))
    
    

    method visit : 'any1. 'any1 -> unit = fun (unitLayer) ->
        let unitLayer = Obj.repr unitLayer in
        try
        begin
        if ((Obj.repr ((Obj.magic unitLayer)#getGroupInterface ()).(0)) != (Obj.repr (ownerLayer#getGroupInterface ()).(0))) then begin
            raise (Java_return (Obj.repr (())))
        end;
        let size : int ref = ref (((self#getConnectedWaypointList ())#size ())) in ();
        if (!size > 0) then begin
            let occupyList : BasicArrayList.basicArrayList ref = ref ((((ownerLayer#getGeographicMapCellPositionArea ())#getOccupyingGeographicMapCellPositionList ()) :> BasicArrayList.basicArrayList)) in ();
            let outOfResources : bool ref = ref (true) in ();
            let geologicalGeographicMapCellPosition : GeologicalGeographicMapCellPosition.geologicalGeographicMapCellPosition ref = ref (((Obj.magic 0) :> GeologicalGeographicMapCellPosition.geologicalGeographicMapCellPosition)) in ();
            let geologicalResource : GeologicalResource.geologicalResource ref = ref (((Obj.magic 0) :> GeologicalResource.geologicalResource)) in ();
            let index : int ref = ref ((!occupyList#size ())) in ();
            while ((index := !index - 1; !index) >= 0) do
                geologicalGeographicMapCellPosition := (Obj.magic (!occupyList#get (!index)));
                geologicalResource := (!geologicalGeographicMapCellPosition#getGeologicalResource ());
                if ((!geologicalResource#getTotal ()) >= 1) then begin
                    outOfResources := false;
                    let maxResourceLoad : int ref = ref ((java_to_int (Obj.repr (((Obj.magic unitLayer)#getMaxResourceLoad ()))))) in ();
                    ignore (!geologicalResource#remove (!maxResourceLoad));
                    ignore ((Obj.magic unitLayer)#setLoad (!maxResourceLoad))
                end
            done;
            let waypointInfoHudPaintable : WaypointInfoHudPaintable.waypointInfoHudPaintable ref = ref (((Obj.magic (ownerLayer#getHudPaintable ())) :> WaypointInfoHudPaintable.waypointInfoHudPaintable)) in ();
            if ((Obj.repr ownerLayer) == (Obj.repr (!waypointInfoHudPaintable#getRtsLayer ()))) then begin
                ignore (!waypointInfoHudPaintable#updateSelectionInfo ())
            end;
            if (not !outOfResources) then begin
                let unitWaypointBehavior : UnitWaypointBehavior.unitWaypointBehavior ref = ref (((Obj.magic ((Obj.magic unitLayer)#getWaypointBehavior ())) :> UnitWaypointBehavior.unitWaypointBehavior)) in ();
                let rtsLayer : RTSLayer.rTSLayer ref = ref (((Obj.magic 0) :> RTSLayer.rTSLayer)) in ();
                while (((self#getConnectedWaypointList ())#size ()) > 0) do
                    rtsLayer := (Obj.magic ((self#getConnectedWaypointList ())#get (0)));
                    if (!rtsLayer#isDestroyed ()) then begin
                        ignore ((self#getConnectedWaypointList ())#remove (!rtsLayer))
                    end else begin
                        ignore (!unitWaypointBehavior#insertWaypoint (0, !rtsLayer));
                        raise Java_break
                    end
                done
            end
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method getType () : int =
        begin
        2
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "WorkWaypoint" (fun arguments -> Obj.repr (new workWaypoint (Obj.obj arguments)))


