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
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellType *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory *)

class raceTrackGeographicMapCellTypeFactory () =
  object
    inherit GeographicMapCellTypeFactory.geographicMapCellTypeFactory ()
    val mutable eMPTY_CELL_TYPE : GeographicMapCellType.geographicMapCellType = (Obj.magic 0)
    method eMPTY_CELL_TYPE = eMPTY_CELL_TYPE
    method set_eMPTY_CELL_TYPE value' = eMPTY_CELL_TYPE <- value'
    val mutable eASY_CELL_TYPE : GeographicMapCellType.geographicMapCellType = (Obj.magic 0)
    method eASY_CELL_TYPE = eASY_CELL_TYPE
    method set_eASY_CELL_TYPE value' = eASY_CELL_TYPE <- value'
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
    val mutable fINISH_LINE_ROAD_CELL_TYPE : GeographicMapCellType.geographicMapCellType = (Obj.magic 0)
    method fINISH_LINE_ROAD_CELL_TYPE = fINISH_LINE_ROAD_CELL_TYPE
    method set_fINISH_LINE_ROAD_CELL_TYPE value' = fINISH_LINE_ROAD_CELL_TYPE <- value'
    
    

    method getStartType () : int =
        begin
        (sTART_LINE_ROAD_CELL_TYPE#getType ())
        end [@@warning "-7"]
    

    method getEndType () : int =
        begin
        (fINISH_LINE_ROAD_CELL_TYPE#getType ())
        end [@@warning "-7"]
    

    method getEmptyType () : int =
        begin
        (eMPTY_CELL_TYPE#getType ())
        end [@@warning "-7"]
    

    method isPath : 'any1. 'any1 -> bool = fun (cellType) ->
        let cellType = Obj.repr cellType in
        try
        begin
        if (((Obj.repr (Obj.magic cellType)) != (Obj.repr eMPTY_CELL_TYPE)) && ((Obj.repr (Obj.magic cellType)) != (Obj.repr eASY_CELL_TYPE))) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]

    initializer
      begin
        eMPTY_CELL_TYPE <- ((new GeographicMapCellType.geographicMapCellType (0, (-1))) :> GeographicMapCellType.geographicMapCellType);
        eASY_CELL_TYPE <- (eMPTY_CELL_TYPE :> GeographicMapCellType.geographicMapCellType);
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        fINISH_LINE_ROAD_CELL_TYPE <- ((GeographicMapCellType.get_nULL_GEOGRAPHIC_MAP_CELL_TYPE ()) :> GeographicMapCellType.geographicMapCellType);
        ();
        let raceTrackGeographicMapCellTypes : RaceTrackGeographicMapCellTypes.raceTrackGeographicMapCellTypes ref = ref (((RaceTrackGeographicMapCellTypes.getInstance ()) :> RaceTrackGeographicMapCellTypes.raceTrackGeographicMapCellTypes)) in ();
        bOTTOM_LEFT_TURN_ROAD_CELL_TYPE <- !raceTrackGeographicMapCellTypes#bOTTOM_LEFT_TURN_ROAD_CELL_TYPE;
        bOTTOM_RIGHT_TURN_ROAD_CELL_TYPE <- !raceTrackGeographicMapCellTypes#bOTTOM_RIGHT_TURN_ROAD_CELL_TYPE;
        tOP_LEFT_TURN_ROAD_CELL_TYPE <- !raceTrackGeographicMapCellTypes#tOP_LEFT_TURN_ROAD_CELL_TYPE;
        tOP_RIGHT_TURN_ROAD_CELL_TYPE <- !raceTrackGeographicMapCellTypes#tOP_RIGHT_TURN_ROAD_CELL_TYPE;
        hORIZONTAL_STRAIGHT_ROAD_CELL_TYPE <- !raceTrackGeographicMapCellTypes#hORIZONTAL_STRAIGHT_ROAD_CELL_TYPE;
        vERTICAL_STRAIGHT_ROAD_CELL_TYPE <- !raceTrackGeographicMapCellTypes#vERTICAL_STRAIGHT_ROAD_CELL_TYPE;
        sTART_LINE_ROAD_CELL_TYPE <- !raceTrackGeographicMapCellTypes#sTART_LINE_ROAD_CELL_TYPE;
        dEFAULT_FINISH_LINE_ROAD_CELL_TYPE <- !raceTrackGeographicMapCellTypes#dEFAULT_FINISH_LINE_ROAD_CELL_TYPE
      end
  end
let () = java_register_constructor "RaceTrackGeographicMapCellTypeFactory" (fun arguments -> Obj.repr (new raceTrackGeographicMapCellTypeFactory (Obj.obj arguments)))

let instanceC = (new raceTrackGeographicMapCellTypeFactory ())
let get_instanceC () = instanceC
let () = java_register_static "RaceTrackGeographicMapCellTypeFactory.get_instanceC" (fun _ -> Obj.repr (get_instanceC ()))

let getInstance () =
        begin
        instanceC
        end
let () = java_register_static "RaceTrackGeographicMapCellTypeFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


