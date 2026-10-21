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
(* package org.allbinary.media.graphics.geography.map *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface *)
(* import org.allbinary.layer.AllBinaryLayer *)

class geographicMapCellPositionTracking () =
  object
    val mutable currentGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition = (Obj.magic 0)
    method currentGeographicMapCellPosition = currentGeographicMapCellPosition
    method set_currentGeographicMapCellPosition value' = currentGeographicMapCellPosition <- value'
    val mutable previousGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition = (Obj.magic 0)
    method previousGeographicMapCellPosition = previousGeographicMapCellPosition
    method set_previousGeographicMapCellPosition value' = previousGeographicMapCellPosition <- value'
    val mutable newGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition = (Obj.magic 0)
    method newGeographicMapCellPosition = newGeographicMapCellPosition
    method set_newGeographicMapCellPosition value' = newGeographicMapCellPosition <- value'
    val mutable currentCellType : GeographicMapCellType.geographicMapCellType = (Obj.magic 0)
    method currentCellType = currentCellType
    method set_currentCellType value' = currentCellType <- value'
    
    

    method getCurrentOverCellType : 'any1. 'any1 -> GeographicMapCellType.geographicMapCellType = fun (geographicMap) ->
        let geographicMap = Obj.repr geographicMap in
        begin
        let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref ((currentGeographicMapCellPosition :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        if ((Obj.repr !geographicMapCellPosition) != (Obj.repr previousGeographicMapCellPosition)) then begin
            currentCellType <- ((Obj.magic geographicMap)#getCellTypeAt (!geographicMapCellPosition))
        end;
        (currentCellType :> GeographicMapCellType.geographicMapCellType)
        end [@@warning "-20"]
    

    method updateStart : 'any1 'any2. 'any1 * 'any2 -> bool = fun (gameCanvasInterface, layer) ->
        let gameCanvasInterface = Obj.repr gameCanvasInterface in
        let layer = Obj.repr layer in
        try
        begin
        if ((Obj.repr (Obj.magic gameCanvasInterface)) != (Obj.repr (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))) then begin
            let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic ((Obj.magic gameCanvasInterface)#getLayerManager ())) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
            let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
            newGeographicMapCellPosition <- (!geographicMapInterface#getCellPositionAtXY ((((Obj.magic layer)#getXP ()) + ((Obj.magic layer)#getHalfWidth ())), (((Obj.magic layer)#getYP ()) + ((Obj.magic layer)#getHalfHeight ()))));
            if ((Obj.repr newGeographicMapCellPosition) != (Obj.repr currentGeographicMapCellPosition)) then begin
                currentGeographicMapCellPosition <- newGeographicMapCellPosition;
                raise (Java_return (Obj.repr (true)))
            end
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method updateEnd () : bool =
        try
        begin
        if ((Obj.repr currentGeographicMapCellPosition) != (Obj.repr previousGeographicMapCellPosition)) then begin
            previousGeographicMapCellPosition <- currentGeographicMapCellPosition;
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value
    

    method getPreviousGeographicMapCellPosition () : GeographicMapCellPosition.geographicMapCellPosition =
        begin
        (previousGeographicMapCellPosition :> GeographicMapCellPosition.geographicMapCellPosition)
        end
    

    method getCurrentGeographicMapCellPosition () : GeographicMapCellPosition.geographicMapCellPosition =
        begin
        (currentGeographicMapCellPosition :> GeographicMapCellPosition.geographicMapCellPosition)
        end

    initializer
      begin
        currentGeographicMapCellPosition <- ((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()) :> GeographicMapCellPosition.geographicMapCellPosition);
        previousGeographicMapCellPosition <- ((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()) :> GeographicMapCellPosition.geographicMapCellPosition);
        newGeographicMapCellPosition <- ((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()) :> GeographicMapCellPosition.geographicMapCellPosition);
        currentCellType <- ((GeographicMapCellType.get_nULL_GEOGRAPHIC_MAP_CELL_TYPE ()) :> GeographicMapCellType.geographicMapCellType);
        ();
        ()
      end
  end
let () = java_register_constructor "GeographicMapCellPositionTracking" (fun arguments -> Obj.repr (new geographicMapCellPositionTracking (Obj.obj arguments)))


