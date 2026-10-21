(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.media.graphics.geography.map.topview *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellType *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory *)
(* import org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.HashtableUtil *)

class basicTopViewGeographicMapCellTypeFactory (tileTypeToTileIdsMap, (maxTileId_arg : int)) =
  object (self)
    inherit GeographicMapCellTypeFactory.geographicMapCellTypeFactory ()
    val mutable bLOCK_CELL_TYPE : BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType = (Obj.magic 0)
    method bLOCK_CELL_TYPE = bLOCK_CELL_TYPE
    method set_bLOCK_CELL_TYPE value' = bLOCK_CELL_TYPE <- value'
    val mutable oFF_MAP_CELL_TYPE : BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType = (Obj.magic 0)
    method oFF_MAP_CELL_TYPE = oFF_MAP_CELL_TYPE
    method set_oFF_MAP_CELL_TYPE value' = oFF_MAP_CELL_TYPE <- value'
    val mutable fLOOR_CELL_TYPE : BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType = (Obj.magic 0)
    method fLOOR_CELL_TYPE = fLOOR_CELL_TYPE
    method set_fLOOR_CELL_TYPE value' = fLOOR_CELL_TYPE <- value'
    val mutable dOOR_CELL_TYPE : BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType = (Obj.magic 0)
    method dOOR_CELL_TYPE = dOOR_CELL_TYPE
    method set_dOOR_CELL_TYPE value' = dOOR_CELL_TYPE <- value'
    val mutable sTAIRS_UP_CELL_TYPE : BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType = (Obj.magic 0)
    method sTAIRS_UP_CELL_TYPE = sTAIRS_UP_CELL_TYPE
    method set_sTAIRS_UP_CELL_TYPE value' = sTAIRS_UP_CELL_TYPE <- value'
    val mutable sTAIRS_DOWN_CELL_TYPE : BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType = (Obj.magic 0)
    method sTAIRS_DOWN_CELL_TYPE = sTAIRS_DOWN_CELL_TYPE
    method set_sTAIRS_DOWN_CELL_TYPE value' = sTAIRS_DOWN_CELL_TYPE <- value'
    val mutable oTHER_CELL_TYPE : BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType = (Obj.magic 0)
    method oTHER_CELL_TYPE = oTHER_CELL_TYPE
    method set_oTHER_CELL_TYPE value' = oTHER_CELL_TYPE <- value'
    val mutable maxTileId : int = 0
    method maxTileId = maxTileId
    method set_maxTileId value' = maxTileId <- value'
    
    

    method getStartType () : int =
        begin
        (maxTileId - 1)
        end [@@warning "-7"]
    

    method getEndType () : int =
        begin
        (maxTileId - 2)
        end [@@warning "-7"]
    

    method getEmptyType () : int =
        begin
        (fLOOR_CELL_TYPE#getTypes ()).(0)
        end [@@warning "-7"]
    

    method isPath : 'any1. 'any1 -> bool = fun (cellType) ->
        let cellType = Obj.repr cellType in
        try
        begin
        if (fLOOR_CELL_TYPE#isType ((Obj.magic cellType))) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method toString () : string =
        begin
        (java_string_of (Obj.repr (((((((((((((((new StringMaker.stringMaker ())#append ("key: WALL/BLOCK_CELL_TYPE: "))#append ((java_string_of (Obj.repr bLOCK_CELL_TYPE))))#append ("key: FLOOR_CELL_TYPE: "))#append ((java_string_of (Obj.repr fLOOR_CELL_TYPE))))#append ("key: OTHER_CELL_TYPE: "))#append ((java_string_of (Obj.repr oTHER_CELL_TYPE))))#append ("key: OFF_MAP_CELL_TYPE: "))#append ((java_string_of (Obj.repr oFF_MAP_CELL_TYPE))))#append ("key: DOOR_CELL_TYPE: "))#append ((java_string_of (Obj.repr dOOR_CELL_TYPE))))#append ("key: STAIRS_DOWN_CELL_TYPE: "))#append ((java_string_of (Obj.repr sTAIRS_DOWN_CELL_TYPE))))#append ("key: STAIRS_UP_CELL_TYPE: "))#append ((java_string_of (Obj.repr sTAIRS_UP_CELL_TYPE))))))
        end [@@warning "-7"]

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
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore (logUtil#putF (!commonStrings#sTART, self, !commonStrings#cONSTRUCTOR));
        maxTileId <- maxTileId_arg;
        let basicTopViewGeographicMapStrings : BasicTopViewGeographicMapStrings.basicTopViewGeographicMapStrings ref = ref (((BasicTopViewGeographicMapStrings.getInstance ()) :> BasicTopViewGeographicMapStrings.basicTopViewGeographicMapStrings)) in ();
        let geographicMapCellTypeFactory : GeographicMapCellTypeFactory.geographicMapCellTypeFactory ref = ref (((GeographicMapCellTypeFactory.getInstance ()) :> GeographicMapCellTypeFactory.geographicMapCellTypeFactory)) in ();
        let geographicMapCellTypeArray : GeographicMapCellType.geographicMapCellType array ref = ref ((!geographicMapCellTypeFactory#getGeographicMapCellTypeArray ())) in ();
        let type_ : int ref = ref (0) in ();
        if (!geographicMapCellTypeArray.(!type_) == (Obj.magic 0)) then begin
            (new RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType ((CommonStrings.getInstance ())#uNKNOWN, !type_, 999, 0))
        end else begin
            ()
        end;
        let bLOCK_CELL_TYPE_arg : BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType ref = ref (((BasicTopViewGeographicMapCellType.createType (!basicTopViewGeographicMapStrings#dEFAULT, 1, 1)) :> BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType)) in ();
        let oFF_MAP_CELL_TYPE_arg : BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType ref = ref ((!bLOCK_CELL_TYPE_arg :> BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType)) in ();
        let fLOOR_CELL_TYPE_arg : BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType ref = ref ((!bLOCK_CELL_TYPE_arg :> BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType)) in ();
        let dOOR_CELL_TYPE_arg : BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType ref = ref ((!bLOCK_CELL_TYPE_arg :> BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType)) in ();
        let sTAIRS_UP_CELL_TYPE_arg : BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType ref = ref ((!bLOCK_CELL_TYPE_arg :> BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType)) in ();
        let sTAIRS_DOWN_CELL_TYPE_arg : BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType ref = ref ((!bLOCK_CELL_TYPE_arg :> BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType)) in ();
        let oTHER_CELL_TYPE_arg : BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType ref = ref ((!bLOCK_CELL_TYPE_arg :> BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType)) in ();
        let keyArray : Obj.t array ref = ref (((HashtableUtil.getInstance ())#getKeysAsArray (tileTypeToTileIdsMap))) in ();
        let size : int ref = ref ((Array.length !keyArray)) in ();
        let idsWithTypeList : BasicArrayList.basicArrayList ref = ref (((Obj.magic 0) :> BasicArrayList.basicArrayList)) in ();
        let key : string ref = ref ("") in ();
        let basicPlatormGeographicMapCellType : BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType ref = ref (((Obj.magic 0) :> BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType)) in ();
        for index = 0 to !size - 1 do
            key := (Obj.magic !keyArray.(index));
            idsWithTypeList := (Obj.magic (tileTypeToTileIdsMap#get (!key)));
            if (!key = !basicTopViewGeographicMapStrings#wALL) then begin
                basicPlatormGeographicMapCellType := (new BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType (!basicTopViewGeographicMapStrings#wALL, !idsWithTypeList, 1000));
                bLOCK_CELL_TYPE_arg := !basicPlatormGeographicMapCellType
            end else if (!key = !basicTopViewGeographicMapStrings#oFF_MAP) then begin
                basicPlatormGeographicMapCellType := (new BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType (!basicTopViewGeographicMapStrings#oFF_MAP, !idsWithTypeList, 1001));
                oFF_MAP_CELL_TYPE_arg := !basicPlatormGeographicMapCellType
            end else if (!key = !basicTopViewGeographicMapStrings#fLOOR) then begin
                basicPlatormGeographicMapCellType := (new BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType (!basicTopViewGeographicMapStrings#fLOOR, !idsWithTypeList, 1));
                fLOOR_CELL_TYPE_arg := !basicPlatormGeographicMapCellType
            end else if (!key = !basicTopViewGeographicMapStrings#dOOR) then begin
                basicPlatormGeographicMapCellType := (new BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType (!basicTopViewGeographicMapStrings#dOOR, !idsWithTypeList, 1));
                dOOR_CELL_TYPE_arg := !basicPlatormGeographicMapCellType
            end else if (!key = !basicTopViewGeographicMapStrings#sTAIRS_UP) then begin
                basicPlatormGeographicMapCellType := (new BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType (!basicTopViewGeographicMapStrings#sTAIRS_UP, !idsWithTypeList, 1));
                sTAIRS_UP_CELL_TYPE_arg := !basicPlatormGeographicMapCellType
            end else if (!key = !basicTopViewGeographicMapStrings#sTAIRS_DOWN) then begin
                basicPlatormGeographicMapCellType := (new BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType (!basicTopViewGeographicMapStrings#sTAIRS_DOWN, !idsWithTypeList, 1));
                sTAIRS_DOWN_CELL_TYPE_arg := !basicPlatormGeographicMapCellType
            end else if (!key = !basicTopViewGeographicMapStrings#oTHER) then begin
                basicPlatormGeographicMapCellType := (new BasicTopViewGeographicMapCellType.basicTopViewGeographicMapCellType (!basicTopViewGeographicMapStrings#oTHER, !idsWithTypeList, 1));
                oTHER_CELL_TYPE_arg := !basicPlatormGeographicMapCellType
            end
        done;
        bLOCK_CELL_TYPE <- !bLOCK_CELL_TYPE_arg;
        oFF_MAP_CELL_TYPE <- !oFF_MAP_CELL_TYPE_arg;
        fLOOR_CELL_TYPE <- !fLOOR_CELL_TYPE_arg;
        dOOR_CELL_TYPE <- !dOOR_CELL_TYPE_arg;
        sTAIRS_UP_CELL_TYPE <- !sTAIRS_UP_CELL_TYPE_arg;
        sTAIRS_DOWN_CELL_TYPE <- !sTAIRS_DOWN_CELL_TYPE_arg;
        oTHER_CELL_TYPE <- !oTHER_CELL_TYPE_arg;
        type_ := (maxTileId - 1);
        if (!geographicMapCellTypeArray.(!type_) == (Obj.magic 0)) then begin
            (new RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType (!commonStrings#sTART, !type_, 1, 0))
        end else begin
            ()
        end;
        type_ := (maxTileId - 2);
        if (!geographicMapCellTypeArray.(!type_) == (Obj.magic 0)) then begin
            (new RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType (!commonStrings#sTART, !type_, 1, 0))
        end else begin
            ()
        end
      end
  end
let () = java_register_constructor "BasicTopViewGeographicMapCellTypeFactory" (fun arguments -> Obj.repr (new basicTopViewGeographicMapCellTypeFactory (Obj.obj arguments)))


