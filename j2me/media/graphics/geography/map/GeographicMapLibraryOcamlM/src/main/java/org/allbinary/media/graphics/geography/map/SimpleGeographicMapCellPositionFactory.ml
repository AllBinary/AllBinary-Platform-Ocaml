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
(* package org.allbinary.media.graphics.geography.map *)

open Allbinary_java [@@warning "-33"]

let nULL_GEOGRAPHIC_MAP_CELL_POSITION : GeographicMapCellPosition.geographicMapCellPosition = ((new GeographicMapCellPosition.geographicMapCellPosition ((-1), (-1), (-1), (-1), (-1), (-1))) :> GeographicMapCellPosition.geographicMapCellPosition)
let get_nULL_GEOGRAPHIC_MAP_CELL_POSITION () = nULL_GEOGRAPHIC_MAP_CELL_POSITION
let () = java_register_static "SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION" (fun _ -> Obj.repr (get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))
class simpleGeographicMapCellPositionFactory () =
  object
    

    method getInstance : 'any1. 'any1 * int * int * int * int * int * int -> GeographicMapCellPosition.geographicMapCellPosition = fun (_geographicMapInterface, (i_column : int), (i_row : int), (columns : int), (rows : int), (width : int), (height : int)) ->
        begin
        ((new GeographicMapCellPosition.geographicMapCellPosition (i_column, i_row, columns, rows, width, height)) :> GeographicMapCellPosition.geographicMapCellPosition)
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "SimpleGeographicMapCellPositionFactory" (fun arguments -> Obj.repr (new simpleGeographicMapCellPositionFactory (Obj.obj arguments)))


