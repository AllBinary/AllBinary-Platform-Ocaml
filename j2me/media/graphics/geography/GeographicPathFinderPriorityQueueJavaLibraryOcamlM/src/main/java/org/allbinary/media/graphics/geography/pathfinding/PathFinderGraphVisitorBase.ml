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
(* import org.allbinary.util.BasicArrayList *)

class pathFinderGraphVisitorBase () =
  object
    

    method visit : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (_graph, _startPathFindingNodeList, _endPathFindingNodeList) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method fixPath : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (_startPathFindingNodeList, _endPathFindingNodeList, _pathList) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method isValid : 'any1. 'any1 -> bool = fun (_graphPath) ->
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getInvalidReason : 'any1. 'any1 -> string = fun (_graphPath) ->
        begin
        raise (Failure ("RuntimeException"))
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "PathFinderGraphVisitorBase" (fun arguments -> Obj.repr (new pathFinderGraphVisitorBase (Obj.obj arguments)))


