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

class raceTrackGeographicMapCellTypes () =
  object
    val mutable bOTTOM_LEFT_TURN_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType = (Obj.magic 0)
    method bOTTOM_LEFT_TURN_ROAD_CELL_TYPE = bOTTOM_LEFT_TURN_ROAD_CELL_TYPE
    method set_bOTTOM_LEFT_TURN_ROAD_CELL_TYPE value' = bOTTOM_LEFT_TURN_ROAD_CELL_TYPE <- value'
    val mutable bOTTOM_RIGHT_TURN_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType = (Obj.magic 0)
    method bOTTOM_RIGHT_TURN_ROAD_CELL_TYPE = bOTTOM_RIGHT_TURN_ROAD_CELL_TYPE
    method set_bOTTOM_RIGHT_TURN_ROAD_CELL_TYPE value' = bOTTOM_RIGHT_TURN_ROAD_CELL_TYPE <- value'
    val mutable tOP_LEFT_TURN_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType = (Obj.magic 0)
    method tOP_LEFT_TURN_ROAD_CELL_TYPE = tOP_LEFT_TURN_ROAD_CELL_TYPE
    method set_tOP_LEFT_TURN_ROAD_CELL_TYPE value' = tOP_LEFT_TURN_ROAD_CELL_TYPE <- value'
    val mutable tOP_RIGHT_TURN_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType = (Obj.magic 0)
    method tOP_RIGHT_TURN_ROAD_CELL_TYPE = tOP_RIGHT_TURN_ROAD_CELL_TYPE
    method set_tOP_RIGHT_TURN_ROAD_CELL_TYPE value' = tOP_RIGHT_TURN_ROAD_CELL_TYPE <- value'
    val mutable hORIZONTAL_STRAIGHT_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType = (Obj.magic 0)
    method hORIZONTAL_STRAIGHT_ROAD_CELL_TYPE = hORIZONTAL_STRAIGHT_ROAD_CELL_TYPE
    method set_hORIZONTAL_STRAIGHT_ROAD_CELL_TYPE value' = hORIZONTAL_STRAIGHT_ROAD_CELL_TYPE <- value'
    val mutable vERTICAL_STRAIGHT_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType = (Obj.magic 0)
    method vERTICAL_STRAIGHT_ROAD_CELL_TYPE = vERTICAL_STRAIGHT_ROAD_CELL_TYPE
    method set_vERTICAL_STRAIGHT_ROAD_CELL_TYPE value' = vERTICAL_STRAIGHT_ROAD_CELL_TYPE <- value'
    val mutable sTART_LINE_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType = (Obj.magic 0)
    method sTART_LINE_ROAD_CELL_TYPE = sTART_LINE_ROAD_CELL_TYPE
    method set_sTART_LINE_ROAD_CELL_TYPE value' = sTART_LINE_ROAD_CELL_TYPE <- value'
    val mutable dEFAULT_FINISH_LINE_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType = (Obj.magic 0)
    method dEFAULT_FINISH_LINE_ROAD_CELL_TYPE = dEFAULT_FINISH_LINE_ROAD_CELL_TYPE
    method set_dEFAULT_FINISH_LINE_ROAD_CELL_TYPE value' = dEFAULT_FINISH_LINE_ROAD_CELL_TYPE <- value'
    

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        bOTTOM_LEFT_TURN_ROAD_CELL_TYPE <- (new RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType ("Bottom Left Turn", 1, 1, 0));
        bOTTOM_RIGHT_TURN_ROAD_CELL_TYPE <- (new RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType ("Bottom Right Turn", 2, 1, 0));
        tOP_LEFT_TURN_ROAD_CELL_TYPE <- (new RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType ("Top Left Turn", 3, 1, 0));
        tOP_RIGHT_TURN_ROAD_CELL_TYPE <- (new RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType ("Top Right Turne", 4, 1, 0));
        hORIZONTAL_STRAIGHT_ROAD_CELL_TYPE <- (new RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType ("Horizontal Straight", 5, 1, 0));
        vERTICAL_STRAIGHT_ROAD_CELL_TYPE <- (new RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType ("Vertical Straight", 6, 1, 0));
        sTART_LINE_ROAD_CELL_TYPE <- (new RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType ("Start Line", 7, 1, 0));
        dEFAULT_FINISH_LINE_ROAD_CELL_TYPE <- (new RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType ("Finish Line", 8, 1, 0))
      end
  end
let () = java_register_constructor "RaceTrackGeographicMapCellTypes" (fun arguments -> Obj.repr (new raceTrackGeographicMapCellTypes (Obj.obj arguments)))

let instance = (new raceTrackGeographicMapCellTypes ())
let get_instance () = instance
let () = java_register_static "RaceTrackGeographicMapCellTypes.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "RaceTrackGeographicMapCellTypes.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


