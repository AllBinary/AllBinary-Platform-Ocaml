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
(* import org.allbinary.graphics.CellPosition *)
(* import org.allbinary.util.ABHashtable *)

class cachingGeographicMapCellPositionFactory ((geographicMapInterface : BasicGeographicMap.basicGeographicMap)) =
  object (self)
    inherit BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory (geographicMapInterface)
    
    

    method createInstance ((i_column : int), (i_row : int), (width : int), (height : int)) : GeographicMapCellPosition.geographicMapCellPosition =
        begin
        let hashtable : Obj.t ref = ref ((Obj.repr (GeographicMapCellPositionFactory.getHashtable ()))) in ();
        let cellPositionKey : string ref = ref ((CellPosition.toStringColRow (i_column, i_row))) in ();
        let cellPositionCanBeNull : Obj.t ref = ref ((Obj.repr ((Obj.magic !hashtable)#get (!cellPositionKey)))) in ();
        if (!cellPositionCanBeNull == (Obj.magic 0)) then begin
            cellPositionCanBeNull := (geographicMapCellPositionFactoryInterface#getInstance (geographicMapInterface, i_column, i_row, (self#getColumns ()), (self#getRows ()), width, height));
            geographicMapCellPositionArray.(i_row).(i_column) <- (Obj.magic !cellPositionCanBeNull);
            ignore ((Obj.magic !hashtable)#put (!cellPositionKey, !cellPositionCanBeNull))
        end;
        ((Obj.magic !cellPositionCanBeNull) :> GeographicMapCellPosition.geographicMapCellPosition)
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "CachingGeographicMapCellPositionFactory" (fun arguments -> Obj.repr (new cachingGeographicMapCellPositionFactory (Obj.obj arguments)))


