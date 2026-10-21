(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot  
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.layer.waypoint.WorkWaypoint *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap *)
(* import org.allbinary.util.ABHashtable *)

class advancedRTSLayerUtil () =
  object
    

    method createFakeRTSLayerHashtable : 'any1 'return. 'any1 -> 'return = fun (baseRaceTrackGeographicMap) ->
        let baseRaceTrackGeographicMap = Obj.repr baseRaceTrackGeographicMap in
        begin
        let hashtable : Obj.t ref = ref ((Obj.repr ((RTSLayerUtil.getInstance ())#createFakeRTSLayerHashtable ((Obj.magic baseRaceTrackGeographicMap))))) in ();
        ignore ((Obj.magic !hashtable)#put ((WorkWaypoint.get_iD ()), ((SmallIntegerSingletonFactory.getInstance ())#getAt (50))));
        (Obj.magic ((Obj.magic !hashtable)))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "AdvancedRTSLayerUtil" (fun arguments -> Obj.repr (new advancedRTSLayerUtil (Obj.obj arguments)))

let instance = (new advancedRTSLayerUtil ())
let get_instance () = instance
let () = java_register_static "AdvancedRTSLayerUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AdvancedRTSLayerUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


