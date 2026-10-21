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
(* import org.allbinary.game.layer.AdvancedRTSGameLayer *)
(* import org.allbinary.game.layer.NullPathFindingLayer *)
(* import org.allbinary.game.layer.PathFindingLayerInterface *)
(* import org.allbinary.game.layer.RTSLayer *)
(* import org.allbinary.game.layer.RTSLayerEvent *)
(* import org.allbinary.game.layer.unit.UnitLayer *)
(* import org.allbinary.game.layer.unit.UnitWaypointBehavior *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class assignWaypointsUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable wAYPOINT_EVENT : RTSLayerEvent.rTSLayerEvent = (Obj.magic 0)
    method wAYPOINT_EVENT = wAYPOINT_EVENT
    method set_wAYPOINT_EVENT value' = wAYPOINT_EVENT <- value'
    

    method set : 'any1 'any2. 'any1 * 'any2 -> unit = fun (unitLayer, ownerAdvancedRTSGameLayer) ->
        let unitLayer = Obj.repr unitLayer in
        let ownerAdvancedRTSGameLayer = Obj.repr ownerAdvancedRTSGameLayer in
        begin
        (try
            let list : BasicArrayList.basicArrayList ref = ref (((((Obj.magic ownerAdvancedRTSGameLayer)#getWaypointBehavior ())#getOwnedWaypointList ()) :> BasicArrayList.basicArrayList)) in ();
            let unitWaypointBehavior : UnitWaypointBehavior.unitWaypointBehavior ref = ref (((Obj.magic ((Obj.magic unitLayer)#getWaypointBehavior ())) :> UnitWaypointBehavior.unitWaypointBehavior)) in ();
            for index = ((!list#size ()) - 1) downto 0 do
                let waypointLayer : RTSLayer.rTSLayer ref = ref (((Obj.magic (!list#get (index))) :> RTSLayer.rTSLayer)) in ();
                ignore (wAYPOINT_EVENT#setRtsLayer (!waypointLayer));
                ignore (!unitWaypointBehavior#onWaypointEvent (wAYPOINT_EVENT))
            done;
            let waypointLayer : PathFindingLayerInterface.pathFindingLayerInterface ref = ref ((((PrimaryWaypointHelper.getInstance ())#getWaypointLayer ()) :> PathFindingLayerInterface.pathFindingLayerInterface)) in ();
            if ((Obj.repr !waypointLayer) != (Obj.repr (NullPathFindingLayer.get_nULL_PATH_FINDING_LAYER ()))) then begin
                ignore (wAYPOINT_EVENT#setRtsLayer (!waypointLayer));
                ignore (!unitWaypointBehavior#onWaypointEvent (wAYPOINT_EVENT))
            end
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, "set", e))
        end)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        wAYPOINT_EVENT <- ((new RTSLayerEvent.rTSLayerEvent ((NullPathFindingLayer.get_nULL_PATH_FINDING_LAYER ()))) :> RTSLayerEvent.rTSLayerEvent);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AssignWaypointsUtil" (fun arguments -> Obj.repr (new assignWaypointsUtil (Obj.obj arguments)))

let instance = (new assignWaypointsUtil ())
let get_instance () = instance
let () = java_register_static "AssignWaypointsUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AssignWaypointsUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


