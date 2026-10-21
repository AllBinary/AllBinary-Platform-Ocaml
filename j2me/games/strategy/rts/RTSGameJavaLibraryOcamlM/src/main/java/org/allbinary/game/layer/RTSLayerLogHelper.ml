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
(* import org.allbinary.math.AngleInfo *)
(* import org.allbinary.math.NamedAngle *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellHistory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.util.BasicArrayList *)

class rTSLayerLogHelper () =
  object
    

    method setClosestGeographicMapCellHistory : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_associatedAdvancedRTSGameLayer, _pathsList) ->
        begin
        ()
        end [@@warning "-20"]
    

    method trackTo : 'any1 'any2. 'any1 * 'any2 * int * int * string -> unit = fun (_associatedAdvancedRTSGameLayer, _nextUnvisitedPathGeographicMapCellPosition, (_dx : int), (_dy : int), (_reason : string)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method turnTo : 'any1 'any4 'any6. 'any1 * int * int * 'any4 * int * 'any6 * bool * int -> unit = fun (_associatedAdvancedRTSGameLayer, (_dx : int), (_dy : int), _angleInfo, (_angle : int), _movementAngle, (_evading : bool), (_targetAngle : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method doneMoving : 'any1. 'any1 -> unit = fun (_associatedAdvancedRTSGameLayer) ->
        begin
        ()
        end [@@warning "-20"]
    

    method closeEnough : 'any1. 'any1 -> unit = fun (_associatedAdvancedRTSGameLayer) ->
        begin
        ()
        end [@@warning "-20"]
    

    method movingLeft : 'any1. 'any1 -> unit = fun (_associatedAdvancedRTSGameLayer) ->
        begin
        ()
        end [@@warning "-20"]
    

    method movingRight : 'any1. 'any1 -> unit = fun (_associatedAdvancedRTSGameLayer) ->
        begin
        ()
        end [@@warning "-20"]
    

    method movingUp : 'any1. 'any1 -> unit = fun (_associatedAdvancedRTSGameLayer) ->
        begin
        ()
        end [@@warning "-20"]
    

    method movingDown : 'any1. 'any1 -> unit = fun (_associatedAdvancedRTSGameLayer) ->
        begin
        ()
        end [@@warning "-20"]
    

    method currentMoveEnded : 'any1. 'any1 -> unit = fun (_associatedAdvancedRTSGameLayer) ->
        begin
        ()
        end [@@warning "-20"]
    

    method evade : 'any1. 'any1 -> unit = fun (_associatedAdvancedRTSGameLayer) ->
        begin
        ()
        end [@@warning "-20"]
    

    method rotateLeft : 'any1. 'any1 -> unit = fun (_associatedAdvancedRTSGameLayer) ->
        begin
        ()
        end [@@warning "-20"]
    

    method rotateRight : 'any1. 'any1 -> unit = fun (_associatedAdvancedRTSGameLayer) ->
        begin
        ()
        end [@@warning "-20"]
    

    method handle : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_associatedAdvancedRTSGameLayer, _movementAngle) ->
        begin
        ()
        end [@@warning "-20"]
    

    method noRotation : 'any1. 'any1 -> unit = fun (_associatedAdvancedRTSGameLayer) ->
        begin
        ()
        end [@@warning "-20"]
    

    method notOnPath : 'any1 'any2 'any3 'any4. 'any1 * 'any2 * 'any3 * 'any4 -> unit = fun (_associatedAdvancedRTSGameLayer, _geographicMapCellHistory, _currentGeographicMapCellPosition, _pathList) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "RTSLayerLogHelper" (fun arguments -> Obj.repr (new rTSLayerLogHelper (Obj.obj arguments)))

let instance = (new rTSLayerLogHelper ())
let get_instance () = instance
let () = java_register_static "RTSLayerLogHelper.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "RTSLayerLogHelper.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


