(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer.geological.resources *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.game.rand.MyRandomFactory *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface *)

class geologicalGeographicMapCellPositionFactory ((resourcePerMapCellType_arg : int array)) =
  object
    val mutable resourcePerMapCellType : int array = (Obj.magic 0)
    method resourcePerMapCellType = resourcePerMapCellType
    method set_resourcePerMapCellType value' = resourcePerMapCellType <- value'
    
    

    method getInstance : 'any1. 'any1 * int * int * int * int * int * int -> GeographicMapCellPosition.geographicMapCellPosition = fun (geographicMapInterface, (i_column : int), (i_row : int), (columns : int), (rows : int), (width : int), (height : int)) ->
        let geographicMapInterface = Obj.repr geographicMapInterface in
        begin
        let tiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref ((((Obj.magic geographicMapInterface)#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        let resources : int ref = ref ((resourcePerMapCellType.((!tiledLayer#getCell (i_column, i_row))) + ((MyRandomFactory.getInstance ())#getAbsoluteNextInt (1000)))) in ();
        ((new GeologicalGeographicMapCellPosition.geologicalGeographicMapCellPosition (i_column, i_row, columns, rows, width, height, (new GeologicalResource.geologicalResource (!resources)))) :> GeographicMapCellPosition.geographicMapCellPosition)
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        resourcePerMapCellType <- resourcePerMapCellType_arg
      end
  end
let () = java_register_constructor "GeologicalGeographicMapCellPositionFactory" (fun arguments -> Obj.repr (new geologicalGeographicMapCellPositionFactory (Obj.obj arguments)))


