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
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory *)
(* import org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory *)
(* import org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo *)
(* import org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase *)
(* import org.allbinary.util.BasicArrayListS *)

class pathFindingInfoFactory () =
  object (self)
    inherit BasePathFindingInfoFactory.basePathFindingInfoFactory ()
    
    

    method getInstancePathFindingInfo : 'any1. 'any1 * int array array -> PathFindingInfo.pathFindingInfo = fun (geographicMapInterface, (graphArray : int array array)) ->
        let geographicMapInterface = Obj.repr geographicMapInterface in
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (!commonStrings#sTART, self, !commonStrings#gET_INSTANCE))));
        let pathFindingInfo : PathFindingInfo.pathFindingInfo ref = ref (((new PathFindingInfo.pathFindingInfo ((new PathFindingNodeCostInfoFactoryBase.pathFindingNodeCostInfoFactoryBase ()), (new BasicArrayListS.basicArrayListS (1)), (new BasicArrayListS.basicArrayListS (1)))) :> PathFindingInfo.pathFindingInfo)) in ();
        ignore ((RaceTrackRoadsGeographicMapCellHistoryFactory.getInstance ())#init ());
        ignore (self#init ((Obj.magic geographicMapInterface), !pathFindingInfo, graphArray));
        (!pathFindingInfo :> PathFindingInfo.pathFindingInfo)
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "PathFindingInfoFactory" (fun arguments -> Obj.repr (new pathFindingInfoFactory (Obj.obj arguments)))

let instance = (new pathFindingInfoFactory ())
let get_instance () = instance
let () = java_register_static "PathFindingInfoFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PathFindingInfoFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


