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
(* package org.allbinary.game.ai.path *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.direction.Direction *)
(* import org.allbinary.direction.DirectionFactory *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.math.AngleInfo *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellHistory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil *)
(* import org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo *)

class basicAIProcessor ((name_arg : string), (geographicMapCellHistory_arg : GeographicMapCellHistory.geographicMapCellHistory), (geographicMapCellPathHistoryInfo_arg : GeographicMapCellPathHistoryInfo.geographicMapCellPathHistoryInfo), (chosenPathList : BasicArrayList.basicArrayList), (angleInfo : AngleInfo.angleInfo), (_seed : int)) =
  object (self)
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable geographicMapCellHistory : GeographicMapCellHistory.geographicMapCellHistory = (Obj.magic 0)
    method geographicMapCellHistory = geographicMapCellHistory
    method set_geographicMapCellHistory value' = geographicMapCellHistory <- value'
    val mutable geographicMapCellPositionBasicArrayList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method geographicMapCellPositionBasicArrayList = geographicMapCellPositionBasicArrayList
    method set_geographicMapCellPositionBasicArrayList value' = geographicMapCellPositionBasicArrayList <- value'
    val mutable geographicMapCellPathHistoryInfo : GeographicMapCellPathHistoryInfo.geographicMapCellPathHistoryInfo = (Obj.magic 0)
    method geographicMapCellPathHistoryInfo = geographicMapCellPathHistoryInfo
    method set_geographicMapCellPathHistoryInfo value' = geographicMapCellPathHistoryInfo <- value'
    val mutable basicAI : BasicDirectionAIHelper.basicDirectionAIHelper = (Obj.magic 0)
    method basicAI = basicAI
    method set_basicAI value' = basicAI <- value'
    val mutable geographicMapDirectionUtil : GeographicMapDirectionUtil.geographicMapDirectionUtil = (Obj.magic 0)
    method geographicMapDirectionUtil = geographicMapDirectionUtil
    method set_geographicMapDirectionUtil value' = geographicMapDirectionUtil <- value'
    
    

    method setNewPath : 'any1 'any2. 'any1 * 'any2 -> unit = fun (geographicMapCellHistory_arg, chosenPathList) ->
        let geographicMapCellHistory_arg = Obj.repr geographicMapCellHistory_arg in
        let chosenPathList = Obj.repr chosenPathList in
        begin
        (self#setGeographicMapCellHistory ((Obj.magic geographicMapCellHistory_arg)));
        geographicMapCellPositionBasicArrayList <- (Obj.magic chosenPathList);
        (self#init ())
        end [@@warning "-20"]
    

    method init () : unit =
        begin
        geographicMapCellPathHistoryInfo <- (new GeographicMapCellPathHistoryInfo.geographicMapCellPathHistoryInfo ());
        ignore (geographicMapCellPathHistoryInfo#setPreviousOnPathGeographicMapCellPosition ((Obj.magic (geographicMapCellPositionBasicArrayList#get (((geographicMapCellPositionBasicArrayList#size ()) - 1))))));
        ignore (geographicMapCellPathHistoryInfo#setNextOnPathGeographicMapCellPosition ((Obj.magic (geographicMapCellPositionBasicArrayList#get (((geographicMapCellPositionBasicArrayList#size ()) - 1))))));
        (self#update ())
        end
    

    method goTowardNextChosenOnPathPosition : 'any1. 'any1 -> int = fun (currentGeographicMapCellPosition) ->
        let currentGeographicMapCellPosition = Obj.repr currentGeographicMapCellPosition in
        begin
        let keyDirection : int ref = ref ((-1)) in ();
        let goToGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((geographicMapCellPathHistoryInfo#getNextChosenOnPathGeographicMapCellPosition ()) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        let geographicMapDirectionData : Direction.direction ref = ref (((geographicMapDirectionUtil#getDirectionFromCellPositionToAdjacentCellPosition ((Obj.magic currentGeographicMapCellPosition), !goToGeographicMapCellPosition)) :> Direction.direction)) in ();
        if ((Obj.repr !geographicMapDirectionData) == (Obj.repr (DirectionFactory.getInstance ())#nOT_BORDERED_WITH)) then begin
            geographicMapDirectionData := (geographicMapDirectionUtil#getDirectionFromCellPositionToCellPosition ((Obj.magic currentGeographicMapCellPosition), !goToGeographicMapCellPosition))
        end;
        keyDirection := (basicAI#getAIKeyPressedFromDirection (!geographicMapDirectionData));
        !keyDirection
        end [@@warning "-20"]
    

    method update () : unit =
        begin
        ignore (geographicMapCellPathHistoryInfo#setNextUnvisitedOnPathGeographicMapCellPosition (((self#getGeographicMapCellHistory ())#getFirstUnvisited ())));
        ignore (geographicMapCellPathHistoryInfo#setNextChosenOnPathGeographicMapCellPosition ((geographicMapCellPathHistoryInfo#getNextUnvisitedOnPathGeographicMapCellPosition ())))
        end
    

    method processAI : 'any1 'any2. 'any1 * 'any2 -> int = fun (_myManager, currentGeographicMapCellPosition) ->
        let currentGeographicMapCellPosition = Obj.repr currentGeographicMapCellPosition in
        begin
        let keyDirection : int ref = ref ((-1)) in ();
        if (geographicMapCellPositionBasicArrayList#contains ((Obj.magic currentGeographicMapCellPosition))) then begin
            (self#update ());
            keyDirection := (self#goTowardNextChosenOnPathPosition ((Obj.magic currentGeographicMapCellPosition)));
            ignore (geographicMapCellPathHistoryInfo#setPreviousOnPathGeographicMapCellPosition ((Obj.magic currentGeographicMapCellPosition)))
        end else begin
            keyDirection := (self#goTowardNextChosenOnPathPosition ((Obj.magic currentGeographicMapCellPosition)))
        end;
        !keyDirection
        end [@@warning "-20"]
    

    method getName () : string =
        begin
        name
        end
    

    method setName ((name_arg : string)) : unit =
        begin
        name <- name_arg
        end
    

    method getGeographicMapCellPathHistoryInfo () : GeographicMapCellPathHistoryInfo.geographicMapCellPathHistoryInfo =
        begin
        (geographicMapCellPathHistoryInfo :> GeographicMapCellPathHistoryInfo.geographicMapCellPathHistoryInfo)
        end
    

    method setGeographicMapCellPathHistoryInfo : 'any1. 'any1 -> unit = fun (geographicMapCellPathHistoryInfo_arg) ->
        let geographicMapCellPathHistoryInfo_arg = Obj.repr geographicMapCellPathHistoryInfo_arg in
        begin
        geographicMapCellPathHistoryInfo <- (Obj.magic geographicMapCellPathHistoryInfo_arg)
        end [@@warning "-20"]
    

    method getGeographicMapCellHistory () : GeographicMapCellHistory.geographicMapCellHistory =
        begin
        (geographicMapCellHistory :> GeographicMapCellHistory.geographicMapCellHistory)
        end
    

    method setGeographicMapCellHistory : 'any1. 'any1 -> unit = fun (geographicMapCellHistory_arg) ->
        let geographicMapCellHistory_arg = Obj.repr geographicMapCellHistory_arg in
        begin
        geographicMapCellHistory <- (Obj.magic geographicMapCellHistory_arg)
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        geographicMapDirectionUtil <- ((GeographicMapDirectionUtil.getInstance ()) :> GeographicMapDirectionUtil.geographicMapDirectionUtil);
        ();
        name <- name_arg;
        geographicMapCellHistory <- geographicMapCellHistory_arg;
        geographicMapCellPositionBasicArrayList <- chosenPathList;
        geographicMapCellPathHistoryInfo <- geographicMapCellPathHistoryInfo_arg;
        (self#setName (name_arg));
        (self#setNewPath (geographicMapCellHistory_arg, chosenPathList));
        basicAI <- (new BasicDirectionAIHelper.basicDirectionAIHelper ((self#getName ()), angleInfo))
      end
  end
let () = java_register_constructor "BasicAIProcessor" (fun arguments -> Obj.repr (new basicAIProcessor (Obj.obj arguments)))


