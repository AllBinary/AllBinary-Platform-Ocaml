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
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.math.PositionStrings *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.util.BasicArrayList *)

class waypoint2SelectedLogHelper () =
  object (self)
    inherit Waypoint2LogHelper.waypoint2LogHelper ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonSeps : CommonSeps.commonSeps = (Obj.magic 0)
    method commonSeps = commonSeps
    method set_commonSeps value' = commonSeps <- value'
    val mutable positionStrings : PositionStrings.positionStrings = (Obj.magic 0)
    method positionStrings = positionStrings
    method set_positionStrings value' = positionStrings <- value'
    val mutable stringUtil : StringUtil.stringUtil = (Obj.magic 0)
    method stringUtil = stringUtil
    method set_stringUtil value' = stringUtil <- value'
    val mutable eNEMY_POSSIBLE_TARGET : string = ""
    method eNEMY_POSSIBLE_TARGET = eNEMY_POSSIBLE_TARGET
    method set_eNEMY_POSSIBLE_TARGET value' = eNEMY_POSSIBLE_TARGET <- value'
    val mutable cLOSE_RANGE : string = ""
    method cLOSE_RANGE = cLOSE_RANGE
    method set_cLOSE_RANGE value' = cLOSE_RANGE <- value'
    val mutable sENSOR_RANGE : string = ""
    method sENSOR_RANGE = sENSOR_RANGE
    method set_sENSOR_RANGE value' = sENSOR_RANGE <- value'
    val mutable oNLY_TARGETS : string = ""
    method oNLY_TARGETS = oNLY_TARGETS
    method set_oNLY_TARGETS value' = oNLY_TARGETS <- value'
    val mutable sHORTER_THAN_CURRENT_TARGET_DISTANCE : string = ""
    method sHORTER_THAN_CURRENT_TARGET_DISTANCE = sHORTER_THAN_CURRENT_TARGET_DISTANCE
    method set_sHORTER_THAN_CURRENT_TARGET_DISTANCE value' = sHORTER_THAN_CURRENT_TARGET_DISTANCE <- value'
    val mutable cURRENT_TARGET_DESTROYED : string = ""
    method cURRENT_TARGET_DESTROYED = cURRENT_TARGET_DESTROYED
    method set_cURRENT_TARGET_DESTROYED value' = cURRENT_TARGET_DESTROYED <- value'
    val mutable cURRENT_TARGET_NOT_AVAILABLE : string = ""
    method cURRENT_TARGET_NOT_AVAILABLE = cURRENT_TARGET_NOT_AVAILABLE
    method set_cURRENT_TARGET_NOT_AVAILABLE value' = cURRENT_TARGET_NOT_AVAILABLE <- value'
    val mutable pROCESS_POSSIBLE_TARGET : string = ""
    method pROCESS_POSSIBLE_TARGET = pROCESS_POSSIBLE_TARGET
    method set_pROCESS_POSSIBLE_TARGET value' = pROCESS_POSSIBLE_TARGET <- value'
    

    method initRange : 'any1. 'any1 * int * int -> unit = fun (associatedAdvancedRTSGameLayer, (closeRange : int), (sensorRange : int)) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())));
        ignore (!stringBuffer#append (cLOSE_RANGE));
        ignore (!stringBuffer#appendint (closeRange));
        ignore (!stringBuffer#append (sENSOR_RANGE));
        ignore (!stringBuffer#appendint (sensorRange));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "selected: initRange"))
        end [@@warning "-7-20"]
    

    method processPossibleTarget : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 * int * bool * bool -> unit = fun (associatedAdvancedRTSGameLayer, waypointBehaviorBase, layerInterface, (anotherTargetDistance : int), (isShorterThanCurrentTargetDistance : bool), (isCurrentTargetDestroyed : bool)) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        let waypointBehaviorBase = Obj.repr waypointBehaviorBase in
        let layerInterface = Obj.repr layerInterface in
        begin
        if (((Obj.magic waypointBehaviorBase)#isWaypointListEmptyOrOnlyTargets ()) && ((Obj.magic waypointBehaviorBase)#isInSensorRange ((Obj.magic (Obj.magic layerInterface)), anotherTargetDistance))) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())));
            ignore (!stringBuffer#append (oNLY_TARGETS));
            ignore (!stringBuffer#appendboolean (((Obj.magic waypointBehaviorBase)#isWaypointListEmptyOrOnlyTargets ())));
            ignore (!stringBuffer#append (sHORTER_THAN_CURRENT_TARGET_DISTANCE));
            ignore (!stringBuffer#appendboolean (isShorterThanCurrentTargetDistance));
            ignore (!stringBuffer#append (cURRENT_TARGET_DESTROYED));
            ignore (!stringBuffer#appendboolean (isCurrentTargetDestroyed));
            ignore (!stringBuffer#append (cURRENT_TARGET_NOT_AVAILABLE));
            ignore (!stringBuffer#appendboolean (((((Obj.magic waypointBehaviorBase)#getCurrentTargetLayerInterface ()) == (Obj.magic 0)))));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, pROCESS_POSSIBLE_TARGET))
        end
        end [@@warning "-7-20"]
    

    method processSetTarget : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 * int -> unit = fun (associatedAdvancedRTSGameLayer, waypointBehaviorBase, layerInterface, (anotherTargetDistance : int)) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        let waypointBehaviorBase = Obj.repr waypointBehaviorBase in
        let layerInterface = Obj.repr layerInterface in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())));
        ignore (!stringBuffer#append (commonSeps#sPACE));
        ignore (!stringBuffer#append (((Obj.magic waypointBehaviorBase)#getCurrentTargetingStateString ())));
        ignore (!stringBuffer#append (eNEMY_POSSIBLE_TARGET));
        ignore (!stringBuffer#append (((Obj.magic layerInterface)#getName ())));
        ignore (!stringBuffer#append (" anotherTargetDistance: "));
        ignore (!stringBuffer#appendint (anotherTargetDistance));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "selected: processPossibleTarget2"))
        end [@@warning "-7-20"]
    

    method processPossibleTargetCloser : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 * int -> unit = fun (associatedAdvancedRTSGameLayer, waypointBehaviorBase, layerInterface, (anotherTargetDistance : int)) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        let waypointBehaviorBase = Obj.repr waypointBehaviorBase in
        let layerInterface = Obj.repr layerInterface in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())));
        ignore (!stringBuffer#append (commonSeps#sPACE));
        ignore (!stringBuffer#append (((Obj.magic waypointBehaviorBase)#getCurrentTargetingStateString ())));
        ignore (!stringBuffer#append (eNEMY_POSSIBLE_TARGET));
        ignore (!stringBuffer#append (((Obj.magic layerInterface)#getName ())));
        ignore (!stringBuffer#append (" anotherTargetDistance: "));
        ignore (!stringBuffer#appendint (anotherTargetDistance));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "selected: processPossibleTarget3"))
        end [@@warning "-7-20"]
    

    method setTarget : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 * int -> unit = fun (associatedAdvancedRTSGameLayer, waypointBehaviorBase, layerInterface, (anotherTargetDistance : int)) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        let waypointBehaviorBase = Obj.repr waypointBehaviorBase in
        let layerInterface = Obj.repr layerInterface in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())));
        ignore (!stringBuffer#append (commonSeps#sPACE));
        ignore (!stringBuffer#append (((Obj.magic waypointBehaviorBase)#getName ())));
        ignore (!stringBuffer#append (" targeting: "));
        ignore (!stringBuffer#append (((Obj.magic layerInterface)#getName ())));
        ignore (!stringBuffer#append (" at: "));
        ignore (!stringBuffer#appendint (anotherTargetDistance));
        ignore (!stringBuffer#append (" instead of: "));
        ignore (!stringBuffer#append (((Obj.magic waypointBehaviorBase)#getCurrentTargetingStateString ())));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "selected: setTarget"))
        end [@@warning "-7-20"]
    

    method setTargetPath : 'any1. 'any1 -> unit = fun (_associatedAdvancedRTSGameLayer) ->
        begin
        ignore ((Obj.magic logUtil)#putF ("Target Destroyed", self, "selected: setTargetPath"))
        end [@@warning "-7-20"]
    

    method setTargetPathIgnoreNewPath : 'any1 'any2. 'any1 * 'any2 -> unit = fun (associatedAdvancedRTSGameLayer, waypointBehaviorBase) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        let waypointBehaviorBase = Obj.repr waypointBehaviorBase in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())));
        ignore (!stringBuffer#append (" Set Path To Target: "));
        ignore (!stringBuffer#append ((((Obj.magic waypointBehaviorBase)#getCurrentTargetLayerInterface ())#getName ())));
        ignore (!stringBuffer#append (commonSeps#sPACE));
        ignore (!stringBuffer#append ((stringUtil#toString (((Obj.magic waypointBehaviorBase)#getCurrentTargetLayerInterface ())))));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "selected: setTargetPath"))
        end [@@warning "-7-20"]
    

    method processWaypoint : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 * int -> unit = fun (associatedAdvancedRTSGameLayer, waypointBehaviorBase, targetLayer, (size : int)) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        let waypointBehaviorBase = Obj.repr waypointBehaviorBase in
        let targetLayer = Obj.repr targetLayer in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())));
        ignore (!stringBuffer#append (" Size: "));
        ignore (!stringBuffer#appendint (size));
        ignore (!stringBuffer#append (" Waypoint: "));
        ignore (!stringBuffer#append (((Obj.magic targetLayer)#getName ())));
        ignore (!stringBuffer#append (" Target: "));
        ignore (!stringBuffer#append ((stringUtil#toString (((Obj.magic waypointBehaviorBase)#getCurrentTargetLayerInterface ())))));
        ignore (!stringBuffer#append (" isTrackingWaypoint: "));
        ignore (!stringBuffer#appendboolean (((Obj.magic waypointBehaviorBase)#isTrackingWaypoint ())));
        ignore (!stringBuffer#append (" WaypointOverridesAttacking: "));
        ignore (!stringBuffer#appendboolean (((Obj.magic waypointBehaviorBase)#isWaypointOverridesAttacking ())));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "selected: processWaypoint"))
        end [@@warning "-7-20"]
    

    method processWaypointTracked : 'any1 'any2. 'any1 * 'any2 -> unit = fun (associatedAdvancedRTSGameLayer, waypointBehaviorBase) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        let waypointBehaviorBase = Obj.repr waypointBehaviorBase in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())));
        ignore (!stringBuffer#append (" currentPathGeographicMapCellPosition: "));
        ignore (!stringBuffer#append ((stringUtil#toString (((Obj.magic waypointBehaviorBase)#getCurrentPathGeographicMapCellPosition ())))));
        ignore (!stringBuffer#append (" nextUnvisitedPathGeographicMapCellPosition: "));
        ignore (!stringBuffer#append ((stringUtil#toString (((Obj.magic waypointBehaviorBase)#getNextUnvisitedPathGeographicMapCellPosition ())))));
        ignore (!stringBuffer#append (" Tracked: "));
        ignore (!stringBuffer#append ((stringUtil#toString ((((Obj.magic waypointBehaviorBase)#getCurrentGeographicMapCellHistory ())#getTracked ())))));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "selected: processWaypoint"))
        end [@@warning "-7-20"]
    

    method processWaypointTrackedVisit : 'any1 'any2. 'any1 * 'any2 -> unit = fun (associatedAdvancedRTSGameLayer, geographicMapCellPosition) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        let geographicMapCellPosition = Obj.repr geographicMapCellPosition in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())));
        ignore (!stringBuffer#append (" Visited: "));
        ignore (!stringBuffer#append ((stringUtil#toString ((Obj.magic geographicMapCellPosition)))));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "selected: processWaypoint"))
        end [@@warning "-7-20"]
    

    method processWaypointTrackedWithoutProgress : 'any1. 'any1 * string -> unit = fun (associatedAdvancedRTSGameLayer, (reason : string)) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())))#append (reason)))), self, "turnTo"))
        end [@@warning "-7-20"]
    

    method wander : 'any1. 'any1 -> unit = fun (associatedAdvancedRTSGameLayer) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        begin
        ignore ((Obj.magic logUtil)#putF (((Obj.magic associatedAdvancedRTSGameLayer)#getName ()), self, "wander"))
        end [@@warning "-7-20"]
    

    method targetDestroyed : 'any1. 'any1 -> unit = fun (associatedAdvancedRTSGameLayer) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())))#append (" Target Destroyed")))), self, "selected: processTargeting"))
        end [@@warning "-7-20"]
    

    method processTargeting : 'any1. 'any1 * int * int -> unit = fun (associatedAdvancedRTSGameLayer, (dx : int), (dy : int)) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())));
        ignore (!stringBuffer#append (commonSeps#sPACE));
        ignore (!stringBuffer#append (positionStrings#dX_LABEL));
        ignore (!stringBuffer#appendint (dx));
        ignore (!stringBuffer#append (commonSeps#sPACE));
        ignore (!stringBuffer#append (positionStrings#dY_LABEL));
        ignore (!stringBuffer#appendint (dy));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "selected: processTargeting"))
        end [@@warning "-7-20"]
    

    method processTargetingNonWayPoint : 'any1. 'any1 * int * int -> unit = fun (associatedAdvancedRTSGameLayer, (dx : int), (dy : int)) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())));
        ignore (!stringBuffer#append (" Targeting Non Waypoint "));
        ignore (!stringBuffer#append (positionStrings#dX_LABEL));
        ignore (!stringBuffer#appendint (dx));
        ignore (!stringBuffer#append (commonSeps#sPACE));
        ignore (!stringBuffer#append (positionStrings#dY_LABEL));
        ignore (!stringBuffer#appendint (dy));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "selected: processTargeting"))
        end [@@warning "-7-20"]
    

    method removeWaypoint : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 * string -> unit = fun (associatedAdvancedRTSGameLayer, unitWaypointBehavior2, waypointLayer, (reason : string)) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        let unitWaypointBehavior2 = Obj.repr unitWaypointBehavior2 in
        let waypointLayer = Obj.repr waypointLayer in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())));
        ignore (!stringBuffer#append (commonSeps#sPACE));
        ignore (!stringBuffer#append (((Obj.magic unitWaypointBehavior2)#getName ())));
        ignore (!stringBuffer#append (" remove: "));
        ignore (!stringBuffer#append (((Obj.magic waypointLayer)#getName ())));
        ignore (!stringBuffer#append (" because: "));
        ignore (!stringBuffer#append (reason));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "selected: removeWaypoint"))
        end [@@warning "-7-20"]
    

    method removeWaypointList : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (associatedAdvancedRTSGameLayer, unitWaypointBehavior2, list) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        let unitWaypointBehavior2 = Obj.repr unitWaypointBehavior2 in
        let list = Obj.repr list in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())));
        ignore (!stringBuffer#append (commonSeps#sPACE));
        ignore (!stringBuffer#append (((Obj.magic unitWaypointBehavior2)#getName ())));
        ignore (!stringBuffer#append (" Waypoints: "));
        ignore (!stringBuffer#append ((stringUtil#toString ((Obj.magic list)))));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "selected: removeWaypoint"))
        end [@@warning "-7-20"]
    

    method removeWaypointClear : 'any1. 'any1 -> unit = fun (associatedAdvancedRTSGameLayer) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())))#append (" Clearing removed waypoint")))), self, "selected: removeWaypoint"))
        end [@@warning "-7-20"]
    

    method clearTarget : 'any1. 'any1 -> unit = fun (associatedAdvancedRTSGameLayer) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())))#append (" Cleared Target")))), self, "selected: clearTarget"))
        end [@@warning "-7-20"]
    

    method addWaypointFromUser : 'any1 'any2. 'any1 * 'any2 -> unit = fun (associatedAdvancedRTSGameLayer, advancedRTSGameLayer) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        let advancedRTSGameLayer = Obj.repr advancedRTSGameLayer in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())));
        ignore (!stringBuffer#append (" Adding Waypoint to Selected: "));
        ignore (!stringBuffer#append (((Obj.magic advancedRTSGameLayer)#getName ())));
        if (((Obj.magic advancedRTSGameLayer)#getParentLayer ()) != (Obj.magic 0)) then begin
            ignore (!stringBuffer#append (" With Parent: "));
            ignore (!stringBuffer#append ((((Obj.magic advancedRTSGameLayer)#getParentLayer ())#getName ())))
        end;
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "selected: onWaypointEvent"))
        end [@@warning "-7-20"]
    

    method targetMovedSoRetarget : 'any1. 'any1 -> unit = fun (associatedAdvancedRTSGameLayer) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())))#append (" - target moved so retargeting")))), self, "turnTo"))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonSeps <- ((CommonSeps.getInstance ()) :> CommonSeps.commonSeps);
        positionStrings <- ((PositionStrings.getInstance ()) :> PositionStrings.positionStrings);
        stringUtil <- ((StringUtil.getInstance ()) :> StringUtil.stringUtil);
        eNEMY_POSSIBLE_TARGET <- " Enemy Possible Target: ";
        cLOSE_RANGE <- "closeRange: ";
        sENSOR_RANGE <- " sensorRange: ";
        oNLY_TARGETS <- " Only Targets: ";
        sHORTER_THAN_CURRENT_TARGET_DISTANCE <- " isShorterThanCurrentTargetDistance: ";
        cURRENT_TARGET_DESTROYED <- " isCurrentTargetDestroyed: ";
        cURRENT_TARGET_NOT_AVAILABLE <- " isCurrentTargetNotAvailable: ";
        pROCESS_POSSIBLE_TARGET <- "selected: processPossibleTarget1";
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "Waypoint2SelectedLogHelper" (fun arguments -> Obj.repr (new waypoint2SelectedLogHelper (Obj.obj arguments)))

let instanceC = (new waypoint2SelectedLogHelper ())
let get_instanceC () = instanceC
let () = java_register_static "Waypoint2SelectedLogHelper.get_instanceC" (fun _ -> Obj.repr (get_instanceC ()))

let getInstance () : Waypoint2LogHelper.waypoint2LogHelper =
        begin
        (instanceC :> Waypoint2LogHelper.waypoint2LogHelper)
        end
let () = java_register_static "Waypoint2SelectedLogHelper.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


