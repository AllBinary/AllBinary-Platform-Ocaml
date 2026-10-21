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
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)

class basicGeographicMapCellPositionFactory (geographicMapInterface_arg) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable geographicMapCellPositionArray : GeographicMapCellPosition.geographicMapCellPosition array array = (Obj.magic 0)
    method geographicMapCellPositionArray = geographicMapCellPositionArray
    method set_geographicMapCellPositionArray value' = geographicMapCellPositionArray <- value'
    val mutable geographicMapInterface : Obj.t = Obj.repr 0
    method geographicMapInterface : 'r. 'r = Obj.magic geographicMapInterface
    method set_geographicMapInterface : 'v. 'v -> unit = fun value' -> geographicMapInterface <- Obj.repr value'
    val mutable geographicMapCellPositionFactoryInterface : Obj.t = Obj.repr 0
    method geographicMapCellPositionFactoryInterface : 'r. 'r = Obj.magic geographicMapCellPositionFactoryInterface
    method set_geographicMapCellPositionFactoryInterface : 'v. 'v -> unit = fun value' -> geographicMapCellPositionFactoryInterface <- Obj.repr value'
    val mutable columns : int = 0
    method columns = columns
    method set_columns value' = columns <- value'
    val mutable rows : int = 0
    method rows = rows
    method set_rows value' = rows <- value'
    val mutable tiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer = (Obj.magic 0)
    method tiledLayer = tiledLayer
    method set_tiledLayer value' = tiledLayer <- value'
    
    

    method init () : unit =
        begin
        let tiledLayer_arg : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref ((tiledLayer :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        let columns_arg : int ref = ref ((self#getColumns ())) in ();
        let rows_arg : int ref = ref ((self#getRows ())) in ();
        let width : int ref = ref ((!tiledLayer_arg#getCellWidth ())) in ();
        let height : int ref = ref ((!tiledLayer_arg#getCellHeight ())) in ();
        for column = 0 to !columns_arg - 1 do
            for row = 0 to !rows_arg - 1 do
                ignore (self#createInstance (column, row, !width, !height))
            done
        done
        end
    

    method visit : 'any1. 'any1 -> unit = fun (geographicMapCelPositionFactoryInitVisitorInterface) ->
        let geographicMapCelPositionFactoryInitVisitorInterface = Obj.repr geographicMapCelPositionFactoryInitVisitorInterface in
        begin
        let tiledLayer_arg : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref ((tiledLayer :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        let columns_arg : int ref = ref ((self#getColumns ())) in ();
        let rows_arg : int ref = ref ((self#getRows ())) in ();
        (try
            let cellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((Obj.magic 0) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
            for column = 0 to !columns_arg - 1 do
                for row = 0 to !rows_arg - 1 do
                    cellPosition := (self#getAt (column, row));
                    ignore ((Obj.magic geographicMapCelPositionFactoryInitVisitorInterface)#visit (!tiledLayer_arg, !cellPosition))
                done
            done
        with e -> begin
            let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
            ignore ((Obj.magic logUtil)#put ((java_string_of (Obj.repr (((((((new StringMaker.stringMaker ())#append (!commonSeps#bRACKET_OPEN))#appendint (!rows_arg))#append (!commonSeps#bRACKET_CLOSE))#append (!commonSeps#bRACKET_OPEN))#appendint (!columns_arg))#append (!commonSeps#bRACKET_CLOSE)))), self, "visit", e));
            raise e
        end)
        end [@@warning "-20"]
    

    method getAt ((i_column : int), (i_row : int)) : GeographicMapCellPosition.geographicMapCellPosition =
        begin
        (geographicMapCellPositionArray.(i_row).(i_column) :> GeographicMapCellPosition.geographicMapCellPosition)
        end
    

    method getInstance : 'any1. 'any1 -> GeographicMapCellPosition.geographicMapCellPosition = fun (anotherMapGeographicMapCellPosition) ->
        let anotherMapGeographicMapCellPosition = Obj.repr anotherMapGeographicMapCellPosition in
        begin
        ((self#getAt (((Obj.magic anotherMapGeographicMapCellPosition)#getColumn ()), ((Obj.magic anotherMapGeographicMapCellPosition)#getRow ()))) :> GeographicMapCellPosition.geographicMapCellPosition)
        end [@@warning "-20"]
    

    method createInstance ((i_column : int), (i_row : int), (width : int), (height : int)) : GeographicMapCellPosition.geographicMapCellPosition =
        begin
        let cellPositionCanBeNull : Obj.t ref = ref ((Obj.repr geographicMapCellPositionArray.(i_row).(i_column))) in ();
        if (!cellPositionCanBeNull == (Obj.magic 0)) then begin
            cellPositionCanBeNull := ((Obj.magic geographicMapCellPositionFactoryInterface)#getInstance ((Obj.magic geographicMapInterface), i_column, i_row, columns, rows, width, height));
            geographicMapCellPositionArray.(i_row).(i_column) <- (Obj.magic !cellPositionCanBeNull)
        end;
        ((Obj.magic !cellPositionCanBeNull) :> GeographicMapCellPosition.geographicMapCellPosition)
        end
    

    method getColumns () : int =
        begin
        columns
        end
    

    method getRows () : int =
        begin
        rows
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        geographicMapInterface <- Obj.repr (geographicMapInterface_arg);
        geographicMapCellPositionFactoryInterface <- Obj.repr (((Obj.magic geographicMapInterface)#getGeographicMapCellPositionFactoryInterface ()));
        tiledLayer <- ((Obj.magic geographicMapInterface)#getAllBinaryTiledLayer ());
        columns <- (tiledLayer#getColumns ());
        rows <- (tiledLayer#getRows ());
        geographicMapCellPositionArray <- (Array.make_matrix (rows) (columns) (Obj.magic 0));
        (self#init ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicGeographicMapCellPositionFactory" (fun arguments -> Obj.repr (new basicGeographicMapCellPositionFactory (Obj.obj arguments)))


