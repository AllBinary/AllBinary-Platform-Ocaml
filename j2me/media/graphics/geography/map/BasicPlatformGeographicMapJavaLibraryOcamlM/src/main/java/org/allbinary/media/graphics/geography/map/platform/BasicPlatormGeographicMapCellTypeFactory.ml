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
(* package org.allbinary.media.graphics.geography.map.platform *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Enumeration *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellType *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.EnumerationUtil *)

class basicPlatormGeographicMapCellTypeFactory (tileTypeToTileIdsMap, (maxTileId_arg : int)) =
  object (self)
    inherit GeographicMapCellTypeFactory.geographicMapCellTypeFactory ()
    val mutable enumerationUtil : EnumerationUtil.enumerationUtil = (Obj.magic 0)
    method enumerationUtil = enumerationUtil
    method set_enumerationUtil value' = enumerationUtil <- value'
    val mutable bLOCK_CELL_TYPE : BasicPlatormGeographicMapCellType.basicPlatormGeographicMapCellType = (Obj.magic 0)
    method bLOCK_CELL_TYPE = bLOCK_CELL_TYPE
    method set_bLOCK_CELL_TYPE value' = bLOCK_CELL_TYPE <- value'
    val mutable jUMP_THRU_CELL_TYPE : BasicPlatormGeographicMapCellType.basicPlatormGeographicMapCellType = (Obj.magic 0)
    method jUMP_THRU_CELL_TYPE = jUMP_THRU_CELL_TYPE
    method set_jUMP_THRU_CELL_TYPE value' = jUMP_THRU_CELL_TYPE <- value'
    val mutable lADDER_CELL_TYPE : BasicPlatormGeographicMapCellType.basicPlatormGeographicMapCellType = (Obj.magic 0)
    method lADDER_CELL_TYPE = lADDER_CELL_TYPE
    method set_lADDER_CELL_TYPE value' = lADDER_CELL_TYPE <- value'
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
        0
        end [@@warning "-7"]
    

    method isPath : 'any1. 'any1 -> bool = fun (cellType) ->
        let cellType = Obj.repr cellType in
        try
        begin
        if (((Obj.magic cellType)#getType ()) == 0) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]

    initializer
      begin
        enumerationUtil <- ((EnumerationUtil.getInstance ()) :> EnumerationUtil.enumerationUtil);
        ();
        ();
        ();
        ();
        ();
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore ((self#logUtil)#putF (!commonStrings#sTART, self, !commonStrings#iNIT));
        maxTileId <- maxTileId_arg;
        (new GeographicMapCellType.geographicMapCellType (0, 0));
        let bLOCK_CELL_TYPE_arg : BasicPlatormGeographicMapCellType.basicPlatormGeographicMapCellType ref = ref (((BasicPlatormGeographicMapCellType.createType (1)) :> BasicPlatormGeographicMapCellType.basicPlatormGeographicMapCellType)) in ();
        let jUMP_THRU_CELL_TYPE_arg : BasicPlatormGeographicMapCellType.basicPlatormGeographicMapCellType ref = ref ((!bLOCK_CELL_TYPE_arg :> BasicPlatormGeographicMapCellType.basicPlatormGeographicMapCellType)) in ();
        let lADDER_CELL_TYPE_arg : BasicPlatormGeographicMapCellType.basicPlatormGeographicMapCellType ref = ref ((!bLOCK_CELL_TYPE_arg :> BasicPlatormGeographicMapCellType.basicPlatormGeographicMapCellType)) in ();
        let pLATFORM : string ref = ref ("Platform") in ();
        let jUMP_TRHU : string ref = ref ("JumpThru") in ();
        let lADDER : string ref = ref ("Ladder") in ();
        let enumeration : java_enumeration ref = ref (((tileTypeToTileIdsMap#keys ()) :> java_enumeration)) in ();
        let idsWithTypeList : BasicArrayList.basicArrayList ref = ref (((Obj.magic 0) :> BasicArrayList.basicArrayList)) in ();
        let key : string ref = ref ("") in ();
        let basicPlatormGeographicMapCellType : BasicPlatormGeographicMapCellType.basicPlatormGeographicMapCellType ref = ref (((Obj.magic 0) :> BasicPlatormGeographicMapCellType.basicPlatormGeographicMapCellType)) in ();
        while (enumerationUtil#hasMoreElements (!enumeration)) do
            key := (Obj.magic (enumerationUtil#nextElement (!enumeration)));
            ignore ((self#logUtil)#putF (!key, self, !commonStrings#iNIT));
            idsWithTypeList := (Obj.magic (tileTypeToTileIdsMap#get (!key)));
            basicPlatormGeographicMapCellType := (new BasicPlatormGeographicMapCellType.basicPlatormGeographicMapCellType (!idsWithTypeList));
            if (!key = !pLATFORM) then begin
                bLOCK_CELL_TYPE_arg := !basicPlatormGeographicMapCellType
            end;
            if (!key = !jUMP_TRHU) then begin
                jUMP_THRU_CELL_TYPE_arg := !basicPlatormGeographicMapCellType
            end;
            if (!key = !lADDER) then begin
                lADDER_CELL_TYPE_arg := !basicPlatormGeographicMapCellType
            end
        done;
        bLOCK_CELL_TYPE <- !bLOCK_CELL_TYPE_arg;
        jUMP_THRU_CELL_TYPE <- !jUMP_THRU_CELL_TYPE_arg;
        lADDER_CELL_TYPE <- !lADDER_CELL_TYPE_arg;
        (new GeographicMapCellType.geographicMapCellType ((maxTileId - 1), 0));
        (new GeographicMapCellType.geographicMapCellType ((maxTileId - 2), 0))
      end
  end
let () = java_register_constructor "BasicPlatormGeographicMapCellTypeFactory" (fun arguments -> Obj.repr (new basicPlatormGeographicMapCellTypeFactory (Obj.obj arguments)))


