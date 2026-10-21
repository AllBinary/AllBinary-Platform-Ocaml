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
(* import org.allbinary.graphics.CellPosition *)
(* import org.allbinary.graphics.CellPositionFactory *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)

class geographicMapCellPositionEvent ((anyType : Obj.t), (geographicMapCellPosition_arg : CellPosition.cellPosition)) =
  object (self)
    inherit AllBinaryEventObject.allBinaryEventObject (anyType)
    val mutable geographicMapCellPosition : CellPosition.cellPosition = (Obj.magic 0)
    method geographicMapCellPosition = geographicMapCellPosition
    method set_geographicMapCellPosition value' = geographicMapCellPosition <- value'
    
    

    method init : 'any1. 'any1 -> unit = fun (anyType) ->
        let anyType = Obj.repr anyType in
        begin
        ignore (self#setSource (anyType))
        end [@@warning "-7"]
    

    method setGeographicMapCellPosition : 'any1. 'any1 -> unit = fun (geographicMapCellPosition_arg) ->
        let geographicMapCellPosition_arg = Obj.repr geographicMapCellPosition_arg in
        begin
        geographicMapCellPosition <- (Obj.magic geographicMapCellPosition_arg)
        end [@@warning "-7-20"]
    

    method getGeographicMapCellPosition () : GeographicMapCellPosition.geographicMapCellPosition =
        begin
        ((Obj.magic geographicMapCellPosition) :> GeographicMapCellPosition.geographicMapCellPosition)
        end [@@warning "-7"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("CellPositionEvent: "));
        ignore (!stringBuffer#append ("\nGeographicMapCellPosition: "));
        ignore (!stringBuffer#append (((StringUtil.getInstance ())#toString ((self#getGeographicMapCellPosition ())))));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]

    initializer
      begin
        geographicMapCellPosition <- ((CellPositionFactory.getInstance ())#nONE :> CellPosition.cellPosition);
        ();
        (* super(...) is the inherit clause *) ();
        geographicMapCellPosition <- geographicMapCellPosition_arg
      end
  end
let () = java_register_constructor "GeographicMapCellPositionEvent" (fun arguments -> Obj.repr (new geographicMapCellPositionEvent (Obj.obj arguments)))


