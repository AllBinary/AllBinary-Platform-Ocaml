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
(* package org.allbinary.media.graphics.geography.pathfinding *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory *)

class geographicMapCellPathHistoryInfo () =
  object
    val mutable previousGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition = (Obj.magic 0)
    method previousGeographicMapCellPosition = previousGeographicMapCellPosition
    method set_previousGeographicMapCellPosition value' = previousGeographicMapCellPosition <- value'
    val mutable previousOnPathGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition = (Obj.magic 0)
    method previousOnPathGeographicMapCellPosition = previousOnPathGeographicMapCellPosition
    method set_previousOnPathGeographicMapCellPosition value' = previousOnPathGeographicMapCellPosition <- value'
    val mutable nextUnvisitedOnPathGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition = (Obj.magic 0)
    method nextUnvisitedOnPathGeographicMapCellPosition = nextUnvisitedOnPathGeographicMapCellPosition
    method set_nextUnvisitedOnPathGeographicMapCellPosition value' = nextUnvisitedOnPathGeographicMapCellPosition <- value'
    val mutable nextOnPathGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition = (Obj.magic 0)
    method nextOnPathGeographicMapCellPosition = nextOnPathGeographicMapCellPosition
    method set_nextOnPathGeographicMapCellPosition value' = nextOnPathGeographicMapCellPosition <- value'
    val mutable nextChosenOnPathGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition = (Obj.magic 0)
    method nextChosenOnPathGeographicMapCellPosition = nextChosenOnPathGeographicMapCellPosition
    method set_nextChosenOnPathGeographicMapCellPosition value' = nextChosenOnPathGeographicMapCellPosition <- value'
    

    method getPreviousGeographicMapCellPosition () : GeographicMapCellPosition.geographicMapCellPosition =
        begin
        (previousGeographicMapCellPosition :> GeographicMapCellPosition.geographicMapCellPosition)
        end
    

    method setPreviousGeographicMapCellPosition : 'any1. 'any1 -> unit = fun (previousGeographicMapCellPosition_arg) ->
        let previousGeographicMapCellPosition_arg = Obj.repr previousGeographicMapCellPosition_arg in
        begin
        previousGeographicMapCellPosition <- (Obj.magic previousGeographicMapCellPosition_arg)
        end [@@warning "-20"]
    

    method getPreviousOnPathGeographicMapCellPosition () : GeographicMapCellPosition.geographicMapCellPosition =
        begin
        (previousOnPathGeographicMapCellPosition :> GeographicMapCellPosition.geographicMapCellPosition)
        end
    

    method setPreviousOnPathGeographicMapCellPosition : 'any1. 'any1 -> unit = fun (previousOnPathGeographicMapCellPosition_arg) ->
        let previousOnPathGeographicMapCellPosition_arg = Obj.repr previousOnPathGeographicMapCellPosition_arg in
        begin
        previousOnPathGeographicMapCellPosition <- (Obj.magic previousOnPathGeographicMapCellPosition_arg)
        end [@@warning "-20"]
    

    method getNextUnvisitedOnPathGeographicMapCellPosition () : GeographicMapCellPosition.geographicMapCellPosition =
        begin
        (nextUnvisitedOnPathGeographicMapCellPosition :> GeographicMapCellPosition.geographicMapCellPosition)
        end
    

    method setNextUnvisitedOnPathGeographicMapCellPosition : 'any1. 'any1 -> unit = fun (nextUnvisitedOnPathGeographicMapCellPosition_arg) ->
        let nextUnvisitedOnPathGeographicMapCellPosition_arg = Obj.repr nextUnvisitedOnPathGeographicMapCellPosition_arg in
        begin
        nextUnvisitedOnPathGeographicMapCellPosition <- (Obj.magic nextUnvisitedOnPathGeographicMapCellPosition_arg)
        end [@@warning "-20"]
    

    method getNextOnPathGeographicMapCellPosition () : GeographicMapCellPosition.geographicMapCellPosition =
        begin
        (nextOnPathGeographicMapCellPosition :> GeographicMapCellPosition.geographicMapCellPosition)
        end
    

    method setNextOnPathGeographicMapCellPosition : 'any1. 'any1 -> unit = fun (nextOnPathGeographicMapCellPosition_arg) ->
        let nextOnPathGeographicMapCellPosition_arg = Obj.repr nextOnPathGeographicMapCellPosition_arg in
        begin
        nextOnPathGeographicMapCellPosition <- (Obj.magic nextOnPathGeographicMapCellPosition_arg)
        end [@@warning "-20"]
    

    method getNextChosenOnPathGeographicMapCellPosition () : GeographicMapCellPosition.geographicMapCellPosition =
        begin
        (nextChosenOnPathGeographicMapCellPosition :> GeographicMapCellPosition.geographicMapCellPosition)
        end
    

    method setNextChosenOnPathGeographicMapCellPosition : 'any1. 'any1 -> unit = fun (nextChosenOnPathGeographicMapCellPosition_arg) ->
        let nextChosenOnPathGeographicMapCellPosition_arg = Obj.repr nextChosenOnPathGeographicMapCellPosition_arg in
        begin
        nextChosenOnPathGeographicMapCellPosition <- (Obj.magic nextChosenOnPathGeographicMapCellPosition_arg)
        end [@@warning "-20"]

    initializer
      begin
        previousGeographicMapCellPosition <- ((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()) :> GeographicMapCellPosition.geographicMapCellPosition);
        previousOnPathGeographicMapCellPosition <- ((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()) :> GeographicMapCellPosition.geographicMapCellPosition);
        nextUnvisitedOnPathGeographicMapCellPosition <- ((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()) :> GeographicMapCellPosition.geographicMapCellPosition);
        nextOnPathGeographicMapCellPosition <- ((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()) :> GeographicMapCellPosition.geographicMapCellPosition);
        nextChosenOnPathGeographicMapCellPosition <- ((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()) :> GeographicMapCellPosition.geographicMapCellPosition);
        ()
      end
  end
let () = java_register_constructor "GeographicMapCellPathHistoryInfo" (fun arguments -> Obj.repr (new geographicMapCellPathHistoryInfo (Obj.obj arguments)))


