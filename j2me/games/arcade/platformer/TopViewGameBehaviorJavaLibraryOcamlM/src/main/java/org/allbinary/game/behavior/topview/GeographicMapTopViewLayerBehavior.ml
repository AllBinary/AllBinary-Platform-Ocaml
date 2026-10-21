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
(* import org.allbinary.game.physics.velocity.VelocityProperties *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellType *)
(* import org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory *)
(* import org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory *)
(* import org.allbinary.util.BasicArrayList *)

class geographicMapTopViewLayerBehavior ((maxGravityActionIndex : int)) =
  object
    inherit TopViewGameLayerBehavior.topViewGameLayerBehavior (maxGravityActionIndex)
    
    

    method getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation : 'any3 'any4. BasicGeographicMap.basicGeographicMap array * GeographicMapCellType.geographicMapCellType array * 'any3 * 'any4 * int * int -> GeographicMapCellPosition.geographicMapCellPosition = fun ((_geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), (_geographicMapCellTypeArray : GeographicMapCellType.geographicMapCellType array), _velocityProperties, _layer, (_x : int), (_y : int)) ->
        begin
        ((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()) :> GeographicMapCellPosition.geographicMapCellPosition)
        end [@@warning "-7-20"]
    

    method getGeographicMapCellPositionIfNotSolidBlockOrOffMap : 'any3 'any4 'any5. BasicGeographicMap.basicGeographicMap array * GeographicMapCellType.geographicMapCellType array * 'any3 * 'any4 * 'any5 -> GeographicMapCellPosition.geographicMapCellPosition = fun ((_geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), (_geographicMapCellTypeArray : GeographicMapCellType.geographicMapCellType array), _geographicMapCellPosition, _velocityProperties, _layer) ->
        begin
        ((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()) :> GeographicMapCellPosition.geographicMapCellPosition)
        end [@@warning "-7-20"]
    

    method getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap : 'any3 'any4 'any5. BasicGeographicMap.basicGeographicMap array * GeographicMapCellType.geographicMapCellType array * 'any3 * 'any4 * 'any5 -> GeographicMapCellPosition.geographicMapCellPosition = fun ((_geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), (_geographicMapCellTypeArray : GeographicMapCellType.geographicMapCellType array), _geographicMapCellPositionList, _velocityProperties, _layer) ->
        begin
        ((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()) :> GeographicMapCellPosition.geographicMapCellPosition)
        end [@@warning "-7-20"]
    

    method gravity : 'any1 'any4. 'any1 * BasicGeographicMap.basicGeographicMap array * GeographicMapCellType.geographicMapCellType array * 'any4 -> unit = fun (_velocityProperties, (_geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), (_geographicMapCellTypeArray : GeographicMapCellType.geographicMapCellType array), _geographicMapCellPosition) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method left : 'any3 'any4. BasicGeographicMap.basicGeographicMap array * GeographicMapCellType.geographicMapCellType array * 'any3 * 'any4 -> unit = fun ((_geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), (_geographicMapCellTypeArray : GeographicMapCellType.geographicMapCellType array), _velocityProperties, _layer) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method move : 'any3 'any4. BasicGeographicMap.basicGeographicMap array * GeographicMapCellType.geographicMapCellType array * 'any3 * 'any4 * int * int -> bool = fun ((_geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), (_geographicMapCellTypeArray : GeographicMapCellType.geographicMapCellType array), _velocityProperties, _layer, (_x : int), (_y : int)) ->
        begin
        false
        end [@@warning "-7-20"]
    

    method moveAndLand : 'any3 'any4 'any5. BasicGeographicMap.basicGeographicMap array * GeographicMapCellType.geographicMapCellType array * 'any3 * 'any4 * 'any5 * int * int -> unit = fun ((_geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), (_geographicMapCellTypeArray : GeographicMapCellType.geographicMapCellType array), _geographicMapCellPosition, _velocityProperties, _layer, (_x : int), (_y : int)) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method right : 'any3 'any4. BasicGeographicMap.basicGeographicMap array * GeographicMapCellType.geographicMapCellType array * 'any3 * 'any4 -> unit = fun ((_geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), (_geographicMapCellTypeArray : GeographicMapCellType.geographicMapCellType array), _velocityProperties, _layer) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method hasSolidBlock ((geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), (geographicMapCellTypeArray : GeographicMapCellType.geographicMapCellType array)) : bool =
        try
        begin
        let size : int ref = ref ((Array.length geographicMapInterfaceArray)) in ();
        let basicTopViewGeographicMapCellTypeFactory : BasicTopViewGeographicMapCellTypeFactory.basicTopViewGeographicMapCellTypeFactory ref = ref (((Obj.magic 0) :> BasicTopViewGeographicMapCellTypeFactory.basicTopViewGeographicMapCellTypeFactory)) in ();
        for index = 0 to !size - 1 do
            basicTopViewGeographicMapCellTypeFactory := (Obj.magic (geographicMapInterfaceArray.(index)#getGeographicMapCellTypeFactory ()));
            if (!basicTopViewGeographicMapCellTypeFactory#bLOCK_CELL_TYPE#isType (geographicMapCellTypeArray.(index))) then begin
                raise (Java_return (Obj.repr (true)))
            end
        done;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method isOffMap ((geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), (geographicMapCellTypeArray : GeographicMapCellType.geographicMapCellType array)) : bool =
        try
        begin
        let size : int ref = ref ((Array.length geographicMapInterfaceArray)) in ();
        let basicTopViewGeographicMapCellTypeFactory : BasicTopViewGeographicMapCellTypeFactory.basicTopViewGeographicMapCellTypeFactory ref = ref (((Obj.magic 0) :> BasicTopViewGeographicMapCellTypeFactory.basicTopViewGeographicMapCellTypeFactory)) in ();
        for index = 0 to !size - 1 do
            basicTopViewGeographicMapCellTypeFactory := (Obj.magic (geographicMapInterfaceArray.(index)#getGeographicMapCellTypeFactory ()));
            if (!basicTopViewGeographicMapCellTypeFactory#oFF_MAP_CELL_TYPE#isType (geographicMapCellTypeArray.(index))) then begin
                raise (Java_return (Obj.repr (true)))
            end
        done;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "GeographicMapTopViewLayerBehavior" (fun arguments -> Obj.repr (new geographicMapTopViewLayerBehavior (Obj.obj arguments)))


