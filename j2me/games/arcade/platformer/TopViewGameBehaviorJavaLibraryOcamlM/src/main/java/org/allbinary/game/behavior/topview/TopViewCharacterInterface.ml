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
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellType *)

class virtual topViewCharacterInterface =
  object
    method virtual terrainMove : BasicGeographicMap.basicGeographicMap array * GeographicMapCellType.geographicMapCellType array * int * int -> unit
    method virtual terrainEvent : 'any5 . int * int * BasicGeographicMap.basicGeographicMap array * GeographicMapCellType.geographicMapCellType array * 'any5 -> unit
    method virtual move : unit -> unit
    method virtual upp : unit -> unit
    method virtual leftp : unit -> unit
    method virtual rightp : unit -> unit
    method virtual reset : unit -> unit
  end


