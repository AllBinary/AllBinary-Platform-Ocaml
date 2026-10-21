(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.util.BasicArrayList *)

class geographicMapCellPositionAreaBase () =
  object
    

    method getNextSurroundingGeographicMapCellPosition () : GeographicMapCellPosition.geographicMapCellPosition =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getOccupyingGeographicMapCellPositionList () : BasicArrayList.basicArrayList =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getSurroundingGeographicMapCellPositionList () : BasicArrayList.basicArrayList =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method update : 'any1. 'any1 -> unit = fun (_geographicMapInterface) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "GeographicMapCellPositionAreaBase" (fun arguments -> Obj.repr (new geographicMapCellPositionAreaBase (Obj.obj arguments)))

let nULL_GEOGRPAHIC_MAP_POSITION_AREA_BASE = (new geographicMapCellPositionAreaBase ())
let get_nULL_GEOGRPAHIC_MAP_POSITION_AREA_BASE () = nULL_GEOGRPAHIC_MAP_POSITION_AREA_BASE
let () = java_register_static "GeographicMapCellPositionAreaBase.get_nULL_GEOGRPAHIC_MAP_POSITION_AREA_BASE" (fun _ -> Obj.repr (get_nULL_GEOGRPAHIC_MAP_POSITION_AREA_BASE ()))


