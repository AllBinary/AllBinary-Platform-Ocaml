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
(* package org.allbinary.media.graphics.geography.map.drop *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)

class baseDropCellPositionGenerator () =
  object (self)
    

    method getName () : string =
        begin
        (java_get_class (Obj.repr self))
        end
    

    method update : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_allBinaryGameLayerManager, _geographicMapInterface) ->
        begin
        ()
        end [@@warning "-20"]
    

    method isDropAllowedAt : 'any1. 'any1 -> bool = fun (_geographicMapCellPosition) ->
        begin
        true
        end [@@warning "-20"]
    

    method processTick : 'any1. 'any1 -> unit = fun (_allBinaryLayerManager) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "BaseDropCellPositionGenerator" (fun arguments -> Obj.repr (new baseDropCellPositionGenerator (Obj.obj arguments)))


