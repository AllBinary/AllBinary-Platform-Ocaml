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
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.game.TiledLayer *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.logic.string.StringMaker *)

class allBinaryJ2METiledLayer ((dataId : int), tiledLayer, (mapTwoDArray : int array array), (debugColor_arg : int)) =
  object (self)
    inherit AllBinaryTiledLayer.allBinaryTiledLayer (dataId, (tiledLayer#getWidth ()), (tiledLayer#getHeight ()), (tiledLayer#getCellWidth ()), (tiledLayer#getCellHeight ())) as super
    val mutable tiledLayerP : Obj.t = Obj.repr 0
    method tiledLayerP : 'r. 'r = Obj.magic tiledLayerP
    method set_tiledLayerP : 'v. 'v -> unit = fun value' -> tiledLayerP <- Obj.repr value'
    val mutable debugColor : int = 0
    method debugColor = debugColor
    method set_debugColor value' = debugColor <- value'
    val mutable font2 : Obj.t = Obj.repr 0
    method font2 : 'r. 'r = Obj.magic font2
    method set_font2 : 'v. 'v -> unit = fun value' -> font2 <- Obj.repr value'
    
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic tiledLayerP)#paint ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method paintDebug : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        ignore ((Obj.magic graphics)#setFont ((Obj.magic font2)));
        ignore ((Obj.magic graphics)#setColor (debugColor));
        let x : int ref = ref (((Obj.magic tiledLayerP)#getX ())) in ();
        let y : int ref = ref (((Obj.magic tiledLayerP)#getY ())) in ();
        let firstColumn : int ref = ref (0) in ();
        let firstRow : int ref = ref (0) in ();
        let totalColumns : int ref = ref (((Obj.magic tiledLayerP)#getColumns ())) in ();
        let totalRows : int ref = ref (((Obj.magic tiledLayerP)#getRows ())) in ();
        let x0 : int ref = ref (!x) in ();
        let tile : int ref = ref (0) in ();
        let tileHeight : int ref = ref (((Obj.magic tiledLayerP)#getCellHeight ())) in ();
        let tileWidth : int ref = ref (((Obj.magic tiledLayerP)#getCellWidth ())) in ();
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        let stringMaker : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let rowIndex : int ref = ref (!firstRow) in ();
        while (!rowIndex < !totalRows) do
            x := !x0;
            let columnIndex : int ref = ref (!firstColumn) in ();
            while (!columnIndex < !totalColumns) do
                (try
                tile := ((Obj.magic tiledLayerP)#getCell (!columnIndex, !rowIndex));
                if (!tile < 0) then begin
                    tile := ((Obj.magic tiledLayerP)#getAnimatedTile (!tile))
                end;
                if (!tile = 0) then begin
                    raise Java_continue
                end;
                tile := !tile - 1;
                ignore (!stringMaker#delete (0, (!stringMaker#length ())));
                ignore ((Obj.magic graphics)#drawString ((java_string_of (Obj.repr (((((!stringMaker#appendint (!columnIndex))#append (!commonSeps#cOMMA))#appendint (!rowIndex))#append (!commonSeps#cOLON))#appendint (!tile)))), (!x + 5), (!y + 10), 0))
                with Java_continue -> ());
                columnIndex := !columnIndex + 1;
                x := (!x + !tileWidth)
            done;
            rowIndex := !rowIndex + 1;
            y := (!y + !tileHeight)
        done;
        ignore ((Obj.magic graphics)#setFont ((Obj.magic !font)))
        end [@@warning "-7-20"]
    

    method moveDXY ((dx : int), (dy : int)) : unit =
        begin
        ignore ((Obj.magic tiledLayerP)#move (dx, dy));
        ignore (super#moveDXY ((-dx), (-dy)))
        end [@@warning "-7"]
    

    method setPosition ((x : int), (y : int), (z : int)) : unit =
        begin
        ignore ((Obj.magic tiledLayerP)#setPosition (x, y));
        ignore (super#setPosition ((-x), (-y), z))
        end [@@warning "-7"]
    

    method getTiledLayer : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic tiledLayerP)))
        end [@@warning "-7"]
    

    method getCellWidth () : int =
        begin
        ((Obj.magic tiledLayerP)#getCellWidth ())
        end [@@warning "-7"]
    

    method getCellHeight () : int =
        begin
        ((Obj.magic tiledLayerP)#getCellHeight ())
        end [@@warning "-7"]
    

    method getCell ((col : int), (row : int)) : int =
        begin
        ((Obj.magic tiledLayerP)#getCell (col, row))
        end [@@warning "-7"]
    

    method getColumns () : int =
        begin
        ((Obj.magic tiledLayerP)#getColumns ())
        end [@@warning "-7"]
    

    method getRows () : int =
        begin
        ((Obj.magic tiledLayerP)#getRows ())
        end [@@warning "-7"]
    

    method setCell ((col : int), (row : int), (index : int)) : unit =
        begin
        ignore ((Obj.magic tiledLayerP)#setCell (col, row, index))
        end [@@warning "-7"]
    

    method getAnimatedTile ((animationTileIndex : int)) : int =
        begin
        ((Obj.magic tiledLayerP)#getAnimatedTile (animationTileIndex))
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        font2 <- (Obj.repr (Obj.magic (java_call_static "Font.getFont" (Obj.repr ((Obj.magic (java_call_static "Font.get_fACE_SYSTEM" (Obj.repr ()))), (Obj.magic (java_call_static "Font.get_sTYLE_PLAIN" (Obj.repr ()))), 4)))));
        ();
        (* super(...) is the inherit clause *) ();
        tiledLayerP <- Obj.repr (tiledLayer);
        debugColor <- debugColor_arg;
        ignore (self#setCells (mapTwoDArray))
      end
  end [@@warning "-20"]
let () = java_register_constructor "AllBinaryJ2METiledLayer" (fun arguments -> Obj.repr (new allBinaryJ2METiledLayer (Obj.obj arguments)))


