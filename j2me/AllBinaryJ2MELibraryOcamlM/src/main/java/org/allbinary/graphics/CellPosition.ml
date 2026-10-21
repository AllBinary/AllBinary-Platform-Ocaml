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
(* import org.allbinary.graph.V *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)


let toStringColRow ((i_column : int), (i_row : int)) : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        ignore (!stringBuffer#append (!commonSeps#pARENTHESIS_OPEN));
        ignore (!stringBuffer#appendint (i_column));
        ignore (!stringBuffer#append (!commonSeps#cOMMA));
        ignore (!stringBuffer#appendint (i_row));
        ignore (!stringBuffer#append (!commonSeps#pARENTHESIS_CLOSE));
        (java_string_of (Obj.repr !stringBuffer))
        end

let () = java_register_static "CellPosition.toStringColRow" (fun arguments -> Obj.repr (toStringColRow (Obj.obj arguments)))
class cellPosition ((column_arg : int), (row_arg : int), (columns : int), (_rows : int)) =
  object (self)
    inherit V.v ()
    val mutable id : int = 0
    method id = id
    method set_id value' = id <- value'
    val mutable column : int = 0
    method column = column
    method set_column value' = column <- value'
    val mutable row : int = 0
    method row = row
    method set_row value' = row <- value'
    
    

    method getColumn () : int =
        begin
        column
        end [@@warning "-7"]
    

    method getRow () : int =
        begin
        row
        end [@@warning "-7"]
    

    method toString () : string =
        begin
        (toStringColRow ((self#getColumn ()), (self#getRow ())))
        end [@@warning "-7"]
    

    method getId () : int =
        begin
        id
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        ();
        column <- column_arg;
        row <- row_arg;
        id <- (((row_arg * columns)) + column_arg)
      end
  end
let () = java_register_constructor "CellPosition" (fun arguments -> Obj.repr (new cellPosition (Obj.obj arguments)))

let toStringCellPosition : 'any1. 'any1 -> string = fun (basicGeographicMapCellPosition) ->
        let basicGeographicMapCellPosition = Obj.repr basicGeographicMapCellPosition in
        begin
        (toStringColRow (((Obj.magic basicGeographicMapCellPosition)#getColumn ()), ((Obj.magic basicGeographicMapCellPosition)#getRow ())))
        end [@@warning "-20"]
let () = java_register_static "CellPosition.toStringCellPosition" (fun arguments -> Obj.repr (toStringCellPosition (Obj.obj arguments)))


