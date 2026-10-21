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
(* package org.allbinary.game.layer.unit *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)
(* import org.allbinary.game.layer.SteeringVisitor *)
(* import org.allbinary.game.layer.AdvancedRTSGameLayer *)
(* import org.allbinary.game.layer.CollidableCompositeLayer *)
(* import org.allbinary.game.layer.CollidableRTSBehavior *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.game.input.event.GameKeyEventFactory *)
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.game.layer.TiledLayerUtil *)
(* import org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.math.AngleInfo *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface *)
(* import org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory *)
(* import org.allbinary.string.CommonStrings *)

class collidableUnitBehavior ((collidable : bool)) =
  object (self)
    inherit CollidableRTSBehavior.collidableRTSBehavior (collidable)
    val mutable layerPartialCellPositionsUtil : LayerPartialCellPositionsUtil.layerPartialCellPositionsUtil = (Obj.magic 0)
    method layerPartialCellPositionsUtil = layerPartialCellPositionsUtil
    method set_layerPartialCellPositionsUtil value' = layerPartialCellPositionsUtil <- value'
    val mutable simpleSteeringVisitor : SimpleSteeringVisitor.simpleSteeringVisitor = (Obj.magic 0)
    method simpleSteeringVisitor = simpleSteeringVisitor
    method set_simpleSteeringVisitor value' = simpleSteeringVisitor <- value'
    
    

    method collideNone : 'any1 'any2. 'any1 * 'any2 -> unit = fun (ownerLayer, collidableInterfaceCompositeInterface) ->
        let ownerLayer = Obj.repr ownerLayer in
        let collidableInterfaceCompositeInterface = Obj.repr collidableInterfaceCompositeInterface in
        begin
        (self#chase ((Obj.magic ownerLayer), (Obj.magic collidableInterfaceCompositeInterface)));
        let rtsLayer : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic collidableInterfaceCompositeInterface)))) in ();
        if ((Obj.repr ((Obj.magic !rtsLayer)#getType ())) == (Obj.repr (Obj.magic (java_call_static "UnitLayer.getStaticType" (Obj.repr ()))))) then begin
            (self#collideUnit ((Obj.magic ownerLayer), (Obj.magic (Obj.magic !rtsLayer))))
        end
        end [@@warning "-7-20"]
    

    method steer : 'any1 'any2. 'any1 * 'any2 -> bool = fun (ownerLayer, collidableInterfaceCompositeInterface) ->
        let ownerLayer = Obj.repr ownerLayer in
        let collidableInterfaceCompositeInterface = Obj.repr collidableInterfaceCompositeInterface in
        try
        begin
        let ownerUnitLayer : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic ownerLayer)))) in ();
        let unitLayer : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic collidableInterfaceCompositeInterface)))) in ();
        let angleInfo2 : AngleInfo.angleInfo ref = ref (((((Obj.magic !unitLayer)#getRotationAnimationInterface ())#getAngleInfoP ()) :> AngleInfo.angleInfo)) in ();
        let angleInfo : AngleInfo.angleInfo ref = ref (((((Obj.magic !ownerUnitLayer)#getRotationAnimationInterface ())#getAngleInfoP ()) :> AngleInfo.angleInfo)) in ();
        let angle : int ref = ref (((!angleInfo#getAngle ()) - (!angleInfo2#getAngle ()))) in ();
        if ((!angle < 90) || (!angle > 270)) then begin
            raise (Java_return (Obj.repr (true)))
        end else if ((!angle >= 90) || (!angle <= 270)) then begin
            ignore (((Obj.magic !ownerUnitLayer)#getGameKeyEventList ())#add (((GameKeyEventFactory.getInstance ())#getInstanceForKey ((Obj.magic !ownerUnitLayer), (Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())))))));
            raise (Java_return (Obj.repr (false)))
        end;
        raise (Failure ("Error"))
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method chase : 'any1 'any2. 'any1 * 'any2 -> unit = fun (ownerLayer, collidableInterfaceCompositeInterface) ->
        let ownerLayer = Obj.repr ownerLayer in
        let collidableInterfaceCompositeInterface = Obj.repr collidableInterfaceCompositeInterface in
        begin
        let rtsLayer : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic collidableInterfaceCompositeInterface)))) in ();
        if ((Obj.repr ((Obj.magic !rtsLayer)#getType ())) == (Obj.repr (Obj.magic (java_call_static "UnitLayer.getStaticType" (Obj.repr ()))))) then begin
            if (not ((simpleSteeringVisitor#getList ())#contains ((Obj.magic collidableInterfaceCompositeInterface)))) then begin
                ignore ((simpleSteeringVisitor#getList ())#add ((Obj.magic collidableInterfaceCompositeInterface)))
            end;
            let ownerUnitLayer : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic ownerLayer)))) in ();
            let list : BasicArrayList.basicArrayList ref = ref (((((Obj.magic !ownerUnitLayer)#getUnitWaypointBehavior ())#getSteeringVisitorList ()) :> BasicArrayList.basicArrayList)) in ();
            if (not (!list#contains (simpleSteeringVisitor))) then begin
                ignore (!list#add (simpleSteeringVisitor))
            end
        end
        end [@@warning "-7-20"]
    

    method collideUnit : 'any1 'any2. 'any1 * 'any2 -> unit = fun (ownerLayer, unitLayer) ->
        let ownerLayer = Obj.repr ownerLayer in
        let unitLayer = Obj.repr unitLayer in
        begin
        let ownerUnitLayer : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic ownerLayer)))) in ();
        let partialPositionList : BasicArrayList.basicArrayList ref = ref (((Obj.magic (java_call_static "UnitLayer.getPartialpositionlist" (Obj.repr ()))) :> BasicArrayList.basicArrayList)) in ();
        let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic (Obj.magic !ownerUnitLayer)#allBinaryGameLayerManagerP) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
        let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
        let basicGeographicMap : BasicGeographicMap.basicGeographicMap ref = ref ((!geographicMapInterface :> BasicGeographicMap.basicGeographicMap)) in ();
        let dropCellPositionHistory : DropCellPositionHistory.dropCellPositionHistory ref = ref (((DropCellPositionHistory.getInstance ()) :> DropCellPositionHistory.dropCellPositionHistory)) in ();
        let tiledLayerUtil : TiledLayerUtil.tiledLayerUtil ref = ref (((TiledLayerUtil.getInstance ()) :> TiledLayerUtil.tiledLayerUtil)) in ();
        let tiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref (((!basicGeographicMap#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        if ((((Obj.magic ownerLayer)#getXP ()) < ((Obj.magic unitLayer)#getXP ())) && (((Obj.magic ownerLayer)#getX2 ()) > ((Obj.magic unitLayer)#getXP ()))) then begin
            let diff : int ref = ref ((((Obj.magic ownerLayer)#getWidth ()) + 1)) in ();
            ignore (layerPartialCellPositionsUtil#getAllDXY (!basicGeographicMap, (Obj.magic ownerLayer), (-!diff), 0, !partialPositionList));
            if (not (!dropCellPositionHistory#anyCellPositionWithDrop (!partialPositionList))) then begin
                let x : int ref = ref ((((Obj.magic unitLayer)#getXP ()) - !diff)) in ();
                let y : int ref = ref (((Obj.magic ownerLayer)#getYP ())) in ();
                x := (!tiledLayerUtil#keepOnMapX (!tiledLayer, !x, ((Obj.magic ownerLayer)#getWidth ())));
                y := (!tiledLayerUtil#keepOnMapY (!tiledLayer, !y, ((Obj.magic ownerLayer)#getHeight ())));
                ignore ((Obj.magic ownerLayer)#setPosition (!x, !y, ((Obj.magic ownerLayer)#getZP ())))
            end;
            ignore (layerPartialCellPositionsUtil#getAllDXY (!basicGeographicMap, (Obj.magic unitLayer), !diff, 0, !partialPositionList));
            if (not (!dropCellPositionHistory#anyCellPositionWithDrop (!partialPositionList))) then begin
                let x : int ref = ref ((((Obj.magic unitLayer)#getXP ()) + !diff)) in ();
                let y : int ref = ref (((Obj.magic unitLayer)#getYP ())) in ();
                x := (!tiledLayerUtil#keepOnMapX (!tiledLayer, !x, ((Obj.magic unitLayer)#getWidth ())));
                y := (!tiledLayerUtil#keepOnMapY (!tiledLayer, !y, ((Obj.magic unitLayer)#getHeight ())));
                ignore ((Obj.magic unitLayer)#setPosition (!x, !y, ((Obj.magic unitLayer)#getZP ())))
            end
        end;
        if ((((Obj.magic ownerLayer)#getYP ()) < ((Obj.magic unitLayer)#getYP ())) && (((Obj.magic ownerLayer)#getY2 ()) > ((Obj.magic unitLayer)#getYP ()))) then begin
            let diff : int ref = ref ((((Obj.magic ownerLayer)#getHeight ()) + 1)) in ();
            ignore (layerPartialCellPositionsUtil#getAllDXY (!basicGeographicMap, (Obj.magic ownerLayer), 0, (-!diff), !partialPositionList));
            if (not (!dropCellPositionHistory#anyCellPositionWithDrop (!partialPositionList))) then begin
                let x : int ref = ref (((Obj.magic ownerLayer)#getXP ())) in ();
                let y : int ref = ref ((((Obj.magic unitLayer)#getYP ()) - !diff)) in ();
                x := (!tiledLayerUtil#keepOnMapX (!tiledLayer, !x, ((Obj.magic ownerLayer)#getWidth ())));
                y := (!tiledLayerUtil#keepOnMapY (!tiledLayer, !y, ((Obj.magic ownerLayer)#getHeight ())));
                ignore ((Obj.magic ownerLayer)#setPosition (!x, !y, ((Obj.magic ownerLayer)#getZP ())))
            end;
            ignore (layerPartialCellPositionsUtil#getAllDXY (!basicGeographicMap, (Obj.magic unitLayer), 0, !diff, !partialPositionList));
            if (not (!dropCellPositionHistory#anyCellPositionWithDrop (!partialPositionList))) then begin
                let x : int ref = ref (((Obj.magic unitLayer)#getXP ())) in ();
                let y : int ref = ref ((((Obj.magic unitLayer)#getYP ()) + !diff)) in ();
                x := (!tiledLayerUtil#keepOnMapX (!tiledLayer, !x, ((Obj.magic unitLayer)#getWidth ())));
                y := (!tiledLayerUtil#keepOnMapY (!tiledLayer, !y, ((Obj.magic unitLayer)#getHeight ())));
                ignore ((Obj.magic unitLayer)#setPosition (!x, !y, ((Obj.magic unitLayer)#getZP ())))
            end
        end
        end [@@warning "-7-20"]

    initializer
      begin
        layerPartialCellPositionsUtil <- ((LayerPartialCellPositionsUtil.getInstance ()) :> LayerPartialCellPositionsUtil.layerPartialCellPositionsUtil);
        simpleSteeringVisitor <- ((new SimpleSteeringVisitor.simpleSteeringVisitor ()) :> SimpleSteeringVisitor.simpleSteeringVisitor);
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "CollidableUnitBehavior" (fun arguments -> Obj.repr (new collidableUnitBehavior (Obj.obj arguments)))


