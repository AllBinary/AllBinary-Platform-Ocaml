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
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellHistory *)

let geographicMapCellHistory : GeographicMapCellHistory.geographicMapCellHistory ref = ref (((new GeographicMapCellHistory.geographicMapCellHistory ()) :> GeographicMapCellHistory.geographicMapCellHistory))
let get_geographicMapCellHistory () = !geographicMapCellHistory
let set_geographicMapCellHistory value' = geographicMapCellHistory := value'
let () = java_register_static "RaceTrackRoadsGeographicMapCellHistoryFactory.get_geographicMapCellHistory" (fun _ -> Obj.repr (get_geographicMapCellHistory ()))

let getInstance () : GeographicMapCellHistory.geographicMapCellHistory =
        begin
        (!geographicMapCellHistory :> GeographicMapCellHistory.geographicMapCellHistory)
        end

let () = java_register_static "RaceTrackRoadsGeographicMapCellHistoryFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class raceTrackRoadsGeographicMapCellHistoryFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "RaceTrackRoadsGeographicMapCellHistoryFactory" (fun arguments -> Obj.repr (new raceTrackRoadsGeographicMapCellHistoryFactory (Obj.obj arguments)))


