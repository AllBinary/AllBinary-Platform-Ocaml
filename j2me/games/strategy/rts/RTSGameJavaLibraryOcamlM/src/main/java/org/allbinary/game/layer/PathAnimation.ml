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
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.displayable.CanvasStrings *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellHistory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface *)
(* import org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory *)
(* import org.allbinary.util.BasicArrayList *)

class pathAnimation ((pathFindingLayer_arg : PathFindingLayerInterface.pathFindingLayerInterface), (linePathAnimation_arg : LinePathAnimation.linePathAnimation)) =
  object (self)
    inherit Animation.animation ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable linePathAnimation : LinePathAnimation.linePathAnimation = (Obj.magic 0)
    method linePathAnimation = linePathAnimation
    method set_linePathAnimation value' = linePathAnimation <- value'
    val mutable pathFindingLayer : PathFindingLayerInterface.pathFindingLayerInterface = (Obj.magic 0)
    method pathFindingLayer = pathFindingLayer
    method set_pathFindingLayer value' = pathFindingLayer <- value'
    val mutable allBinaryGameLayerManagerP : AllBinaryGameLayerManager.allBinaryGameLayerManager = (Obj.magic 0)
    method allBinaryGameLayerManagerP = allBinaryGameLayerManagerP
    method set_allBinaryGameLayerManagerP value' = allBinaryGameLayerManagerP <- value'
    val mutable startColor : BasicColor.basicColor = (Obj.magic 0)
    method startColor = startColor
    method set_startColor value' = startColor <- value'
    val mutable middleColor : BasicColor.basicColor = (Obj.magic 0)
    method middleColor = middleColor
    method set_middleColor value' = middleColor <- value'
    val mutable endColor : BasicColor.basicColor = (Obj.magic 0)
    method endColor = endColor
    method set_endColor value' = endColor <- value'
    
    

    method setAllBinaryGameLayerManager : 'any1. 'any1 -> unit = fun (allBinaryGameLayerManager) ->
        let allBinaryGameLayerManager = Obj.repr allBinaryGameLayerManager in
        begin
        allBinaryGameLayerManagerP <- (Obj.magic allBinaryGameLayerManager)
        end [@@warning "-7-20"]
    

    method nextFrame () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (_x : int), (_y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        (try
            let waypointBehaviorBase : WaypointBehaviorBase.waypointBehaviorBase ref = ref (((pathFindingLayer#getWaypointBehavior ()) :> WaypointBehaviorBase.waypointBehaviorBase)) in ();
            if (!waypointBehaviorBase != (Obj.magic 0)) then begin
                let geographicMapCellHistory : GeographicMapCellHistory.geographicMapCellHistory ref = ref (((!waypointBehaviorBase#getCurrentGeographicMapCellHistory ()) :> GeographicMapCellHistory.geographicMapCellHistory)) in ();
                let list : BasicArrayList.basicArrayList ref = ref (((!geographicMapCellHistory#getTracked ()) :> BasicArrayList.basicArrayList)) in ();
                let size : int ref = ref ((!list#size ())) in ();
                if (!size > 0) then begin
                    let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic allBinaryGameLayerManagerP) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
                    let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
                    let tiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref (((!geographicMapInterface#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
                    let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
                    let nextPoint : GPoint.gPoint ref = ref (((Obj.magic 0) :> GPoint.gPoint)) in ();
                    let point : GPoint.gPoint ref = ref (((Obj.magic 0) :> GPoint.gPoint)) in ();
                    let start : int ref = ref ((!size - 2)) in ();
                    for index = 0 to (!size - 1) - 1 do
                        if (index = !start) then begin
                            ignore (self#setBasicColorP (startColor));
                            ignore (basicSetColorUtil#setBasicColorP3 ((Obj.magic graphics), (self#getBasicColorP ()), (self#getColor ())))
                        end else if (!geographicMapCellHistory#isVisited (!geographicMapCellPosition)) then begin
                            ignore (self#setBasicColorP (endColor));
                            ignore (basicSetColorUtil#setBasicColorP3 ((Obj.magic graphics), (self#getBasicColorP ()), (self#getColor ())))
                        end else begin
                            ignore (self#setBasicColorP (middleColor));
                            ignore (basicSetColorUtil#setBasicColorP3 ((Obj.magic graphics), (self#getBasicColorP ()), (self#getColor ())))
                        end;
                        geographicMapCellPosition := (Obj.magic (!list#get (index)));
                        point := (!geographicMapCellPosition#getMidPoint ());
                        geographicMapCellPosition := (Obj.magic (!list#get ((index + 1))));
                        nextPoint := (!geographicMapCellPosition#getMidPoint ());
                        ignore (linePathAnimation#paint ((Obj.magic graphics), !point, !nextPoint, !tiledLayer))
                    done
                end
            end
        with e -> begin
            ignore ((Obj.magic logUtil)#putF ("Cleared Target", self, (CanvasStrings.getInstance ())#pAINT))
        end)
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        allBinaryGameLayerManagerP <- ((AllBinaryGameLayerManager.getNullInstance ()) :> AllBinaryGameLayerManager.allBinaryGameLayerManager);
        startColor <- ((BasicColorFactory.getInstance ())#rED :> BasicColor.basicColor);
        middleColor <- ((BasicColorFactory.getInstance ())#bLUE :> BasicColor.basicColor);
        endColor <- ((BasicColorFactory.getInstance ())#gREEN :> BasicColor.basicColor);
        ();
        pathFindingLayer <- pathFindingLayer_arg;
        linePathAnimation <- linePathAnimation_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "PathAnimation" (fun arguments -> Obj.repr (new pathAnimation (Obj.obj arguments)))


