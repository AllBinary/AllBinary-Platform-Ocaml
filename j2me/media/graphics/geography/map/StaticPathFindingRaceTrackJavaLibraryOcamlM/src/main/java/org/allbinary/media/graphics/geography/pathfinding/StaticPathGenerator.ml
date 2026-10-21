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
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.graphics.CellPosition *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellHistory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.PathData *)
(* import org.allbinary.util.BasicArrayListUtil *)

class staticPathGenerator () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable basicArrayListUtil : BasicArrayListUtil.basicArrayListUtil = (Obj.magic 0)
    method basicArrayListUtil = basicArrayListUtil
    method set_basicArrayListUtil value' = basicArrayListUtil <- value'
    
    

    method init : 'any1. 'any1 * int -> unit = fun (_geographicMapInterface, (_totalPaths : int)) ->
        begin
        ()
        end
    

    method getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList : 'any1 'any2. 'any1 * 'any2 -> BasicArrayList.basicArrayList = fun (geographicMapCellPositionFactory, pathList) ->
        let geographicMapCellPositionFactory = Obj.repr geographicMapCellPositionFactory in
        let pathList = Obj.repr pathList in
        begin
        let list : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref (((Obj.magic pathList)#size ())) in ();
        let basicGeographicMapCellPosition : CellPosition.cellPosition ref = ref (((Obj.magic 0) :> CellPosition.cellPosition)) in ();
        let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((Obj.magic 0) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        for index = 0 to !size - 1 do
            basicGeographicMapCellPosition := (Obj.magic ((Obj.magic pathList)#get (index)));
            geographicMapCellPosition := ((Obj.magic geographicMapCellPositionFactory)#getAt ((!basicGeographicMapCellPosition#getColumn ()), (!basicGeographicMapCellPosition#getRow ())));
            ignore (!list#add (!geographicMapCellPosition))
        done;
        (!list :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]
    

    method createList : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 * int -> BasicArrayList.basicArrayList = fun (geographicMapInterface, _geographicMapCellHistory, _pathFindingInfo, (_totalPaths : int)) ->
        let geographicMapInterface = Obj.repr geographicMapInterface in
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        (try
            let pathCacheFactory : PathCacheFactory.pathCacheFactory ref = ref (((PathCacheFactory.getInstance ()) :> PathCacheFactory.pathCacheFactory)) in ();
            let mapIdInteger : int ref = ref ((((Obj.magic geographicMapInterface)#getAllBinaryTiledLayer ())#getDataId ())) in ();
            let list : BasicArrayList.basicArrayList ref = ref (((!pathCacheFactory#getOrCreate (!mapIdInteger)) :> BasicArrayList.basicArrayList)) in ();
            if ((Obj.repr !list) == (Obj.repr (basicArrayListUtil#getImmutableInstance ()))) then begin
                list := (new BasicArrayListD.basicArrayListD ());
                let smallIntegerSingletonFactory : SmallIntegerSingletonFactory.smallIntegerSingletonFactory ref = ref (((SmallIntegerSingletonFactory.getInstance ()) :> SmallIntegerSingletonFactory.smallIntegerSingletonFactory)) in ();
                let geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory ref = ref ((((Obj.magic geographicMapInterface)#getGeographicMapCellPositionFactory ()) :> BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory)) in ();
                let id : int ref = ref (((Obj.magic (java_call_static "PathData.getInstance" (Obj.repr ())))#oFFSET + !mapIdInteger)) in ();
                let basicList : BasicArrayList.basicArrayList ref = ref (((!pathCacheFactory#getOrCreate ((!smallIntegerSingletonFactory#getAt (!id)))) :> BasicArrayList.basicArrayList)) in ();
                let size : int ref = ref ((!basicList#size ())) in ();
                let pathList : BasicArrayList.basicArrayList ref = ref (((Obj.magic 0) :> BasicArrayList.basicArrayList)) in ();
                for index = 0 to !size - 1 do
                    pathList := (self#getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList (!geographicMapCellPositionFactory, (Obj.magic (!basicList#get (index)))));
                    ignore (!list#add (!pathList))
                done;
                ignore (!pathCacheFactory#add (!mapIdInteger, !list));
                ignore (!pathCacheFactory#remove ((!smallIntegerSingletonFactory#getAt (!id))))
            end;
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Using Cached Path(s): "))#append (((StringUtil.getInstance ())#toString (!list)))))), self, !commonStrings#gET_INSTANCE));
            (!list :> BasicArrayList.basicArrayList)
        with e -> begin
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#gET_INSTANCE, e));
            ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)
        end)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        basicArrayListUtil <- ((BasicArrayListUtil.getInstance ()) :> BasicArrayListUtil.basicArrayListUtil);
        ();
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ("Using Static Path Finding", self, (CommonStrings.getInstance ())#cONSTRUCTOR))))
      end
  end [@@warning "-20"]
let () = java_register_constructor "StaticPathGenerator" (fun arguments -> Obj.repr (new staticPathGenerator (Obj.obj arguments)))


