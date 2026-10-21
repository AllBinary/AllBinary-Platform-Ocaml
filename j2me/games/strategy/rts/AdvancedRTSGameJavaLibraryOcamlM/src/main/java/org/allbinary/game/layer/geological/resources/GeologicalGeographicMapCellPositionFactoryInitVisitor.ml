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
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface *)

class geologicalGeographicMapCellPositionFactoryInitVisitor () =
  object
    

    method visit : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_tiledLayer, cellPosition) ->
        let cellPosition = Obj.repr cellPosition in
        begin
        let geologicalGeographicMapCellPosition : GeologicalGeographicMapCellPosition.geologicalGeographicMapCellPosition ref = ref ((((Obj.magic (Obj.magic cellPosition))) :> GeologicalGeographicMapCellPosition.geologicalGeographicMapCellPosition)) in ();
        ignore ((!geologicalGeographicMapCellPosition#getGeologicalResource ())#init ())
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "GeologicalGeographicMapCellPositionFactoryInitVisitor" (fun arguments -> Obj.repr (new geologicalGeographicMapCellPositionFactoryInitVisitor (Obj.obj arguments)))


