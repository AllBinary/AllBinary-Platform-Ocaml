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
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)

class geographicPathFinderBase () =
  object
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    

    method searchTotalPath : 'any1 'any2. 'any1 * 'any2 * int -> BasicArrayList.basicArrayList = fun (_startPathFindingNodeList, _endPathFindingNodeList, (_totalPaths : int)) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method searchTotalPathN : 'any1 'any2 'any4. 'any1 * 'any2 * int * 'any4 -> BasicArrayList.basicArrayList = fun (_startPathFindingNodeList, _endPathFindingNodeList, (_totalPaths : int), _multipassState) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ()
      end
  end
let () = java_register_constructor "GeographicPathFinderBase" (fun arguments -> Obj.repr (new geographicPathFinderBase (Obj.obj arguments)))

let nULL_GEOGRAPHIC_PATH_FINDER_BASE = (new geographicPathFinderBase ())
let get_nULL_GEOGRAPHIC_PATH_FINDER_BASE () = nULL_GEOGRAPHIC_PATH_FINDER_BASE
let () = java_register_static "GeographicPathFinderBase.get_nULL_GEOGRAPHIC_PATH_FINDER_BASE" (fun _ -> Obj.repr (get_nULL_GEOGRAPHIC_PATH_FINDER_BASE ()))


