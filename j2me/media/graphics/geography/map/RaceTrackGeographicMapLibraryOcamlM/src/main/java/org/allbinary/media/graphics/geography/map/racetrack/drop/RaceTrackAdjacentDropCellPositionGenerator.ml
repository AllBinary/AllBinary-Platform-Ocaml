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
(* package org.allbinary.media.graphics.geography.map.racetrack.drop *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.identification.GroupCommonFactory *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.direction.Direction *)
(* import org.allbinary.direction.DirectionFactory *)
(* import org.allbinary.game.identification.BasicGroupFactory *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellType *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil *)
(* import org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory *)
(* import org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface *)
(* import org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory *)
(* import org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType *)
(* import org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory *)
(* import org.allbinary.util.ABHashtable *)

class raceTrackAdjacentDropCellPositionGenerator () =
  object (self)
    inherit RaceTrackDropCellPositionGenerator.raceTrackDropCellPositionGenerator () as super
    val mutable layerCoveringCellPositionsUtil : LayerCoveringCellPositionsUtil.layerCoveringCellPositionsUtil = (Obj.magic 0)
    method layerCoveringCellPositionsUtil = layerCoveringCellPositionsUtil
    method set_layerCoveringCellPositionsUtil value' = layerCoveringCellPositionsUtil <- value'
    val mutable groupCommonFactory : GroupCommonFactory.groupCommonFactory = (Obj.magic 0)
    method groupCommonFactory = groupCommonFactory
    method set_groupCommonFactory value' = groupCommonFactory <- value'
    val mutable surroundingCellPositions : GeographicMapCellPosition.geographicMapCellPosition array = (Obj.magic 0)
    method surroundingCellPositions = surroundingCellPositions
    method set_surroundingCellPositions value' = surroundingCellPositions <- value'
    val mutable hashtable : Obj.t = Obj.repr 0
    method hashtable : 'r. 'r = Obj.magic hashtable
    method set_hashtable : 'v. 'v -> unit = fun value' -> hashtable <- Obj.repr value'
    val mutable geographicMapDirectionUtil : GeographicMapDirectionUtil.geographicMapDirectionUtil = (Obj.magic 0)
    method geographicMapDirectionUtil = geographicMapDirectionUtil
    method set_geographicMapDirectionUtil value' = geographicMapDirectionUtil <- value'
    
    

    method getFirstNonRoadAdjacentCellPosition ((column : int), (row : int)) : GeographicMapCellPosition.geographicMapCellPosition =
        begin
        let nonRoadGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        let geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory ref = ref (((raceTrackGeographicMap#getGeographicMapCellPositionFactory ()) :> BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory)) in ();
        surroundingCellPositions.(0) <- ((!geographicMapCellPositionFactory#getAt (column, (row - 1))) :> GeographicMapCellPosition.geographicMapCellPosition);
        surroundingCellPositions.(1) <- ((!geographicMapCellPositionFactory#getAt (column, (row + 1))) :> GeographicMapCellPosition.geographicMapCellPosition);
        surroundingCellPositions.(2) <- ((!geographicMapCellPositionFactory#getAt ((column - 1), row)) :> GeographicMapCellPosition.geographicMapCellPosition);
        surroundingCellPositions.(3) <- ((!geographicMapCellPositionFactory#getAt ((column + 1), row)) :> GeographicMapCellPosition.geographicMapCellPosition);
        let baseRaceTrackGeographicMap : BaseRaceTrackGeographicMap.baseRaceTrackGeographicMap ref = ref (((Obj.magic raceTrackGeographicMap) :> BaseRaceTrackGeographicMap.baseRaceTrackGeographicMap)) in ();
        let raceTrackGeographicMapCellTypeFactory : RaceTrackGeographicMapCellTypeFactory.raceTrackGeographicMapCellTypeFactory ref = ref (((Obj.magic (!baseRaceTrackGeographicMap#getGeographicMapCellTypeFactory ())) :> RaceTrackGeographicMapCellTypeFactory.raceTrackGeographicMapCellTypeFactory)) in ();
        let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((Obj.magic 0) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        let raceTrackGeographicMapCellType : RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType ref = ref (((Obj.magic 0) :> RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType)) in ();
        let index : int ref = ref ((Array.length surroundingCellPositions)) in ();
        while ((index := !index - 1; !index) >= 0) do
            geographicMapCellPosition := surroundingCellPositions.(!index);
            raceTrackGeographicMapCellType := (Obj.magic (raceTrackGeographicMap#getCellTypeAt (!geographicMapCellPosition)));
            if (not (!raceTrackGeographicMapCellTypeFactory#isPath (!raceTrackGeographicMapCellType))) then begin
                nonRoadGeographicMapCellPosition := !geographicMapCellPosition;
                raise Java_break
            end
        done;
        (!nonRoadGeographicMapCellPosition :> GeographicMapCellPosition.geographicMapCellPosition)
        end [@@warning "-7"]
    

    method update : 'any1 'any2. 'any1 * 'any2 -> unit = fun (allBinaryGameLayerManager, geographicMapInterface) ->
        let allBinaryGameLayerManager = Obj.repr allBinaryGameLayerManager in
        let geographicMapInterface = Obj.repr geographicMapInterface in
        begin
        ignore ((Obj.magic hashtable)#put ((AllBinaryGameLayerManager.get_iD ()), (Obj.magic allBinaryGameLayerManager)));
        ignore (super#update ((Obj.magic allBinaryGameLayerManager), (Obj.magic geographicMapInterface)))
        end [@@warning "-7-20"]
    

    method drop : 'any1. 'any1 * int -> unit = fun (allBinaryLayerManager, (index : int)) ->
        let allBinaryLayerManager = Obj.repr allBinaryLayerManager in
        try
        begin
        let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((Obj.magic (list#get (index))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        let randomGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((self#getFirstNonRoadAdjacentCellPosition ((!geographicMapCellPosition#getColumn ()), (!geographicMapCellPosition#getRow ()))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        if (!randomGeographicMapCellPosition == (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr (())))
        end;
        let dropCellPositionHistory : DropCellPositionHistory.dropCellPositionHistory ref = ref (((DropCellPositionHistory.getInstance ()) :> DropCellPositionHistory.dropCellPositionHistory)) in ();
        if (not (!dropCellPositionHistory#isCellPositionWithDrop (!geographicMapCellPosition))) then begin
            let direction : Direction.direction ref = ref (((geographicMapDirectionUtil#getDirectionFromCellPositionToAdjacentCellPosition (!randomGeographicMapCellPosition, !geographicMapCellPosition)) :> Direction.direction)) in ();
            let objectCanBeNull : Obj.t ref = ref ((Obj.repr ((Obj.magic hashtable)#get (groupCommonFactory#iD)))) in ();
            if (!objectCanBeNull != (Obj.magic 0)) then begin
                ()
            end else begin
                ignore ((Obj.magic hashtable)#put (groupCommonFactory#iD, (BasicGroupFactory.getInstance ())#nONE_ARRAY))
            end;
            ignore ((Obj.magic hashtable)#put ((DirectionFactory.getInstance ())#nAME, !direction));
            let point : GPoint.gPoint ref = ref (((!randomGeographicMapCellPosition#getPoint ()) :> GPoint.gPoint)) in ();
            let x : int ref = ref ((!point#getX ())) in ();
            let y : int ref = ref ((!point#getY ())) in ();
            let z : int ref = ref ((!point#getZ ())) in ();
            let layerInterface : AllBinaryLayer.allBinaryLayer ref = ref (((((RaceTrackAdjacentDropLayerFactory.getInstance ())#getRandomInstance ())#getNextInstance ((Obj.magic hashtable), !x, !y, !z)) :> AllBinaryLayer.allBinaryLayer)) in ();
            let baseRaceTrackGeographicMap : BaseRaceTrackGeographicMap.baseRaceTrackGeographicMap ref = ref (((Obj.magic raceTrackGeographicMap) :> BaseRaceTrackGeographicMap.baseRaceTrackGeographicMap)) in ();
            let list : BasicArrayList.basicArrayList ref = ref (((layerCoveringCellPositionsUtil#getAll (!baseRaceTrackGeographicMap, !randomGeographicMapCellPosition, !layerInterface, (new BasicArrayListD.basicArrayListD ()))) :> BasicArrayList.basicArrayList)) in ();
            if (!dropCellPositionHistory#anyCellPositionWithDrop (!list)) then begin
                raise (Java_return (Obj.repr (())))
            end;
            let geographicMapCellType : GeographicMapCellType.geographicMapCellType ref = ref (((Obj.magic 0) :> GeographicMapCellType.geographicMapCellType)) in ();
            let index2 : int ref = ref ((!list#size ())) in ();
            while ((index2 := !index2 - 1; !index2) >= 0) do
                geographicMapCellType := (raceTrackGeographicMap#getCellTypeAt ((Obj.magic (!list#get (!index2)))));
                if (raceTrackGeographicMapCellTypeFactory#isPath (!geographicMapCellType)) then begin
                    raise (Java_return (Obj.repr (())))
                end
            done;
            ignore (!dropCellPositionHistory#addAll (!list, !layerInterface));
            ignore ((Obj.magic allBinaryLayerManager)#append (!layerInterface))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]

    initializer
      begin
        layerCoveringCellPositionsUtil <- ((LayerCoveringCellPositionsUtil.getInstance ()) :> LayerCoveringCellPositionsUtil.layerCoveringCellPositionsUtil);
        groupCommonFactory <- ((GroupCommonFactory.getInstance ()) :> GroupCommonFactory.groupCommonFactory);
        surroundingCellPositions <- (Array.make (4) (Obj.magic 0));
        hashtable <- (Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()));
        geographicMapDirectionUtil <- ((GeographicMapDirectionUtil.getInstance ()) :> GeographicMapDirectionUtil.geographicMapDirectionUtil);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "RaceTrackAdjacentDropCellPositionGenerator" (fun arguments -> Obj.repr (new raceTrackAdjacentDropCellPositionGenerator (Obj.obj arguments)))

let sINGLETON = ref ((new raceTrackAdjacentDropCellPositionGenerator ()))
let get_sINGLETON () = !sINGLETON
let set_sINGLETON value' = sINGLETON := value'
let () = java_register_static "RaceTrackAdjacentDropCellPositionGenerator.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () : DropCellPositionGeneratorInterface.dropCellPositionGeneratorInterface =
        begin
        (!sINGLETON :> DropCellPositionGeneratorInterface.dropCellPositionGeneratorInterface)
        end
let () = java_register_static "RaceTrackAdjacentDropCellPositionGenerator.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


