(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot  
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.GameInfo *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellType *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface *)

class fakeLayerManager ((gameInfo : GameInfo.gameInfo)) =
  object
    inherit AllBinaryGameLayerManager.allBinaryGameLayerManager ((BasicColorFactory.getInstance ())#bLACK, (BasicColorFactory.getInstance ())#wHITE, gameInfo)
    val mutable geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array = (Obj.magic 0)
    method geographicMapInterfaceArray = geographicMapInterfaceArray
    method set_geographicMapInterfaceArray value' = geographicMapInterfaceArray <- value'
    val mutable geographicMapCellTypeArray : GeographicMapCellType.geographicMapCellType array = (Obj.magic 0)
    method geographicMapCellTypeArray = geographicMapCellTypeArray
    method set_geographicMapCellTypeArray value' = geographicMapCellTypeArray <- value'
    
    

    method getGeographicMapInterface () : BasicGeographicMap.basicGeographicMap array =
        begin
        geographicMapInterfaceArray
        end [@@warning "-7"]
    

    method setGeographicMapInterface ((geographicMapInterfaceArray_arg : BasicGeographicMap.basicGeographicMap array)) : unit =
        begin
        geographicMapInterfaceArray <- geographicMapInterfaceArray_arg;
        geographicMapCellTypeArray <- (Array.make ((Array.length geographicMapInterfaceArray)) (Obj.magic 0))
        end [@@warning "-7"]
    

    method geographicMapCellTypeArray () : GeographicMapCellType.geographicMapCellType array =
        begin
        geographicMapCellTypeArray
        end [@@warning "-7"]

    initializer
      begin
        geographicMapInterfaceArray <- (BasicGeographicMap.get_nULL_BASIC_GEOGRAPHIC_MAP_ARRAY ());
        geographicMapCellTypeArray <- (GeographicMapCellType.get_nULL_GEOGRAPHIC_MAP_CELL_TYPE_ARRAY ());
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "FakeLayerManager" (fun arguments -> Obj.repr (new fakeLayerManager (Obj.obj arguments)))


