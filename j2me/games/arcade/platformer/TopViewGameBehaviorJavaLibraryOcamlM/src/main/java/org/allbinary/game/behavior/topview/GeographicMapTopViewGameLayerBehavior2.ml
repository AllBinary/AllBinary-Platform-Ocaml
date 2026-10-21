(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.behavior.topview *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior *)
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.game.physics.acceleration.GravityUtil *)
(* import org.allbinary.game.physics.velocity.VelocityProperties *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellType *)
(* import org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory *)

class geographicMapTopViewGameLayerBehavior2 ((maxGravityActionIndex : int), (autoStepBlocks_arg : bool), (offsetY_arg : int)) =
  object (self)
    inherit GeographicMapTopViewLayerBehavior.geographicMapTopViewLayerBehavior (maxGravityActionIndex)
    val mutable gravityUtil : GravityUtil.gravityUtil = (Obj.magic 0)
    method gravityUtil = gravityUtil
    method set_gravityUtil value' = gravityUtil <- value'
    val mutable geographicMapBehavior : MultiGeographicMapBehavior.multiGeographicMapBehavior = (Obj.magic 0)
    method geographicMapBehavior = geographicMapBehavior
    method set_geographicMapBehavior value' = geographicMapBehavior <- value'
    val mutable autoStepBlocks : bool = false
    method autoStepBlocks = autoStepBlocks
    method set_autoStepBlocks value' = autoStepBlocks <- value'
    val mutable offsetY : int = 0
    method offsetY = offsetY
    method set_offsetY value' = offsetY <- value'
    val mutable previousGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition = (Obj.magic 0)
    method previousGeographicMapCellPosition = previousGeographicMapCellPosition
    method set_previousGeographicMapCellPosition value' = previousGeographicMapCellPosition <- value'
    
    

    method gravity : 'any1 'any4. 'any1 * BasicGeographicMap.basicGeographicMap array * GeographicMapCellType.geographicMapCellType array * 'any4 -> unit = fun (velocityProperties, (geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), (geographicMapCellTypeArray : GeographicMapCellType.geographicMapCellType array), geographicMapCellPosition) ->
        let velocityProperties = Obj.repr velocityProperties in
        let geographicMapCellPosition = Obj.repr geographicMapCellPosition in
        begin
        if ((Obj.repr (Obj.magic geographicMapCellPosition)) != (Obj.repr (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))) then begin
            ignore (geographicMapBehavior#getCellTypeAt (geographicMapInterfaceArray, geographicMapCellTypeArray, (Obj.magic geographicMapCellPosition)));
            let hasSolidBlock : bool ref = ref ((self#hasSolidBlock (geographicMapInterfaceArray, geographicMapCellTypeArray))) in ();
            if (not !hasSolidBlock) then begin
                ignore (gravityUtil#process ((Obj.magic velocityProperties), gravityUtil#gAME_GRAVITY_VELOCITY));
                ignore ((Obj.magic velocityProperties)#limitXYToForwardAndReverseMaxVelocity ());
                (self#gravity ())
            end else begin
                ()
            end
        end
        end [@@warning "-7-20"]
    

    method getPositionTopLeft : 'any2. BasicGeographicMap.basicGeographicMap array * 'any2 * int * int -> GeographicMapCellPosition.geographicMapCellPosition = fun ((geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), layer, (x : int), (y : int)) ->
        let layer = Obj.repr layer in
        begin
        let xCellPosition : int ref = ref ((((Obj.magic layer)#getXP ()) + (-x))) in ();
        let yCellPosition : int ref = ref ((((Obj.magic layer)#getYP ()) + (-y))) in ();
        ((geographicMapInterfaceArray.(0)#getCellPositionAtXYNoThrow (!xCellPosition, !yCellPosition)) :> GeographicMapCellPosition.geographicMapCellPosition)
        end [@@warning "-7-20"]
    

    method getPositionTopRight : 'any2. BasicGeographicMap.basicGeographicMap array * 'any2 * int * int -> GeographicMapCellPosition.geographicMapCellPosition = fun ((geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), layer, (x : int), (y : int)) ->
        let layer = Obj.repr layer in
        begin
        let xCellPosition : int ref = ref (((((Obj.magic layer)#getXP ()) + (-x)) + ((Obj.magic layer)#getWidth ()))) in ();
        let yCellPosition : int ref = ref ((((Obj.magic layer)#getYP ()) + (-y))) in ();
        ((geographicMapInterfaceArray.(0)#getCellPositionAtXYNoThrow (!xCellPosition, !yCellPosition)) :> GeographicMapCellPosition.geographicMapCellPosition)
        end [@@warning "-7-20"]
    

    method getPositionBottomLeft : 'any2. BasicGeographicMap.basicGeographicMap array * 'any2 * int * int -> GeographicMapCellPosition.geographicMapCellPosition = fun ((geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), layer, (x : int), (y : int)) ->
        let layer = Obj.repr layer in
        begin
        let xCellPosition : int ref = ref ((((Obj.magic layer)#getXP ()) + (-x))) in ();
        let yCellPosition : int ref = ref (((((Obj.magic layer)#getYP ()) + (-y)) + ((Obj.magic layer)#getHeight ()))) in ();
        ((geographicMapInterfaceArray.(0)#getCellPositionAtXYNoThrow (!xCellPosition, !yCellPosition)) :> GeographicMapCellPosition.geographicMapCellPosition)
        end [@@warning "-7-20"]
    

    method getPositionBottomRight : 'any2. BasicGeographicMap.basicGeographicMap array * 'any2 * int * int -> GeographicMapCellPosition.geographicMapCellPosition = fun ((geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), layer, (x : int), (y : int)) ->
        let layer = Obj.repr layer in
        begin
        let xCellPosition : int ref = ref (((((Obj.magic layer)#getXP ()) + (-x)) + ((Obj.magic layer)#getWidth ()))) in ();
        let yCellPosition : int ref = ref (((((Obj.magic layer)#getYP ()) + (-y)) + ((Obj.magic layer)#getHeight ()))) in ();
        ((geographicMapInterfaceArray.(0)#getCellPositionAtXYNoThrow (!xCellPosition, !yCellPosition)) :> GeographicMapCellPosition.geographicMapCellPosition)
        end [@@warning "-7-20"]
    

    method getLeftPosition : 'any2. BasicGeographicMap.basicGeographicMap array * 'any2 -> GeographicMapCellPosition.geographicMapCellPosition = fun ((geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), layer) ->
        let layer = Obj.repr layer in
        begin
        let xCellPosition : int ref = ref (((Obj.magic layer)#getXP ())) in ();
        let yCellPosition : int ref = ref ((((Obj.magic layer)#getYP ()) + ((Obj.magic layer)#getHeight ()))) in ();
        ((geographicMapInterfaceArray.(0)#getCellPositionAtXYNoThrow (!xCellPosition, !yCellPosition)) :> GeographicMapCellPosition.geographicMapCellPosition)
        end [@@warning "-7-20"]
    

    method getRightPosition : 'any2. BasicGeographicMap.basicGeographicMap array * 'any2 -> GeographicMapCellPosition.geographicMapCellPosition = fun ((geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), layer) ->
        let layer = Obj.repr layer in
        begin
        let xCellPosition : int ref = ref ((((Obj.magic layer)#getXP ()) + ((Obj.magic layer)#getWidth ()))) in ();
        let yCellPosition : int ref = ref ((((Obj.magic layer)#getYP ()) + ((Obj.magic layer)#getHeight ()))) in ();
        ((geographicMapInterfaceArray.(0)#getCellPositionAtXYNoThrow (!xCellPosition, !yCellPosition)) :> GeographicMapCellPosition.geographicMapCellPosition)
        end [@@warning "-7-20"]
    

    method getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation : 'any3 'any4. BasicGeographicMap.basicGeographicMap array * GeographicMapCellType.geographicMapCellType array * 'any3 * 'any4 * int * int -> GeographicMapCellPosition.geographicMapCellPosition = fun ((geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), (geographicMapCellTypeArray : GeographicMapCellType.geographicMapCellType array), velocityProperties, layer, (x : int), (y : int)) ->
        let velocityProperties = Obj.repr velocityProperties in
        let layer = Obj.repr layer in
        try
        begin
        let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        let topLeftGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((self#getPositionTopLeft (geographicMapInterfaceArray, (Obj.magic layer), x, y)) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        geographicMapCellPosition := (self#getGeographicMapCellPositionIfNotSolidBlockOrOffMap (geographicMapInterfaceArray, geographicMapCellTypeArray, !topLeftGeographicMapCellPosition, (Obj.magic velocityProperties), (Obj.magic layer)));
        if ((Obj.repr !geographicMapCellPosition) == (Obj.repr (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))) then begin
            raise (Java_return (Obj.repr ((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))))
        end;
        let topRightGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((self#getPositionTopRight (geographicMapInterfaceArray, (Obj.magic layer), x, y)) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        geographicMapCellPosition := (self#getGeographicMapCellPositionIfNotSolidBlockOrOffMap (geographicMapInterfaceArray, geographicMapCellTypeArray, !topRightGeographicMapCellPosition, (Obj.magic velocityProperties), (Obj.magic layer)));
        if ((Obj.repr !geographicMapCellPosition) == (Obj.repr (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))) then begin
            raise (Java_return (Obj.repr ((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))))
        end;
        let bottomLeftGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((self#getPositionBottomLeft (geographicMapInterfaceArray, (Obj.magic layer), x, y)) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        geographicMapCellPosition := (self#getGeographicMapCellPositionIfNotSolidBlockOrOffMap (geographicMapInterfaceArray, geographicMapCellTypeArray, !bottomLeftGeographicMapCellPosition, (Obj.magic velocityProperties), (Obj.magic layer)));
        if ((Obj.repr !geographicMapCellPosition) == (Obj.repr (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))) then begin
            raise (Java_return (Obj.repr ((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))))
        end;
        let bottomRightGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((self#getPositionBottomRight (geographicMapInterfaceArray, (Obj.magic layer), x, y)) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        geographicMapCellPosition := (self#getGeographicMapCellPositionIfNotSolidBlockOrOffMap (geographicMapInterfaceArray, geographicMapCellTypeArray, !bottomRightGeographicMapCellPosition, (Obj.magic velocityProperties), (Obj.magic layer)));
        if ((Obj.repr !geographicMapCellPosition) == (Obj.repr (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))) then begin
            ()
        end else begin
            ()
        end;
        (!geographicMapCellPosition :> GeographicMapCellPosition.geographicMapCellPosition)
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method getGeographicMapCellPositionIfNotSolidBlockOrOffMap : 'any3 'any4 'any5. BasicGeographicMap.basicGeographicMap array * GeographicMapCellType.geographicMapCellType array * 'any3 * 'any4 * 'any5 -> GeographicMapCellPosition.geographicMapCellPosition = fun ((geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), (geographicMapCellTypeArray : GeographicMapCellType.geographicMapCellType array), geographicMapCellPosition, _velocityProperties, _layer) ->
        let geographicMapCellPosition = Obj.repr geographicMapCellPosition in
        try
        begin
        if ((Obj.repr (Obj.magic geographicMapCellPosition)) != (Obj.repr (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))) then begin
            let possibleStepGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((Obj.magic geographicMapCellPosition) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
            let tiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref (((geographicMapInterfaceArray.(0)#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
            if (((((!possibleStepGeographicMapCellPosition#getColumn ()) > 0) && ((!possibleStepGeographicMapCellPosition#getRow ()) > 0)) && ((!possibleStepGeographicMapCellPosition#getColumn ()) < (!tiledLayer#getColumns ()))) && ((!possibleStepGeographicMapCellPosition#getRow ()) < (!tiledLayer#getRows ()))) then begin
                ignore (geographicMapBehavior#getCellTypeAt (geographicMapInterfaceArray, geographicMapCellTypeArray, !possibleStepGeographicMapCellPosition));
                let hasSolidBlock : bool ref = ref ((self#hasSolidBlock (geographicMapInterfaceArray, geographicMapCellTypeArray))) in ();
                let hasOffMap : bool ref = ref ((self#isOffMap (geographicMapInterfaceArray, geographicMapCellTypeArray))) in ();
                if (!hasSolidBlock || !hasOffMap) then begin
                    previousGeographicMapCellPosition <- (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ());
                    raise (Java_return (Obj.repr ((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))))
                end else begin
                    previousGeographicMapCellPosition <- !possibleStepGeographicMapCellPosition;
                    raise (Java_return (Obj.repr (!possibleStepGeographicMapCellPosition)))
                end
            end
        end else begin
            ()
        end;
        previousGeographicMapCellPosition <- (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ());
        ((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()) :> GeographicMapCellPosition.geographicMapCellPosition)
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method moveAndLand : 'any3 'any4 'any5. BasicGeographicMap.basicGeographicMap array * GeographicMapCellType.geographicMapCellType array * 'any3 * 'any4 * 'any5 * int * int -> unit = fun ((geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), (geographicMapCellTypeArray : GeographicMapCellType.geographicMapCellType array), geographicMapCellPosition, _velocityProperties, layer, (x : int), (y : int)) ->
        let geographicMapCellPosition = Obj.repr geographicMapCellPosition in
        let layer = Obj.repr layer in
        begin
        if ((Obj.repr (Obj.magic geographicMapCellPosition)) != (Obj.repr (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))) then begin
            let topViewCharacterInterface : TopViewCharacterInterface.topViewCharacterInterface ref = ref ((((Obj.magic (Obj.magic layer))) :> TopViewCharacterInterface.topViewCharacterInterface)) in ();
            ignore (!topViewCharacterInterface#terrainMove (geographicMapInterfaceArray, geographicMapCellTypeArray, x, y))
        end else begin
            ()
        end
        end [@@warning "-7-20"]
    

    method move : 'any3 'any4. BasicGeographicMap.basicGeographicMap array * GeographicMapCellType.geographicMapCellType array * 'any3 * 'any4 * int * int -> bool = fun ((geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), (geographicMapCellTypeArray : GeographicMapCellType.geographicMapCellType array), velocityProperties, layer, (x : int), (y : int)) ->
        let velocityProperties = Obj.repr velocityProperties in
        let layer = Obj.repr layer in
        try
        begin
        let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((self#getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (geographicMapInterfaceArray, geographicMapCellTypeArray, (Obj.magic velocityProperties), (Obj.magic layer), x, y)) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        (self#moveAndLand (geographicMapInterfaceArray, geographicMapCellTypeArray, !geographicMapCellPosition, (Obj.magic velocityProperties), (Obj.magic layer), x, y));
        if ((Obj.repr !geographicMapCellPosition) == (Obj.repr (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))) then begin
            raise (Java_return (Obj.repr (false)))
        end else begin
            raise (Java_return (Obj.repr (true)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method left : 'any3 'any4. BasicGeographicMap.basicGeographicMap array * GeographicMapCellType.geographicMapCellType array * 'any3 * 'any4 -> unit = fun ((geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), (geographicMapCellTypeArray : GeographicMapCellType.geographicMapCellType array), velocityProperties, layer) ->
        let velocityProperties = Obj.repr velocityProperties in
        let layer = Obj.repr layer in
        begin
        let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((self#getLeftPosition (geographicMapInterfaceArray, (Obj.magic layer))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        if ((Obj.repr !geographicMapCellPosition) != (Obj.repr (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))) then begin
            let possibleStepGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref ((((geographicMapInterfaceArray.(0)#getGeographicMapCellPositionFactory ())#getAt ((!geographicMapCellPosition#getColumn ()), ((!geographicMapCellPosition#getRow ()) - 1))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
            ignore (geographicMapBehavior#getCellTypeAt (geographicMapInterfaceArray, geographicMapCellTypeArray, !possibleStepGeographicMapCellPosition));
            let hasSolidBlock : bool ref = ref ((self#hasSolidBlock (geographicMapInterfaceArray, geographicMapCellTypeArray))) in ();
            if !hasSolidBlock then begin
                if autoStepBlocks then begin
                    let topViewCharacterInterface : TopViewCharacterInterface.topViewCharacterInterface ref = ref ((((Obj.magic (Obj.magic layer))) :> TopViewCharacterInterface.topViewCharacterInterface)) in ();
                    ignore (!topViewCharacterInterface#leftp ())
                end else begin
                    ignore (((Obj.magic velocityProperties)#getVelocityXBasicDecimalP ())#setint (0))
                end
            end else begin
                let topViewCharacterInterface : TopViewCharacterInterface.topViewCharacterInterface ref = ref ((((Obj.magic (Obj.magic layer))) :> TopViewCharacterInterface.topViewCharacterInterface)) in ();
                ignore (!topViewCharacterInterface#leftp ())
            end
        end
        end [@@warning "-7-20"]
    

    method right : 'any3 'any4. BasicGeographicMap.basicGeographicMap array * GeographicMapCellType.geographicMapCellType array * 'any3 * 'any4 -> unit = fun ((geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), (geographicMapCellTypeArray : GeographicMapCellType.geographicMapCellType array), velocityProperties, layer) ->
        let velocityProperties = Obj.repr velocityProperties in
        let layer = Obj.repr layer in
        begin
        let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((self#getRightPosition (geographicMapInterfaceArray, (Obj.magic layer))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        if ((Obj.repr !geographicMapCellPosition) != (Obj.repr (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))) then begin
            let possibleStepGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref ((((geographicMapInterfaceArray.(0)#getGeographicMapCellPositionFactory ())#getAt ((!geographicMapCellPosition#getColumn ()), ((!geographicMapCellPosition#getRow ()) - 1))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
            ignore (geographicMapBehavior#getCellTypeAt (geographicMapInterfaceArray, geographicMapCellTypeArray, !possibleStepGeographicMapCellPosition));
            let hasSolidBlock : bool ref = ref ((self#hasSolidBlock (geographicMapInterfaceArray, geographicMapCellTypeArray))) in ();
            if !hasSolidBlock then begin
                if autoStepBlocks then begin
                    let topViewCharacterInterface : TopViewCharacterInterface.topViewCharacterInterface ref = ref ((((Obj.magic (Obj.magic layer))) :> TopViewCharacterInterface.topViewCharacterInterface)) in ();
                    ignore (!topViewCharacterInterface#rightp ())
                end else begin
                    ignore (((Obj.magic velocityProperties)#getVelocityXBasicDecimalP ())#setint (0))
                end
            end else begin
                let topViewCharacterInterface : TopViewCharacterInterface.topViewCharacterInterface ref = ref ((((Obj.magic (Obj.magic layer))) :> TopViewCharacterInterface.topViewCharacterInterface)) in ();
                ignore (!topViewCharacterInterface#rightp ())
            end
        end
        end [@@warning "-7-20"]

    initializer
      begin
        gravityUtil <- ((GravityUtil.getInstance ()) :> GravityUtil.gravityUtil);
        geographicMapBehavior <- ((new MultiGeographicMapBehavior.multiGeographicMapBehavior ()) :> MultiGeographicMapBehavior.multiGeographicMapBehavior);
        ();
        ();
        previousGeographicMapCellPosition <- ((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()) :> GeographicMapCellPosition.geographicMapCellPosition);
        ();
        (* super(...) is the inherit clause *) ();
        autoStepBlocks <- autoStepBlocks_arg;
        offsetY <- offsetY_arg
      end
  end
let () = java_register_constructor "GeographicMapTopViewGameLayerBehavior2" (fun arguments -> Obj.repr (new geographicMapTopViewGameLayerBehavior2 (Obj.obj arguments)))


