(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
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
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.graphics.paint.PaintableInterface *)
(* import org.allbinary.layer.Layer *)
(* import org.allbinary.layer.NamedInterface *)
(* import org.allbinary.string.CommonStrings *)

class allBinaryTiledLayer ((dataId_arg : int), (width : int), (height : int), (cellWidth_arg : int), (cellHeight_arg : int)) =
  object (self)
    inherit Layer.layer (0, 0) as super
    val mutable cellWidth : int = 0
    method cellWidth = cellWidth
    method set_cellWidth value' = cellWidth <- value'
    val mutable cellHeight : int = 0
    method cellHeight = cellHeight
    method set_cellHeight value' = cellHeight <- value'
    val mutable halfWidth : int = 0
    method halfWidth = halfWidth
    method set_halfWidth value' = halfWidth <- value'
    val mutable halfHeight : int = 0
    method halfHeight = halfHeight
    method set_halfHeight value' = halfHeight <- value'
    val mutable halfCellWidth : int = 0
    method halfCellWidth = halfCellWidth
    method set_halfCellWidth value' = halfCellWidth <- value'
    val mutable halfCellHeight : int = 0
    method halfCellHeight = halfCellHeight
    method set_halfCellHeight value' = halfCellHeight <- value'
    val mutable dataId : int = (Obj.magic 0)
    method dataId = dataId
    method set_dataId value' = dataId <- value'
    
    

    method setCells ((mapTwoDArray : int array array)) : unit =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("Start: r: "));
        ignore (!stringBuffer#appendint ((Array.length mapTwoDArray)));
        ignore (!stringBuffer#append (" c: "));
        ignore (!stringBuffer#appendint ((Array.length mapTwoDArray.(0))));
        ignore (!stringBuffer#append (" rows: "));
        ignore (!stringBuffer#appendint ((self#getRows ())));
        ignore (!stringBuffer#append (" columns: "));
        ignore (!stringBuffer#appendint ((self#getColumns ())));
        ignore (logUtil#putF ((java_string_of (Obj.repr !stringBuffer)), self, "setCells"));
        let rows : int ref = ref ((self#getRows ())) in ();
        let columns : int ref = ref ((self#getColumns ())) in ();
        for col = 0 to !columns - 1 do
            for row = 0 to !rows - 1 do
                (self#setCell (col, row, mapTwoDArray.(row).(col)))
            done
        done
        end [@@warning "-7"]
    

    method updateCells ((mapTwoDArray : int array array), (fromTileId : int), (toTileId : int)) : unit =
        begin
        let rows : int ref = ref ((self#getRows ())) in ();
        let columns : int ref = ref ((self#getColumns ())) in ();
        for col = 0 to !columns - 1 do
            for row = 0 to !rows - 1 do
                if (fromTileId = mapTwoDArray.(row).(col)) then begin
                    mapTwoDArray.(row).(col) <- toTileId;
                    (self#setCell (col, row, mapTwoDArray.(row).(col)))
                end
            done
        done
        end [@@warning "-7"]
    

    method getName () : string =
        begin
        (java_get_class (Obj.repr self))
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method paintThreed : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method getX2 () : int =
        begin
        (x + (self#getWidth ()))
        end [@@warning "-7"]
    

    method getY2 () : int =
        begin
        (y + (self#getHeight ()))
        end [@@warning "-7"]
    

    method getZ2 () : int =
        begin
        (java_to_int (Obj.repr (((z + (self#getDepth ()))))))
        end [@@warning "-7"]
    

    method getCellWidth () : int =
        begin
        cellWidth
        end [@@warning "-7"]
    

    method getCellHeight () : int =
        begin
        cellHeight
        end [@@warning "-7"]
    

    method getCell ((_col : int), (_row : int)) : int =
        begin
        (-1)
        end [@@warning "-7"]
    

    method getColumns () : int =
        begin
        (-1)
        end [@@warning "-7"]
    

    method getRows () : int =
        begin
        (-1)
        end [@@warning "-7"]
    

    method setCell ((_col : int), (_row : int), (_tileIndex : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getHalfWidth () : int =
        begin
        halfWidth
        end [@@warning "-7"]
    

    method getHalfHeight () : int =
        begin
        halfHeight
        end [@@warning "-7"]
    

    method getDataId () : int =
        begin
        dataId
        end [@@warning "-7"]
    

    method getHalfCellWidth () : int =
        begin
        halfCellWidth
        end [@@warning "-7"]
    

    method getHalfCellHeight () : int =
        begin
        halfCellHeight
        end [@@warning "-7"]
    

    method isOnTileLayer ((column : int), (row : int)) : bool =
        try
        begin
        if (((((self#getColumns ()) > column) && ((self#getRows ()) > row)) && (row >= 0)) && (column >= 0)) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method getAnimatedTile ((animationTileIndex : int)) : int =
        begin
        animationTileIndex
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        dataId <- dataId_arg;
        ignore (self#setLayerWidth (width));
        ignore (self#setLayerHeight (height));
        ignore (super#setPosition (0, 0, 0));
        cellWidth <- cellWidth_arg;
        cellHeight <- cellHeight_arg;
        halfWidth <- (((self#getWidth ()) asr 1));
        halfHeight <- (((self#getHeight ()) asr 1));
        halfCellWidth <- ((cellWidth_arg asr 1));
        halfCellHeight <- ((cellHeight_arg asr 1))
      end
  end
let () = java_register_constructor "AllBinaryTiledLayer" (fun arguments -> Obj.repr (new allBinaryTiledLayer (Obj.obj arguments)))


