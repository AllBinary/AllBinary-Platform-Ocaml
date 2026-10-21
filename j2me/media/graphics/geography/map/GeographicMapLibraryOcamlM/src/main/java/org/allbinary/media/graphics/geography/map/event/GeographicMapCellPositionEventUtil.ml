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
(* package org.allbinary.media.graphics.geography.map.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.CellPositionFactory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking *)

class geographicMapCellPositionEventUtil ((anyType : Obj.t)) =
  object
    val mutable geographicMapCellPositionEvent : GeographicMapCellPositionEvent.geographicMapCellPositionEvent = (Obj.magic 0)
    method geographicMapCellPositionEvent = geographicMapCellPositionEvent
    method set_geographicMapCellPositionEvent value' = geographicMapCellPositionEvent <- value'
    val mutable geographicMapCellPositionEventHandler : GeographicMapCellPositionEventHandler.geographicMapCellPositionEventHandler = (Obj.magic 0)
    method geographicMapCellPositionEventHandler = geographicMapCellPositionEventHandler
    method set_geographicMapCellPositionEventHandler value' = geographicMapCellPositionEventHandler <- value'
    
    

    method update : 'any1. 'any1 -> unit = fun (geographicMapCellPositionTracking) ->
        let geographicMapCellPositionTracking = Obj.repr geographicMapCellPositionTracking in
        begin
        ignore (geographicMapCellPositionEvent#setGeographicMapCellPosition (((Obj.magic geographicMapCellPositionTracking)#getCurrentGeographicMapCellPosition ())));
        ignore (geographicMapCellPositionEventHandler#fireEvent (geographicMapCellPositionEvent))
        end [@@warning "-20"]
    

    method remove : 'any1. 'any1 -> unit = fun (geographicMapCellPositionTracking) ->
        let geographicMapCellPositionTracking = Obj.repr geographicMapCellPositionTracking in
        begin
        ignore (geographicMapCellPositionEvent#setGeographicMapCellPosition (((Obj.magic geographicMapCellPositionTracking)#getCurrentGeographicMapCellPosition ())));
        ignore (geographicMapCellPositionEventHandler#fireRemoveEvent (geographicMapCellPositionEvent))
        end [@@warning "-20"]

    initializer
      begin
        ();
        geographicMapCellPositionEventHandler <- ((GeographicMapCellPositionEventHandler.getInstance ()) :> GeographicMapCellPositionEventHandler.geographicMapCellPositionEventHandler);
        ();
        geographicMapCellPositionEvent <- (new GeographicMapCellPositionEvent.geographicMapCellPositionEvent (anyType, (CellPositionFactory.getInstance ())#nONE))
      end
  end
let () = java_register_constructor "GeographicMapCellPositionEventUtil" (fun arguments -> Obj.repr (new geographicMapCellPositionEventUtil (Obj.obj arguments)))


