(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.input.form *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.layer.NullPathFindingLayer *)
(* import org.allbinary.game.layer.PathFindingLayerInterface *)
(* import org.allbinary.game.layer.waypoint.WaypointLayer *)

class primaryWaypointHelper () =
  object
    val mutable waypointLayer : PathFindingLayerInterface.pathFindingLayerInterface = (Obj.magic 0)
    method waypointLayer = waypointLayer
    method set_waypointLayer value' = waypointLayer <- value'
    
    

    method getWaypointLayer () : PathFindingLayerInterface.pathFindingLayerInterface =
        begin
        (waypointLayer :> PathFindingLayerInterface.pathFindingLayerInterface)
        end
    

    method setWaypointLayer : 'any1. 'any1 -> unit = fun (waypointLayer_arg) ->
        let waypointLayer_arg = Obj.repr waypointLayer_arg in
        begin
        waypointLayer <- (Obj.magic waypointLayer_arg)
        end [@@warning "-20"]

    initializer
      begin
        waypointLayer <- ((NullPathFindingLayer.get_nULL_PATH_FINDING_LAYER ()) :> PathFindingLayerInterface.pathFindingLayerInterface);
        ();
        ()
      end
  end
let () = java_register_constructor "PrimaryWaypointHelper" (fun arguments -> Obj.repr (new primaryWaypointHelper (Obj.obj arguments)))

let instance = (new primaryWaypointHelper ())
let get_instance () = instance
let () = java_register_static "PrimaryWaypointHelper.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PrimaryWaypointHelper.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


