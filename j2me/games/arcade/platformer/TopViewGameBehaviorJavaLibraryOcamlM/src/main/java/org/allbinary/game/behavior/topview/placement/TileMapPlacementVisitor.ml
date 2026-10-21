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
(* package org.allbinary.game.behavior.topview.placement *)

open Allbinary_java [@@warning "-33"]
(* import org.mapeditor.core.TiledMap *)

class tileMapPlacementVisitor () =
  object
    

    method visit : 'any1. 'any1 * int array array -> unit = fun (_lastMap, (_mapData : int array array)) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "TileMapPlacementVisitor" (fun arguments -> Obj.repr (new tileMapPlacementVisitor (Obj.obj arguments)))


