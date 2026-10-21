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
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.math.AngleInfo *)
(* import org.allbinary.math.NamedAngle *)
(* import org.allbinary.math.PositionStrings *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellHistory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.util.BasicArrayList *)

class rTSLayerSelectedLogHelper () =
  object (self)
    inherit RTSLayerLogHelper.rTSLayerLogHelper ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonSeps : CommonSeps.commonSeps = (Obj.magic 0)
    method commonSeps = commonSeps
    method set_commonSeps value' = commonSeps <- value'
    val mutable positionStrings : PositionStrings.positionStrings = (Obj.magic 0)
    method positionStrings = positionStrings
    method set_positionStrings value' = positionStrings <- value'
    val mutable tRACKTO_TURNTO : string = ""
    method tRACKTO_TURNTO = tRACKTO_TURNTO
    method set_tRACKTO_TURNTO value' = tRACKTO_TURNTO <- value'
    

    method setClosestGeographicMapCellHistory : 'any1 'any2. 'any1 * 'any2 -> unit = fun (associatedAdvancedRTSGameLayer, pathsList) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        let pathsList = Obj.repr pathsList in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())));
        ignore (!stringBuffer#append (commonSeps#sPACE));
        ignore (!stringBuffer#append ((CommonLabels.getInstance ())#sTART));
        ignore (!stringBuffer#appendint (((Obj.magic pathsList)#size ())));
        ignore (!stringBuffer#append (" -> "));
        ignore (!stringBuffer#append (((StringUtil.getInstance ())#toString ((Obj.magic pathsList)))));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "selected: setClosestGeographicMapCellHistory"))
        end [@@warning "-7-20"]
    

    method trackTo : 'any1 'any2. 'any1 * 'any2 * int * int * string -> unit = fun (associatedAdvancedRTSGameLayer, nextUnvisitedPathGeographicMapCellPosition, (dx : int), (dy : int), (reason : string)) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        let nextUnvisitedPathGeographicMapCellPosition = Obj.repr nextUnvisitedPathGeographicMapCellPosition in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())));
        ignore (!stringBuffer#append (commonSeps#sPACE));
        ignore (!stringBuffer#append (((StringUtil.getInstance ())#toString ((Obj.magic nextUnvisitedPathGeographicMapCellPosition)))));
        ignore (!stringBuffer#append (positionStrings#dX_LABEL));
        ignore (!stringBuffer#appendint (dx));
        ignore (!stringBuffer#append (commonSeps#sPACE));
        ignore (!stringBuffer#append (positionStrings#dY_LABEL));
        ignore (!stringBuffer#appendint (dy));
        ignore (!stringBuffer#append (commonSeps#sPACE));
        ignore (!stringBuffer#append (reason));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "selected: trackTo"))
        end [@@warning "-7-20"]
    

    method turnTo : 'any1 'any4 'any6. 'any1 * int * int * 'any4 * int * 'any6 * bool * int -> unit = fun (associatedAdvancedRTSGameLayer, (dx : int), (dy : int), angleInfo, (angle : int), movementAngle, (evading : bool), (_targetAngle : int)) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        let angleInfo = Obj.repr angleInfo in
        let movementAngle = Obj.repr movementAngle in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())));
        ignore (!stringBuffer#append (" steering - "));
        ignore (!stringBuffer#append (positionStrings#dX_LABEL));
        ignore (!stringBuffer#appendint (dx));
        ignore (!stringBuffer#append (commonSeps#sPACE));
        ignore (!stringBuffer#append (positionStrings#dY_LABEL));
        ignore (!stringBuffer#appendint (dy));
        ignore (!stringBuffer#append (" angle: "));
        ignore (!stringBuffer#appendint (angle));
        ignore (!stringBuffer#append (" movementAngle: "));
        ignore (!stringBuffer#append ((Obj.magic movementAngle)#name));
        ignore (!stringBuffer#append (commonSeps#fORWARD_SLASH));
        ignore (!stringBuffer#appendshort ((java_to_int (Obj.repr (((Obj.magic movementAngle)#getValue ()))))));
        if ((Obj.magic angleInfo) != (Obj.magic 0)) then begin
            let angleIncrement : int ref = ref ((((Obj.magic angleInfo)#getAngleIncrementInfo ())#getAngleIncrement ())) in ();
            ignore (!stringBuffer#append (" angleIncrement: "));
            ignore (!stringBuffer#appendshort (!angleIncrement))
        end;
        ignore (!stringBuffer#append (" Evading: "));
        ignore (!stringBuffer#appendboolean (evading));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, tRACKTO_TURNTO))
        end [@@warning "-7-20"]
    

    method doneMoving : 'any1. 'any1 -> unit = fun (associatedAdvancedRTSGameLayer) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())))#append (" steering - done moving 0,0")))), self, tRACKTO_TURNTO))
        end [@@warning "-7-20"]
    

    method closeEnough : 'any1. 'any1 -> unit = fun (associatedAdvancedRTSGameLayer) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())))#append (" steering - close enough")))), self, tRACKTO_TURNTO))
        end [@@warning "-7-20"]
    

    method movingLeft : 'any1. 'any1 -> unit = fun (associatedAdvancedRTSGameLayer) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())))#append (" steering - allow movingLeft")))), self, tRACKTO_TURNTO))
        end [@@warning "-7-20"]
    

    method movingRight : 'any1. 'any1 -> unit = fun (associatedAdvancedRTSGameLayer) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())))#append (" steering - allow movingRight")))), self, tRACKTO_TURNTO))
        end [@@warning "-7-20"]
    

    method movingUp : 'any1. 'any1 -> unit = fun (associatedAdvancedRTSGameLayer) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())))#append (" steering - allow movingUp")))), self, tRACKTO_TURNTO))
        end [@@warning "-7-20"]
    

    method movingDown : 'any1. 'any1 -> unit = fun (associatedAdvancedRTSGameLayer) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())))#append (" steering - allow movingDown")))), self, tRACKTO_TURNTO))
        end [@@warning "-7-20"]
    

    method currentMoveEnded : 'any1. 'any1 -> unit = fun (associatedAdvancedRTSGameLayer) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())))#append (" steering - correct angle, but movement not needed for current deltas so reseting movement angle")))), self, tRACKTO_TURNTO))
        end [@@warning "-7-20"]
    

    method evade : 'any1. 'any1 -> unit = fun (associatedAdvancedRTSGameLayer) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())))#append (" steering - evade")))), self, tRACKTO_TURNTO))
        end [@@warning "-7-20"]
    

    method rotateLeft : 'any1. 'any1 -> unit = fun (associatedAdvancedRTSGameLayer) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())))#append (" steering - rotating left")))), self, tRACKTO_TURNTO))
        end [@@warning "-7-20"]
    

    method rotateRight : 'any1. 'any1 -> unit = fun (associatedAdvancedRTSGameLayer) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())))#append (" steering - rotating right")))), self, tRACKTO_TURNTO))
        end [@@warning "-7-20"]
    

    method handle : 'any1 'any2. 'any1 * 'any2 -> unit = fun (associatedAdvancedRTSGameLayer, movementAngle) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        let movementAngle = Obj.repr movementAngle in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((((((new StringMaker.stringMaker ())#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())))#append (" steering - movementAngle: "))#append ((Obj.magic movementAngle)#name))#append (commonSeps#fORWARD_SLASH))#appendshort ((java_to_int (Obj.repr (((Obj.magic movementAngle)#getValue ())))))))), self, tRACKTO_TURNTO))
        end [@@warning "-7-20"]
    

    method noRotation : 'any1. 'any1 -> unit = fun (associatedAdvancedRTSGameLayer) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())))#append (" steering - Do not rotate")))), self, tRACKTO_TURNTO))
        end [@@warning "-7-20"]
    

    method notOnPath : 'any1 'any2 'any3 'any4. 'any1 * 'any2 * 'any3 * 'any4 -> unit = fun (associatedAdvancedRTSGameLayer, geographicMapCellHistory, currentGeographicMapCellPosition, pathList) ->
        let associatedAdvancedRTSGameLayer = Obj.repr associatedAdvancedRTSGameLayer in
        let geographicMapCellHistory = Obj.repr geographicMapCellHistory in
        let currentGeographicMapCellPosition = Obj.repr currentGeographicMapCellPosition in
        let pathList = Obj.repr pathList in
        begin
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((((((((new StringMaker.stringMaker ())#append (((Obj.magic associatedAdvancedRTSGameLayer)#getName ())))#append ((CommonSeps.getInstance ())#sPACE))#appendint ((java_to_int (Obj.repr (((Obj.magic geographicMapCellHistory)#getTotalVisited ()))))))#append ((CommonSeps.getInstance ())#sPACE))#append ((!stringUtil#toString ((Obj.magic currentGeographicMapCellPosition)))))#append (" - trying to move but not on path: "))#append ((!stringUtil#toString ((Obj.magic pathList))))))), self, "turnTo"))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonSeps <- ((CommonSeps.getInstance ()) :> CommonSeps.commonSeps);
        positionStrings <- ((PositionStrings.getInstance ()) :> PositionStrings.positionStrings);
        tRACKTO_TURNTO <- "trackTo:turnTo";
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "RTSLayerSelectedLogHelper" (fun arguments -> Obj.repr (new rTSLayerSelectedLogHelper (Obj.obj arguments)))

let instanceC = (new rTSLayerSelectedLogHelper ())
let get_instanceC () = instanceC
let () = java_register_static "RTSLayerSelectedLogHelper.get_instanceC" (fun _ -> Obj.repr (get_instanceC ()))

let getInstance () =
        begin
        instanceC
        end
let () = java_register_static "RTSLayerSelectedLogHelper.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


