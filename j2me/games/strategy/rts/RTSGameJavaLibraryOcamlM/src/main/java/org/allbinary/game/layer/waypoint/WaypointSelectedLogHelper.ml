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
[@@@warning "-20"]
(* import org.allbinary.game.layer.PathFindingLayerInterface *)
(* import org.allbinary.game.layer.WaypointBehaviorBase *)
(* import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.util.BasicArrayList *)

class waypointSelectedLogHelper () =
  object (self)
    inherit WaypointLogHelper.waypointLogHelper ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonSeps : CommonSeps.commonSeps = (Obj.magic 0)
    method commonSeps = commonSeps
    method set_commonSeps value' = commonSeps <- value'
    val mutable stringUtil : StringUtil.stringUtil = (Obj.magic 0)
    method stringUtil = stringUtil
    method set_stringUtil value' = stringUtil <- value'
    

    method onWaypointEvent : 'any1 'any2. 'any1 * 'any2 -> unit = fun (associatedAdvancedRTSGameLayer, advancedRTSGameLayer) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        let advancedRTSGameLayer = Obj.repr advancedRTSGameLayer in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())));
        ignore (!stringBuffer#append (" onWaypointEvent: "));
        ignore (!stringBuffer#append (((Obj.magic advancedRTSGameLayer)#getName ())));
        if (((Obj.magic advancedRTSGameLayer)#getParentLayer ()) != (Obj.magic 0)) then begin
            ignore (!stringBuffer#append (" With Parent: "));
            ignore (!stringBuffer#append ((((Obj.magic advancedRTSGameLayer)#getParentLayer ())#getName ())))
        end;
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "onWaypointEvent"))
        end [@@warning "-7-20"]
    

    method addWaypointFromBuilding : 'any1 'any2. 'any1 * 'any2 -> unit = fun (associatedAdvancedRTSGameLayer, advancedRTSGameLayer) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        let advancedRTSGameLayer = Obj.repr advancedRTSGameLayer in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())));
        ignore (!stringBuffer#append (" Adding Waypoint: "));
        ignore (!stringBuffer#append (((Obj.magic advancedRTSGameLayer)#getName ())));
        if (((Obj.magic advancedRTSGameLayer)#getParentLayer ()) != (Obj.magic 0)) then begin
            ignore (!stringBuffer#append (" With Parent: "));
            ignore (!stringBuffer#append ((((Obj.magic advancedRTSGameLayer)#getParentLayer ())#getName ())))
        end;
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "selected: onWaypointEvent"))
        end [@@warning "-7-20"]
    

    method addWaypointFromBuildingList : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (associatedAdvancedRTSGameLayer, _advancedRTSGameLayer, list) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        let list = Obj.repr list in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())));
        ignore (!stringBuffer#append (" Waypoints: "));
        ignore (!stringBuffer#append ((stringUtil#toString ((Obj.magic list)))));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "selected: onWaypointEvent"))
        end [@@warning "-7-20"]
    

    method insertWaypoint : 'any1 'any3. 'any1 * int * 'any3 * string -> unit = fun (associatedAdvancedRTSGameLayer, (_index : int), rtsLayer, (waypointName : string)) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        let rtsLayer = Obj.repr rtsLayer in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())));
        ignore (!stringBuffer#append (commonSeps#sPACE));
        ignore (!stringBuffer#append (waypointName));
        ignore (!stringBuffer#append (" Insert: "));
        ignore (!stringBuffer#append (((Obj.magic rtsLayer)#getName ())));
        ignore (!stringBuffer#append (" for Waypoint: "));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "selected: insertWaypoint"))
        end [@@warning "-7-20"]
    

    method insertWaypointList : 'any1 'any3 'any5. 'any1 * int * 'any3 * string * 'any5 -> unit = fun (associatedAdvancedRTSGameLayer, (_index : int), rtsLayer, (waypointName : string), list) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        let rtsLayer = Obj.repr rtsLayer in
        let list = Obj.repr list in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())));
        ignore (!stringBuffer#append (commonSeps#sPACE));
        ignore (!stringBuffer#append (waypointName));
        ignore (!stringBuffer#append (" Insert: "));
        ignore (!stringBuffer#append (((Obj.magic rtsLayer)#getName ())));
        ignore (!stringBuffer#append (" Waypoints: "));
        ignore (!stringBuffer#append ((stringUtil#toString ((Obj.magic list)))));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "selected: insertWaypoint"))
        end [@@warning "-7-20"]
    

    method setRandomGeographicMapCellHistoryList : 'any1 'any2. 'any1 * 'any2 -> unit = fun (associatedAdvancedRTSGameLayer, pathsList) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        let pathsList = Obj.repr pathsList in
        begin
        let size : int ref = ref (((Obj.magic pathsList)#size ())) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())));
        ignore (!stringBuffer#append (commonSeps#sPACE));
        ignore (!stringBuffer#append ((CommonLabels.getInstance ())#sTART));
        ignore (!stringBuffer#appendint (!size));
        ignore (!stringBuffer#append (" -> "));
        ignore (!stringBuffer#append ((stringUtil#toString ((Obj.magic pathsList)))));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "selected: setRandomGeographicMapCellHistory"))
        end [@@warning "-7-20"]
    

    method moveAwayFromBuilding : 'any1. 'any1 -> unit = fun (associatedAdvancedRTSGameLayer) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())))#append (" Trying to move away from building")))), self, "selected: moveAwayFromBuilding"))
        end [@@warning "-7-20"]
    

    method needToMove : 'any1 'any2. 'any1 * 'any2 -> unit = fun (associatedAdvancedRTSGameLayer, unitWaypointBehavior) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        let unitWaypointBehavior = Obj.repr unitWaypointBehavior in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())))#append (((Obj.magic unitWaypointBehavior)#getMovementLogicAsString ()))))), self, "needToMove"))
        end [@@warning "-7-20"]
    

    method setRandomGeographicMapCellHistory : 'any1. 'any1 -> unit = fun (associatedAdvancedRTSGameLayer) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())))#append (" pathsList is null")))), self, "setRandomGeographicMapCellHistory"))
        end [@@warning "-7-20"]
    

    method setCurrentPathGeographicMapCellPosition : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (associatedAdvancedRTSGameLayer, existingCurrentPathGeographicMapCellPosition, currentPathGeographicMapCellPosition) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        let existingCurrentPathGeographicMapCellPosition = Obj.repr existingCurrentPathGeographicMapCellPosition in
        let currentPathGeographicMapCellPosition = Obj.repr currentPathGeographicMapCellPosition in
        begin
        if ((Obj.magic existingCurrentPathGeographicMapCellPosition) == (Obj.magic 0)) then begin
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())))#append (" currentPathGeographicMapCellPosition: "))#append ((stringUtil#toString ((Obj.magic currentPathGeographicMapCellPosition))))))), self, "setCurrentPathGeographicMapCellPosition"))
        end
        end [@@warning "-7-20"]
    

    method setNextUnvisitedPathGeographicMapCellPosition : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (associatedAdvancedRTSGameLayer, existingNextUnvisitedPathGeographicMapCellPosition, nextUnvisitedPathGeographicMapCellPosition) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        let existingNextUnvisitedPathGeographicMapCellPosition = Obj.repr existingNextUnvisitedPathGeographicMapCellPosition in
        let nextUnvisitedPathGeographicMapCellPosition = Obj.repr nextUnvisitedPathGeographicMapCellPosition in
        begin
        if ((Obj.repr (Obj.magic existingNextUnvisitedPathGeographicMapCellPosition)) != (Obj.repr (Obj.magic nextUnvisitedPathGeographicMapCellPosition))) then begin
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())))#append (" nextUnvisitedPathGeographicMapCellPosition: "))#append ((stringUtil#toString ((Obj.magic nextUnvisitedPathGeographicMapCellPosition))))))), self, "setNextUnvisitedPathGeographicMapCellPosition"))
        end
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonSeps <- ((CommonSeps.getInstance ()) :> CommonSeps.commonSeps);
        stringUtil <- ((StringUtil.getInstance ()) :> StringUtil.stringUtil);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "WaypointSelectedLogHelper" (fun arguments -> Obj.repr (new waypointSelectedLogHelper (Obj.obj arguments)))

let instanceC = (new waypointSelectedLogHelper ())
let get_instanceC () = instanceC
let () = java_register_static "WaypointSelectedLogHelper.get_instanceC" (fun _ -> Obj.repr (get_instanceC ()))

let getInstance () =
        begin
        instanceC
        end
let () = java_register_static "WaypointSelectedLogHelper.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


