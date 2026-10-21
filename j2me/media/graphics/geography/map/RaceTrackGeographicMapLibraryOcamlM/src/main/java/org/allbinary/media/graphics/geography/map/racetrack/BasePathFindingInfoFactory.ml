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
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory *)
(* import org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo *)
(* import org.allbinary.media.graphics.geography.pathfinding.PathFindingNode *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface *)
(* import org.allbinary.string.CommonSeps *)

class basePathFindingInfoFactory () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    

    method init : 'any1 'any2. 'any1 * 'any2 * int array array -> unit = fun (geographicMapInterface, pathFindingInfo, (mapArray : int array array)) ->
        let geographicMapInterface = Obj.repr geographicMapInterface in
        let pathFindingInfo = Obj.repr pathFindingInfo in
        begin
        (* Java nested class RaceTrackGeographicMapCellPositionFactoryInitVisitor: move it to its own module *) ();
        ignore (((Obj.magic geographicMapInterface)#getGeographicMapCellPositionFactory ())#visit ((new RaceTrackGeographicMapCellPositionFactoryInitVisitor.raceTrackGeographicMapCellPositionFactoryInitVisitor ())))
        end [@@warning "-20"]
    

    method addStartPathFindingNode : 'any1 'any2. 'any1 * 'any2 -> unit = fun (pathFindingInfo, startGeographicMapCellPosition) ->
        let pathFindingInfo = Obj.repr pathFindingInfo in
        let startGeographicMapCellPosition = Obj.repr startGeographicMapCellPosition in
        begin
        ignore ((Obj.magic pathFindingInfo)#addStartPathFindingNode ((new PathFindingNode.pathFindingNode ((NullUtil.getInstance ())#nULL_OBJECT, (Obj.magic startGeographicMapCellPosition)))))
        end [@@warning "-20"]
    

    method addEndPathFindingNode : 'any1 'any2. 'any1 * 'any2 -> unit = fun (pathFindingInfo, endGeographicMapCellPosition) ->
        let pathFindingInfo = Obj.repr pathFindingInfo in
        let endGeographicMapCellPosition = Obj.repr endGeographicMapCellPosition in
        begin
        ignore ((Obj.magic pathFindingInfo)#addEndPathFindingNode ((new PathFindingNode.pathFindingNode ((NullUtil.getInstance ())#nULL_OBJECT, (Obj.magic endGeographicMapCellPosition)))))
        end [@@warning "-20"]
    

    method getInstancePathFindingInfo : 'any1. 'any1 * int array array -> PathFindingInfo.pathFindingInfo = fun (_geographicMapInterface, (_graphArray : int array array)) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasePathFindingInfoFactory" (fun arguments -> Obj.repr (new basePathFindingInfoFactory (Obj.obj arguments)))


