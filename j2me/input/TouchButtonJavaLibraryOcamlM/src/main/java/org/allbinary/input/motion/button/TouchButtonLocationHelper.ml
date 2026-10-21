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
(* package org.allbinary.input.motion.button *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.logic.string.StringMaker *)

class touchButtonLocationHelper () =
  object
    val mutable totalColumns : int = 0
    method totalColumns = totalColumns
    method set_totalColumns value' = totalColumns <- value'
    val mutable totalRows : int = 0
    method totalRows = totalRows
    method set_totalRows value' = totalRows <- value'
    val mutable columnsRemainder : int = 0
    method columnsRemainder = columnsRemainder
    method set_columnsRemainder value' = columnsRemainder <- value'
    val mutable rowsRemainder : int = 0
    method rowsRemainder = rowsRemainder
    method set_rowsRemainder value' = rowsRemainder <- value'
    val mutable columnsRemainderHalf : int = 0
    method columnsRemainderHalf = columnsRemainderHalf
    method set_columnsRemainderHalf value' = columnsRemainderHalf <- value'
    val mutable rowsRemainderHalf : int = 0
    method rowsRemainderHalf = rowsRemainderHalf
    method set_rowsRemainderHalf value' = rowsRemainderHalf <- value'
    
    

    method getTotalColumns () : int =
        begin
        totalColumns
        end
    

    method getTotalRows () : int =
        begin
        totalRows
        end
    

    method getColumnsRemainder () : int =
        begin
        columnsRemainder
        end
    

    method getRowsRemainder () : int =
        begin
        rowsRemainder
        end
    

    method getColumnsRemainderHalf () : int =
        begin
        columnsRemainderHalf
        end
    

    method getRowsRemainderHalf () : int =
        begin
        rowsRemainderHalf
        end
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("totalColumns: "));
        ignore (!stringBuffer#appendint (totalColumns));
        ignore (!stringBuffer#append (" totalRows: "));
        ignore (!stringBuffer#appendint (totalRows));
        ignore (!stringBuffer#append (" columnsRemainder: "));
        ignore (!stringBuffer#appendint (columnsRemainder));
        ignore (!stringBuffer#append (" rowsRemainder: "));
        ignore (!stringBuffer#appendint (rowsRemainder));
        ignore (!stringBuffer#append (" columnsRemainderHalf: "));
        ignore (!stringBuffer#appendint (columnsRemainderHalf));
        ignore (!stringBuffer#append (" rowsRemainderHalf: "));
        ignore (!stringBuffer#appendint (rowsRemainderHalf));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        let buttonSize : int ref = ref ((CommonButtons.getInstance ())#sTANDARD_BUTTON_SIZE) in ();
        let displayInfo : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
        totalColumns <- (Float.to_int (Float.round (((java_to_float (Obj.repr ((!displayInfo#getLastWidth ())))) /. (float_of_int (!buttonSize))))));
        totalRows <- (Float.to_int (Float.round (((java_to_float (Obj.repr ((!displayInfo#getLastHeight ())))) /. (float_of_int (!buttonSize))))));
        columnsRemainder <- ((!displayInfo#getLastWidth ()) mod !buttonSize);
        columnsRemainderHalf <- ((columnsRemainder asr 1));
        rowsRemainder <- ((!displayInfo#getLastHeight ()) mod !buttonSize);
        rowsRemainderHalf <- ((rowsRemainder asr 1))
      end
  end
let () = java_register_constructor "TouchButtonLocationHelper" (fun arguments -> Obj.repr (new touchButtonLocationHelper (Obj.obj arguments)))


