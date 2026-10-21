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
(* package org.allbinary.game.media.graphics.geography.map.racetrack *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)

class pathFinderGraphHackVisitor ((geographicMapInterface : BasicGeographicMap.basicGeographicMap), (edgeMinimum : int), (minPathWeight : int), (maxPathWeight : int)) =
  object (self)
    inherit BasePathFinderGraphVisitor.basePathFinderGraphVisitor (geographicMapInterface, edgeMinimum, minPathWeight, maxPathWeight)
    
    

    method visit : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (graph, startPathFindingNodeList, endPathFindingNodeList) ->
        let graph = Obj.repr graph in
        let startPathFindingNodeList = Obj.repr startPathFindingNodeList in
        let endPathFindingNodeList = Obj.repr endPathFindingNodeList in
        begin
        (self#fixStart (graph, (Obj.magic startPathFindingNodeList)));
        (self#fixEnd (graph, (Obj.magic endPathFindingNodeList)));
        (self#fixOverPassEdges (graph))
        end [@@warning "-7-20"]
    

    method fixStart : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_graph, _startPathFindingNodeList) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method fixEnd : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_graph, _endPathFindingNodeList) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method fixOverPassEdges : 'any1. 'any1 -> unit = fun (_graph) ->
        begin
        ()
        end [@@warning "-7"]
    

    method fixPath : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (_startPathFindingNodeList, _endPathFindingNodeList, _pathList) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method removeOverPassEdges : 'any1. 'any1 -> unit = fun (_pathList) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method isValid : 'any1. 'any1 -> bool = fun (_graphPath) ->
        begin
        false
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "PathFinderGraphHackVisitor" (fun arguments -> Obj.repr (new pathFinderGraphHackVisitor (Obj.obj arguments)))


