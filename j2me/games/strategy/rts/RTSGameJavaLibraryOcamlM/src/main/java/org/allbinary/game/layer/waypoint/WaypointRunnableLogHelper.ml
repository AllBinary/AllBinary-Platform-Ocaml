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
(* package org.allbinary.game.layer.waypoint *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.layer.PathFindingLayerInterface *)

class waypointRunnableLogHelper () =
  object
    

    method start : 'any1. 'any1 -> unit = fun (_pathFindingLayerInterface) ->
        begin
        ()
        end [@@warning "-20"]
    

    method end_ : 'any1. 'any1 -> unit = fun (_pathFindingLayerInterface) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "WaypointRunnableLogHelper" (fun arguments -> Obj.repr (new waypointRunnableLogHelper (Obj.obj arguments)))

let instance = (new waypointRunnableLogHelper ())
let get_instance () = instance
let () = java_register_static "WaypointRunnableLogHelper.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "WaypointRunnableLogHelper.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


