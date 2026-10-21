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

class virtual pathFindingInfoInterface =
  object
    method virtual getStartPathFindingNodeList : unit -> BasicArrayList.basicArrayList
    method virtual getEndPathFindingNodeList : unit -> BasicArrayList.basicArrayList
    method virtual getPathFinder : unit -> GeographicPathFinderBase.geographicPathFinderBase
  end


