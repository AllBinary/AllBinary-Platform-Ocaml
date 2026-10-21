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

class allAnimationsEverywhereTileMapPlacementVisitor () =
  object
    inherit TileMapPlacementVisitor.tileMapPlacementVisitor ()
    

    method visit : 'any1. 'any1 * int array array -> unit = fun (_lastMap, (mapData : int array array)) ->
        begin
        let size : int ref = ref ((Array.length mapData)) in ();
        let size2 : int ref = ref (((Array.length mapData.(0)) - 7)) in ();
        for index = 0 to !size - 1 do
            let index2 : int ref = ref (0) in ();
            while (index2 < !size2) do
                mapData.(index).(index2) <- 1;
                mapData.(index).((index2 + 1)) <- 17;
                mapData.(index).((index2 + 2)) <- 33;
                mapData.(index).((index2 + 3)) <- 49;
                mapData.(index).((index2 + 4)) <- 65;
                mapData.(index).((index2 + 5)) <- 81;
                mapData.(index).((index2 + 6)) <- 97;
                index2 <- (index2 + 7)
            done
        done
        end [@@warning "-7-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "AllAnimationsEverywhereTileMapPlacementVisitor" (fun arguments -> Obj.repr (new allAnimationsEverywhereTileMapPlacementVisitor (Obj.obj arguments)))


