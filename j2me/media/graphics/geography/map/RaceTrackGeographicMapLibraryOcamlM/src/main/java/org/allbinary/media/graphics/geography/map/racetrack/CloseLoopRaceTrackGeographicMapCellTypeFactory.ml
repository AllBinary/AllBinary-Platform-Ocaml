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

class closeLoopRaceTrackGeographicMapCellTypeFactory () =
  object
    inherit RaceTrackGeographicMapCellTypeFactory.raceTrackGeographicMapCellTypeFactory ()
    

    initializer
      begin
        ();
        eMPTY_CELL_TYPE <- (EmptyRaceRaceTrackGeographicMapCellTypeFactory.getInstance ())#eMPTY_CELL_TYPE;
        eASY_CELL_TYPE <- eMPTY_CELL_TYPE;
        fINISH_LINE_ROAD_CELL_TYPE <- sTART_LINE_ROAD_CELL_TYPE
      end
  end
let () = java_register_constructor "CloseLoopRaceTrackGeographicMapCellTypeFactory" (fun arguments -> Obj.repr (new closeLoopRaceTrackGeographicMapCellTypeFactory (Obj.obj arguments)))

let instanceC = (new closeLoopRaceTrackGeographicMapCellTypeFactory ())
let get_instanceC () = instanceC
let () = java_register_static "CloseLoopRaceTrackGeographicMapCellTypeFactory.get_instanceC" (fun _ -> Obj.repr (get_instanceC ()))

let getInstance () =
        begin
        instanceC
        end
let () = java_register_static "CloseLoopRaceTrackGeographicMapCellTypeFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


