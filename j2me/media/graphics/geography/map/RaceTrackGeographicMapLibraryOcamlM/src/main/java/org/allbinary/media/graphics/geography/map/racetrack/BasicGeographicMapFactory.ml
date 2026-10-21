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
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory *)

class basicGeographicMapFactory () =
  object
    

    method getInstance : 'any1 'any2 'any3 'any4 'any5. 'any1 * 'any2 * 'any3 * 'any4 * 'any5 -> BasicGeographicMap.basicGeographicMap = fun (raceTrackInfo, raceTrackData, tiledLayerFactoryInterface, geographicMapCellPositionFactoryInterface, geographicMapCellTypeFactory) ->
        let raceTrackInfo = Obj.repr raceTrackInfo in
        let raceTrackData = Obj.repr raceTrackData in
        let tiledLayerFactoryInterface = Obj.repr tiledLayerFactoryInterface in
        let geographicMapCellPositionFactoryInterface = Obj.repr geographicMapCellPositionFactoryInterface in
        let geographicMapCellTypeFactory = Obj.repr geographicMapCellTypeFactory in
        begin
        ((new BasicGeographicMap.basicGeographicMap (((SmallIntegerSingletonFactory.getInstance ())#getAt ((((((Obj.magic raceTrackInfo)#getId ())#intValue ()) + 100) + 1))), ((Obj.magic raceTrackInfo)#getName ()), ((Obj.magic raceTrackData)#getCellTypeIdToGeographicMapCellTypeArray ()), ((Obj.magic tiledLayerFactoryInterface)#getMiniInstance ((Obj.magic raceTrackData))), (BasicColorFactory.getInstance ())#cLEAR_COLOR, (BasicColorFactory.getInstance ())#cLEAR_COLOR, (Obj.magic geographicMapCellPositionFactoryInterface), (new GeographicMapCellPositionBaseFactory.geographicMapCellPositionBaseFactory ()), (Obj.magic geographicMapCellTypeFactory))) :> BasicGeographicMap.basicGeographicMap)
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "BasicGeographicMapFactory" (fun arguments -> Obj.repr (new basicGeographicMapFactory (Obj.obj arguments)))


