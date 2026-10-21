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
(* package org.allbinary.media.graphics.geography.map *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class multiGeographicMapBehavior () =
  object
    

    method getCellTypeAt : 'any3. BasicGeographicMap.basicGeographicMap array * GeographicMapCellType.geographicMapCellType array * 'any3 -> GeographicMapCellType.geographicMapCellType array = fun ((geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), (geographicMapCellTypeArray : GeographicMapCellType.geographicMapCellType array), geographicMapCellPosition) ->
        let geographicMapCellPosition = Obj.repr geographicMapCellPosition in
        begin
        let size : int ref = ref ((Array.length geographicMapInterfaceArray)) in ();
        let cellType : GeographicMapCellType.geographicMapCellType ref = ref (((GeographicMapCellType.get_nULL_GEOGRAPHIC_MAP_CELL_TYPE ()) :> GeographicMapCellType.geographicMapCellType)) in ();
        let index : int ref = ref (!size) in ();
        while ((index := !index - 1; !index) >= 0) do
            cellType := (geographicMapInterfaceArray.(!index)#getCellTypeAt ((Obj.magic geographicMapCellPosition)));
            geographicMapCellTypeArray.(!index) <- (!cellType :> GeographicMapCellType.geographicMapCellType)
        done;
        geographicMapCellTypeArray
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "MultiGeographicMapBehavior" (fun arguments -> Obj.repr (new multiGeographicMapBehavior (Obj.obj arguments)))


