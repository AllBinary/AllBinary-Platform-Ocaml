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
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.util.BasicArrayListUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellHistory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory *)
(* import org.allbinary.media.graphics.geography.map.drop.BaseDropCellPositionGenerator *)
(* import org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.racetrack.NullRaceTrackGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType *)
(* import org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory *)
(* import org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface *)
(* import org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory *)
(* import org.allbinary.time.GameTickTimeDelayHelperFactory *)
(* import org.allbinary.time.TimeDelayHelper *)

class raceTrackDropCellPositionGenerator () =
  object (self)
    inherit BaseDropCellPositionGenerator.baseDropCellPositionGenerator ()
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    val mutable timeDelayHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method timeDelayHelper = timeDelayHelper
    method set_timeDelayHelper value' = timeDelayHelper <- value'
    val mutable sTRAIGHTAWAY : int = 0
    method sTRAIGHTAWAY = sTRAIGHTAWAY
    method set_sTRAIGHTAWAY value' = sTRAIGHTAWAY <- value'
    val mutable raceTrackGeographicMap : RaceTrackGeographicMapInterface.raceTrackGeographicMapInterface = (Obj.magic 0)
    method raceTrackGeographicMap = raceTrackGeographicMap
    method set_raceTrackGeographicMap value' = raceTrackGeographicMap <- value'
    val mutable raceTrackGeographicMapCellTypeFactory : GeographicMapCellTypeFactory.geographicMapCellTypeFactory = (Obj.magic 0)
    method raceTrackGeographicMapCellTypeFactory = raceTrackGeographicMapCellTypeFactory
    method set_raceTrackGeographicMapCellTypeFactory value' = raceTrackGeographicMapCellTypeFactory <- value'
    val mutable basicArrayListUtil : BasicArrayListUtil.basicArrayListUtil = (Obj.magic 0)
    method basicArrayListUtil = basicArrayListUtil
    method set_basicArrayListUtil value' = basicArrayListUtil <- value'
    
    

    method init () : unit =
        begin
        ignore (list#clear ())
        end [@@warning "-7"]
    

    method isDropAllowedAt : 'any1. 'any1 -> bool = fun (geographicMapCellPosition) ->
        let geographicMapCellPosition = Obj.repr geographicMapCellPosition in
        try
        begin
        let raceTrackGeographicMapCellType : RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType ref = ref (((Obj.magic (raceTrackGeographicMap#getCellTypeAt ((Obj.magic geographicMapCellPosition)))) :> RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType)) in ();
        let raceTrackGeographicMapCellTypeFactory_arg : RaceTrackGeographicMapCellTypeFactory.raceTrackGeographicMapCellTypeFactory ref = ref (((Obj.magic raceTrackGeographicMapCellTypeFactory) :> RaceTrackGeographicMapCellTypeFactory.raceTrackGeographicMapCellTypeFactory)) in ();
        if (((Obj.repr !raceTrackGeographicMapCellType) == (Obj.repr !raceTrackGeographicMapCellTypeFactory_arg#hORIZONTAL_STRAIGHT_ROAD_CELL_TYPE)) || ((Obj.repr !raceTrackGeographicMapCellType) == (Obj.repr !raceTrackGeographicMapCellTypeFactory_arg#vERTICAL_STRAIGHT_ROAD_CELL_TYPE))) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method update : 'any1 'any2. 'any1 * 'any2 -> unit = fun (allBinaryGameLayerManager, geographicMapInterface) ->
        let allBinaryGameLayerManager = Obj.repr allBinaryGameLayerManager in
        let geographicMapInterface = Obj.repr geographicMapInterface in
        begin
        (self#init ());
        let baseRaceTrackGeographicMap : BaseRaceTrackGeographicMap.baseRaceTrackGeographicMap ref = ref (((Obj.magic (Obj.magic geographicMapInterface)) :> BaseRaceTrackGeographicMap.baseRaceTrackGeographicMap)) in ();
        raceTrackGeographicMap <- !baseRaceTrackGeographicMap;
        raceTrackGeographicMapCellTypeFactory <- (Obj.magic (!baseRaceTrackGeographicMap#getGeographicMapCellTypeFactory ()));
        let roadGeographicMapCellHistory : GeographicMapCellHistory.geographicMapCellHistory ref = ref (((RaceTrackRoadsGeographicMapCellHistoryFactory.getInstance ()) :> GeographicMapCellHistory.geographicMapCellHistory)) in ();
        let trackedList : BasicArrayList.basicArrayList ref = ref (((!roadGeographicMapCellHistory#getTracked ()) :> BasicArrayList.basicArrayList)) in ();
        let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((Obj.magic 0) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        let lastIndex : int ref = ref (((!trackedList#size ()) - 1)) in ();
        let total : int ref = ref (0) in ();
        let ahead : int ref = ref (0) in ();
        for index = !lastIndex downto 0 + 1 do
            geographicMapCellPosition := (Obj.magic (!trackedList#get (index)));
            total := 0;
            ahead := index;
            while (self#isDropAllowedAt ((Obj.magic (!trackedList#get (!ahead))))) do
                total := !total + 1;
                if (!total > sTRAIGHTAWAY) then begin
                    ignore (list#add (!geographicMapCellPosition));
                    raise Java_break
                end;
                ahead := !ahead + 1;
                if (!ahead > !lastIndex) then begin
                    raise Java_break
                end
            done
        done;
        let size : int ref = ref ((list#size ())) in ();
        for index = (!size - 1) downto 0 do
            (self#drop ((Obj.magic allBinaryGameLayerManager), index))
        done
        end [@@warning "-7-20"]
    

    method processTick : 'any1. 'any1 -> unit = fun (allBinaryLayerManager) ->
        let allBinaryLayerManager = Obj.repr allBinaryLayerManager in
        begin
        if (timeDelayHelper#isTime ((GameTickTimeDelayHelperFactory.getInstance ())#startTime)) then begin
            let index : int ref = ref ((basicArrayListUtil#getRandomIndex (list))) in ();
            (self#drop ((Obj.magic allBinaryLayerManager), !index))
        end
        end [@@warning "-7-20"]
    

    method drop : 'any1. 'any1 * int -> unit = fun (_allBinaryLayerManager, (_index : int)) ->
        begin
        raise (Failure ((CommonStrings.getInstance ())#nOT_IMPLEMENTED))
        end [@@warning "-7-20"]

    initializer
      begin
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        sTRAIGHTAWAY <- 4;
        raceTrackGeographicMap <- ((NullRaceTrackGeographicMap.get_nULL_RACE_TRACK_GEOGRAPHIC_MAP ()) :> RaceTrackGeographicMapInterface.raceTrackGeographicMapInterface);
        raceTrackGeographicMapCellTypeFactory <- ((GeographicMapCellTypeFactory.getInstance ()) :> GeographicMapCellTypeFactory.geographicMapCellTypeFactory);
        basicArrayListUtil <- ((BasicArrayListUtil.getInstance ()) :> BasicArrayListUtil.basicArrayListUtil);
        ();
        timeDelayHelper <- (new TimeDelayHelper.timeDelayHelper (10000))
      end
  end
let () = java_register_constructor "RaceTrackDropCellPositionGenerator" (fun arguments -> Obj.repr (new raceTrackDropCellPositionGenerator (Obj.obj arguments)))


