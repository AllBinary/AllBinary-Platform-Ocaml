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
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)

class noGeographicMapCellPositionFactoryInitVisitor () =
  object
    

    method visit : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_tiledLayer, _cellPosition) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NoGeographicMapCellPositionFactoryInitVisitor" (fun arguments -> Obj.repr (new noGeographicMapCellPositionFactoryInitVisitor (Obj.obj arguments)))


