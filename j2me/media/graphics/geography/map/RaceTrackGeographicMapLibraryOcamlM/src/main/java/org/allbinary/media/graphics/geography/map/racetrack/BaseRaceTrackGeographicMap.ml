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
(* package org.allbinary.media.graphics.geography.map.racetrack *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory *)

class baseRaceTrackGeographicMap ((raceTrackInfo_arg : RaceTrackInfo.raceTrackInfo), (raceTrackData_arg : RaceTrackData.raceTrackData), (tiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer), (miniGeographicMap_arg : BasicGeographicMap.basicGeographicMap), (geographicMapCellPositionFactoryInterface : GeographicMapCellPositionFactoryInterface.geographicMapCellPositionFactoryInterface), (geographicMapCellPositionBaseFactory : GeographicMapCellPositionBaseFactory.geographicMapCellPositionBaseFactory), (geographicMapCellTypeFactory : GeographicMapCellTypeFactory.geographicMapCellTypeFactory)) =
  object (self)
    inherit BasicGeographicMap.basicGeographicMap ((raceTrackInfo_arg#getId ()), (raceTrackInfo_arg#getName ()), (raceTrackData_arg#getCellTypeIdToGeographicMapCellTypeArray ()), tiledLayer, (raceTrackInfo_arg#getForegroundBasicColor ()), (raceTrackInfo_arg#getBackgroundBasicColor ()), geographicMapCellPositionFactoryInterface, geographicMapCellPositionBaseFactory, geographicMapCellTypeFactory)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable raceTrackInfo : RaceTrackInfo.raceTrackInfo = (Obj.magic 0)
    method raceTrackInfo = raceTrackInfo
    method set_raceTrackInfo value' = raceTrackInfo <- value'
    val mutable raceTrackData : RaceTrackData.raceTrackData = (Obj.magic 0)
    method raceTrackData = raceTrackData
    method set_raceTrackData value' = raceTrackData <- value'
    val mutable miniGeographicMap : BasicGeographicMap.basicGeographicMap = (Obj.magic 0)
    method miniGeographicMap = miniGeographicMap
    method set_miniGeographicMap value' = miniGeographicMap <- value'
    
    

    method getRaceTrackInfo () : RaceTrackInfo.raceTrackInfo =
        begin
        (raceTrackInfo :> RaceTrackInfo.raceTrackInfo)
        end [@@warning "-7"]
    

    method setRaceTrackInfo : 'any1. 'any1 -> unit = fun (aRaceTrackInfo) ->
        let aRaceTrackInfo = Obj.repr aRaceTrackInfo in
        begin
        raceTrackInfo <- (Obj.magic aRaceTrackInfo)
        end [@@warning "-7-20"]
    

    method setMiniBasicGeographicMap : 'any1. 'any1 -> unit = fun (miniBasicGeographicMap) ->
        let miniBasicGeographicMap = Obj.repr miniBasicGeographicMap in
        begin
        miniGeographicMap <- (Obj.magic miniBasicGeographicMap)
        end [@@warning "-7-20"]
    

    method getMiniBasicGeographicMap () : BasicGeographicMap.basicGeographicMap =
        begin
        (miniGeographicMap :> BasicGeographicMap.basicGeographicMap)
        end [@@warning "-7"]
    

    method getRaceTrackData () : RaceTrackData.raceTrackData =
        begin
        (raceTrackData :> RaceTrackData.raceTrackData)
        end [@@warning "-7"]
    

    method setRaceTrackData : 'any1. 'any1 -> unit = fun (raceTrackData_arg) ->
        let raceTrackData_arg = Obj.repr raceTrackData_arg in
        begin
        raceTrackData <- (Obj.magic raceTrackData_arg)
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        raceTrackInfo <- raceTrackInfo_arg;
        raceTrackData <- raceTrackData_arg;
        miniGeographicMap <- miniGeographicMap_arg;
        let miniTiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref (((miniGeographicMap#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        if ((Obj.repr (!miniTiledLayer#getColumns ())) != (Obj.repr ((self#getGeographicMapCellPositionFactory ())#getColumns ()))) then begin
            let error : string ref = ref ((java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append ("RaceTrackMap has incorrect Mini Map columns: "))#appendint ((java_to_int (Obj.repr ((!miniTiledLayer#getColumns ()))))))#append (" != "))#appendint ((java_to_int (Obj.repr (((self#getGeographicMapCellPositionFactory ())#getColumns ()))))))))) in ();
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#putF (!commonStrings#eXCEPTION, self, !commonStrings#cONSTRUCTOR));
            raise (Failure (!error))
        end;
        if ((Obj.repr (!miniTiledLayer#getRows ())) != (Obj.repr ((self#getGeographicMapCellPositionFactory ())#getRows ()))) then begin
            let error : string ref = ref ("RaceTrackMap has incorrect Mini Map rows") in ();
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#putF (!commonStrings#eXCEPTION, self, !commonStrings#cONSTRUCTOR));
            raise (Failure (!error))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "BaseRaceTrackGeographicMap" (fun arguments -> Obj.repr (new baseRaceTrackGeographicMap (Obj.obj arguments)))


