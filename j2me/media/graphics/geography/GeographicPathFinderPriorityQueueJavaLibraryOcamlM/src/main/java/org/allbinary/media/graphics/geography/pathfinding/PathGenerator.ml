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
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellHistory *)
(* import org.allbinary.util.BasicArrayList *)

class pathGenerator () =
  object (self)
    
    

    method init : 'any1. 'any1 * int -> unit = fun (_geographicMapInterface, (_totalPaths : int)) ->
        begin
        ()
        end
    

    method getInstanceNoCache : 'any1 'any2. 'any1 * 'any2 * int -> BasicArrayList.basicArrayList = fun (geographicMapInterface, pathFindingInfo, (totalPaths : int)) ->
        let geographicMapInterface = Obj.repr geographicMapInterface in
        let pathFindingInfo = Obj.repr pathFindingInfo in
        begin
        let geographicMapCellPositionBasicArrayList : BasicArrayList.basicArrayList ref = ref (((self#create ((Obj.magic geographicMapInterface), (Obj.magic pathFindingInfo), totalPaths)) :> BasicArrayList.basicArrayList)) in ();
        (!geographicMapCellPositionBasicArrayList :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]
    

    method createList : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 * int -> BasicArrayList.basicArrayList = fun (_geographicMapInterface, _geographicMapCellHistory, _pathFindingInfo, (_totalPaths : int)) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method create : 'any1 'any2. 'any1 * 'any2 * int -> BasicArrayList.basicArrayList = fun (_geographicMapInterface, pathFindingInfo, (totalPaths : int)) ->
        let pathFindingInfo = Obj.repr pathFindingInfo in
        begin
        let startPathFindingNodeList : BasicArrayList.basicArrayList ref = ref ((((Obj.magic pathFindingInfo)#getStartPathFindingNodeList ()) :> BasicArrayList.basicArrayList)) in ();
        let endPathFindingNodeList : BasicArrayList.basicArrayList ref = ref ((((Obj.magic pathFindingInfo)#getEndPathFindingNodeList ()) :> BasicArrayList.basicArrayList)) in ();
        let geographicPathFinderInterface : GeographicPathFinderBase.geographicPathFinderBase ref = ref ((((Obj.magic pathFindingInfo)#getPathFinder ()) :> GeographicPathFinderBase.geographicPathFinderBase)) in ();
        let geographicMapCellPositionBasicArrayList : BasicArrayList.basicArrayList ref = ref (((!geographicPathFinderInterface#searchTotalPath (!startPathFindingNodeList, !endPathFindingNodeList, totalPaths)) :> BasicArrayList.basicArrayList)) in ();
        (!geographicMapCellPositionBasicArrayList :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]
    

    method createN : 'any1 'any2 'any4. 'any1 * 'any2 * int * 'any4 -> BasicArrayList.basicArrayList = fun (_geographicMapInterface, pathFindingInfo, (totalPaths : int), multipassState) ->
        let pathFindingInfo = Obj.repr pathFindingInfo in
        let multipassState = Obj.repr multipassState in
        begin
        let startPathFindingNodeList : BasicArrayList.basicArrayList ref = ref ((((Obj.magic pathFindingInfo)#getStartPathFindingNodeList ()) :> BasicArrayList.basicArrayList)) in ();
        let endPathFindingNodeList : BasicArrayList.basicArrayList ref = ref ((((Obj.magic pathFindingInfo)#getEndPathFindingNodeList ()) :> BasicArrayList.basicArrayList)) in ();
        let geographicPathFinderInterface : GeographicPathFinderBase.geographicPathFinderBase ref = ref ((((Obj.magic pathFindingInfo)#getPathFinder ()) :> GeographicPathFinderBase.geographicPathFinderBase)) in ();
        let geographicMapCellPositionBasicArrayList : BasicArrayList.basicArrayList ref = ref (((!geographicPathFinderInterface#searchTotalPathN (!startPathFindingNodeList, !endPathFindingNodeList, totalPaths, (Obj.magic multipassState))) :> BasicArrayList.basicArrayList)) in ();
        (!geographicMapCellPositionBasicArrayList :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]
    

    method isValid : 'any1 'any2. 'any1 * 'any2 -> bool = fun (_pathList, _geographicMapCellHistory) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "PathGenerator" (fun arguments -> Obj.repr (new pathGenerator (Obj.obj arguments)))

let sINGLETON = (new pathGenerator ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "PathGenerator.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "PathGenerator.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


