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
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData *)

class emptyRaceRaceTrackGeographicMapCellTypeFactory () =
  object
    inherit RaceTrackGeographicMapCellTypeFactory.raceTrackGeographicMapCellTypeFactory ()
    

    initializer
      begin
        ();
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        eMPTY_CELL_TYPE <- (new RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType (!commonStrings#eMPTY, 0, (PathFindingNodeCostInfoData.getInstance ())#mAX_NODE_COST, 1));
        eASY_CELL_TYPE <- (new RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType ("Easy", 19, 1, 0));
        fINISH_LINE_ROAD_CELL_TYPE <- dEFAULT_FINISH_LINE_ROAD_CELL_TYPE
      end
  end
let () = java_register_constructor "EmptyRaceRaceTrackGeographicMapCellTypeFactory" (fun arguments -> Obj.repr (new emptyRaceRaceTrackGeographicMapCellTypeFactory (Obj.obj arguments)))

let instanceC = (new emptyRaceRaceTrackGeographicMapCellTypeFactory ())
let get_instanceC () = instanceC
let () = java_register_static "EmptyRaceRaceTrackGeographicMapCellTypeFactory.get_instanceC" (fun _ -> Obj.repr (get_instanceC ()))

let getInstance () =
        begin
        instanceC
        end
let () = java_register_static "EmptyRaceRaceTrackGeographicMapCellTypeFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


