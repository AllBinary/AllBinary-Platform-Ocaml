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
(* package org.allbinary.game.media.graphics.geography.map.racetrack *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface *)
(* import org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory *)
(* import org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter *)
(* import org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo *)
(* import org.allbinary.media.graphics.geography.pathfinding.PathGenerator *)

class dynamicRaceTracksPathPrinter () =
  object (self)
    inherit RaceTracksPathPrinter.raceTracksPathPrinter ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    

    method printAllPaths : 'any1 'any2. 'any1 * 'any2 * int -> unit = fun (raceTrackGeographicMapInterfaceFactoryInterface, pathFindingInfo, (size : int)) ->
        let raceTrackGeographicMapInterfaceFactoryInterface = Obj.repr raceTrackGeographicMapInterfaceFactoryInterface in
        let pathFindingInfo = Obj.repr pathFindingInfo in
        begin
        (try
            for index = 0 to size - 1 do
                let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref ((((Obj.magic raceTrackGeographicMapInterfaceFactoryInterface)#getTrackInstance (((SmallIntegerSingletonFactory.getInstance ())#getAt (index)))) :> BasicGeographicMap.basicGeographicMap)) in ();
                let list : BasicArrayList.basicArrayList ref = ref ((((Obj.magic (java_call_static "PathGenerator.getInstance" (Obj.repr ())))#createList (!geographicMapInterface, (RaceTrackRoadsGeographicMapCellHistoryFactory.getInstance ()), (Obj.magic pathFindingInfo), 10)) :> BasicArrayList.basicArrayList)) in ();
                (print_endline (java_string_of (Obj.repr (("Track " ^ java_string_of (Obj.repr (index)))))));
                ignore (self#printPaths (!list))
            done
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#pROCESS, e))
        end)
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "DynamicRaceTracksPathPrinter" (fun arguments -> Obj.repr (new dynamicRaceTracksPathPrinter (Obj.obj arguments)))


