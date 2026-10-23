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
(* package org.allbinary.media.graphics.geography.map.racetrack *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory *)

class raceTrackGeographicMap ((raceTrackInfo : RaceTrackInfo.raceTrackInfo), (raceTrackData : RaceTrackData.raceTrackData), (tiledLayerFactoryInterface : AllBinaryTiledLayerFactoryInterface.allBinaryTiledLayerFactoryInterface), (geographicMapCellPositionFactoryInterface : GeographicMapCellPositionFactoryInterface.geographicMapCellPositionFactoryInterface), (geographicMapCellPositionBaseFactory : GeographicMapCellPositionBaseFactory.geographicMapCellPositionBaseFactory), (geographicMapCellTypeFactory : GeographicMapCellTypeFactory.geographicMapCellTypeFactory), customMapGeneratorBaseFactory) =
  object (self)
    inherit BaseRaceTrackGeographicMap.baseRaceTrackGeographicMap (raceTrackInfo, raceTrackData, (tiledLayerFactoryInterface#getInstance (raceTrackInfo, raceTrackData)), ((new BasicGeographicMapFactory.basicGeographicMapFactory ())#getInstance (raceTrackInfo, raceTrackData, tiledLayerFactoryInterface, geographicMapCellPositionFactoryInterface, geographicMapCellTypeFactory)), geographicMapCellPositionFactoryInterface, geographicMapCellPositionBaseFactory, geographicMapCellTypeFactory)
    val mutable customMapGenerator : CustomMapGeneratorBase.customMapGeneratorBase = (Obj.magic 0)
    method customMapGenerator = customMapGenerator
    method set_customMapGenerator value' = customMapGenerator <- value'
    
    

    method getCustomMapGenerator () : CustomMapGeneratorBase.customMapGeneratorBase =
        begin
        (customMapGenerator :> CustomMapGeneratorBase.customMapGeneratorBase)
        end [@@warning "-7"]
    

    method isValid : 'any1. 'any1 -> bool = fun (geographicMapCellPosition) ->
        let geographicMapCellPosition = Obj.repr geographicMapCellPosition in
        try
        begin
        let customMapArray : int array array ref = ref ((customMapGenerator#getCustomMapArray ())) in ();
        if (((Obj.magic geographicMapCellPosition)#getColumn ()) >= (Array.length !customMapArray.(0))) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("Column: "));
            ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((Obj.magic geographicMapCellPosition)#getColumn ()))))));
            ignore (!stringBuffer#append (" not in: "));
            ignore (!stringBuffer#appendint ((Array.length !customMapArray.(0))));
            ignore ((self#logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, (self#commonStrings)#iS_VALID));
            if (((Obj.magic geographicMapCellPosition)#getColumn ()) == (Array.length !customMapArray.(0))) then begin
                raise (Java_return (Obj.repr (true)))
            end else begin
                raise (Java_return (Obj.repr (false)))
            end
        end else if (((Obj.magic geographicMapCellPosition)#getRow ()) > (Array.length !customMapArray)) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("Row: "));
            ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((Obj.magic geographicMapCellPosition)#getRow ()))))));
            ignore (!stringBuffer#append (" not in: "));
            ignore (!stringBuffer#appendint ((Array.length !customMapArray)));
            ignore ((self#logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, (self#commonStrings)#iS_VALID));
            if (((Obj.magic geographicMapCellPosition)#getRow ()) == (Array.length !customMapArray)) then begin
                raise (Java_return (Obj.repr (true)))
            end else begin
                raise (Java_return (Obj.repr (false)))
            end
        end;
        true
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        customMapGenerator <- (customMapGeneratorBaseFactory#create (self))
      end
  end
let () = java_register_constructor "RaceTrackGeographicMap" (fun arguments -> Obj.repr (new raceTrackGeographicMap (Obj.obj arguments)))


