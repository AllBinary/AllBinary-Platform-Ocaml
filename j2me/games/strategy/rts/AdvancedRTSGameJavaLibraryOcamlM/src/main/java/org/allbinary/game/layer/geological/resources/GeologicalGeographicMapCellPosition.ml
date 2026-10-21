(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
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
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)

class geologicalGeographicMapCellPosition ((column : int), (row : int), (columns : int), (rows : int), (width : int), (height : int), (geologicalResource_arg : GeologicalResource.geologicalResource)) =
  object
    inherit GeographicMapCellPosition.geographicMapCellPosition (column, row, columns, rows, width, height)
    val mutable geologicalResource : GeologicalResource.geologicalResource = (Obj.magic 0)
    method geologicalResource = geologicalResource
    method set_geologicalResource value' = geologicalResource <- value'
    
    

    method getGeologicalResource () : GeologicalResource.geologicalResource =
        begin
        (geologicalResource :> GeologicalResource.geologicalResource)
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        geologicalResource <- geologicalResource_arg
      end
  end
let () = java_register_constructor "GeologicalGeographicMapCellPosition" (fun arguments -> Obj.repr (new geologicalGeographicMapCellPosition (Obj.obj arguments)))


