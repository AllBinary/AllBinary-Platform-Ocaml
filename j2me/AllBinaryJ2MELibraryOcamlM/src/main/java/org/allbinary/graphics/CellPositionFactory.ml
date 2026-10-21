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
(* package org.allbinary.graphics *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonStrings *)

class cellPositionFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable nONE : CellPosition.cellPosition = (Obj.magic 0)
    method nONE = nONE
    method set_nONE value' = nONE <- value'
    val mutable cellPositionArray : CellPosition.cellPosition array array = (Obj.magic 0)
    method cellPositionArray = cellPositionArray
    method set_cellPositionArray value' = cellPositionArray <- value'
    val mutable columns : int = 0
    method columns = columns
    method set_columns value' = columns <- value'
    val mutable rows : int = 0
    method rows = rows
    method set_rows value' = rows <- value'
    
    

    method init ((columns_arg : int), (rows_arg : int)) : unit =
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("Init: columns: "));
        ignore (!stringBuffer#appendint (columns_arg));
        ignore (!stringBuffer#append (" rows: "));
        ignore (!stringBuffer#appendint (rows_arg));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, !commonStrings#iNIT));
        cellPositionArray <- (Array.make_matrix (columns_arg) (rows_arg) (Obj.magic 0));
        columns <- columns_arg;
        rows <- rows_arg;
        for column = 0 to columns_arg - 1 do
            for row = 0 to rows_arg - 1 do
                ignore (self#createInstance (column, row))
            done
        done
        end
    

    method getInstanceColRow ((i_column : int), (i_row : int)) : CellPosition.cellPosition =
        begin
        (try
            (cellPositionArray.(i_column).(i_row) :> CellPosition.cellPosition)
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put ((java_string_of (Obj.repr (((((((((new StringMaker.stringMaker ())#append ("columns: "))#appendint ((self#getColumns ())))#append (" rows: "))#appendint ((self#getRows ())))#append (" col: "))#appendint (i_column))#append (" row: "))#appendint (i_row)))), self, !commonStrings#gET_INSTANCE, e));
            (nONE :> CellPosition.cellPosition)
        end)
        end
    

    method createInstance ((i_column : int), (i_row : int)) : CellPosition.cellPosition =
        begin
        let cellPositionCanBeNull : CellPosition.cellPosition ref = ref ((cellPositionArray.(i_column).(i_row) :> CellPosition.cellPosition)) in ();
        if (!cellPositionCanBeNull == (Obj.magic 0)) then begin
            cellPositionCanBeNull := (new CellPosition.cellPosition (i_column, i_row, columns, rows));
            cellPositionArray.(i_column).(i_row) <- !cellPositionCanBeNull
        end;
        (!cellPositionCanBeNull :> CellPosition.cellPosition)
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
        nONE <- ((new CellPosition.cellPosition ((-1), (-1), (-1), (-1))) :> CellPosition.cellPosition);
        cellPositionArray <- (Array.make_matrix (0) (0) (Obj.magic 0));
        columns <- 0;
        rows <- 0;
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "CellPositionFactory" (fun arguments -> Obj.repr (new cellPositionFactory (Obj.obj arguments)))

let sINGLETON = ref ((new cellPositionFactory ()))
let get_sINGLETON () = !sINGLETON
let set_sINGLETON value' = sINGLETON := value'
let () = java_register_static "CellPositionFactory.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        !sINGLETON
        end
let () = java_register_static "CellPositionFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


