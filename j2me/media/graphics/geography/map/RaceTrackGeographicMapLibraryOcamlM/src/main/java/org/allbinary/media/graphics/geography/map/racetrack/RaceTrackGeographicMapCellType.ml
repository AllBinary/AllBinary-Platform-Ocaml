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
(* package org.allbinary.media.graphics.geography.map.racetrack *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellType *)

class raceTrackGeographicMapCellType ((name_arg : string), (type_ : int), (travelCost_arg : int), (reset : int)) =
  object
    inherit GeographicMapCellType.geographicMapCellType (type_, reset)
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable travelCost : int = 0
    method travelCost = travelCost
    method set_travelCost value' = travelCost <- value'
    
    

    method getTravelCost () : int =
        begin
        travelCost
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        name <- name_arg;
        travelCost <- travelCost_arg
      end
  end
let () = java_register_constructor "RaceTrackGeographicMapCellType" (fun arguments -> Obj.repr (new raceTrackGeographicMapCellType (Obj.obj arguments)))


