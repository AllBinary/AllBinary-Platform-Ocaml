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
(* package org.allbinary.game.behavior.topview *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.direction.Direction *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellType *)
(* import org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory *)

class topViewCharacterBehavior () =
  object
    

    method terrainEvent : 'any1 'any2 'any6. 'any1 * 'any2 * int * int * BasicGeographicMap.basicGeographicMap array * 'any6 -> unit = fun (_layer, _direction, (_x : int), (_y : int), (_geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), _geographicMapCellPosition) ->
        begin
        ()
        end [@@warning "-20"]
    

    method terrainMove : 'any1. 'any1 * BasicGeographicMap.basicGeographicMap array * int * int -> unit = fun (_layer, (_geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), (_x : int), (_y : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method hasSolidBlock ((geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), (geographicMapCellTypeArray : GeographicMapCellType.geographicMapCellType array)) : bool =
        try
        begin
        let size : int ref = ref ((Array.length geographicMapInterfaceArray)) in ();
        let basicTopViewGeographicMapCellTypeFactory : BasicTopViewGeographicMapCellTypeFactory.basicTopViewGeographicMapCellTypeFactory ref = ref (((Obj.magic 0) :> BasicTopViewGeographicMapCellTypeFactory.basicTopViewGeographicMapCellTypeFactory)) in ();
        for index = 0 to !size - 1 do
            basicTopViewGeographicMapCellTypeFactory := (Obj.magic (geographicMapInterfaceArray.(index)#getGeographicMapCellTypeFactory ()));
            if (!basicTopViewGeographicMapCellTypeFactory#bLOCK_CELL_TYPE#isType (geographicMapCellTypeArray.(index))) then begin
                raise (Java_return (Obj.repr (true)))
            end
        done;
        false
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "TopViewCharacterBehavior" (fun arguments -> Obj.repr (new topViewCharacterBehavior (Obj.obj arguments)))


