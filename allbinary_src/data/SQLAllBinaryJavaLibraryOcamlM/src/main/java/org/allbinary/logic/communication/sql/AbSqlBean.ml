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
(* package org.allbinary.logic.communication.sql *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.sql.ResultSet *)
(* import java.util.HashMap *)
(* import java.util.Set *)
(* import org.allbinary.business.init.db.DbConnectionInfo *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)

class abSqlBean ((databaseConnectionInfoInterface : DbConnectionInfo.dbConnectionInfo)) =
  object (self)
    inherit AbSqlRow.abSqlRow (databaseConnectionInfoInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable mETHOD_GET_FIELD : string = ""
    method mETHOD_GET_FIELD = mETHOD_GET_FIELD
    method set_mETHOD_GET_FIELD value' = mETHOD_GET_FIELD <- value'
    val mutable mETHOD_IS_SUBSET_OF_ENTRY : string = ""
    method mETHOD_IS_SUBSET_OF_ENTRY = mETHOD_IS_SUBSET_OF_ENTRY
    method set_mETHOD_IS_SUBSET_OF_ENTRY value' = mETHOD_IS_SUBSET_OF_ENTRY <- value'
    
    

    method getField ((key : string), (value : string), (requestedField : string)) : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (sqlStrings#sELECT));
        ignore (!stringBuffer#append (requestedField));
        ignore (!stringBuffer#append (sqlStrings#fROM));
        ignore (!stringBuffer#append ((self#getTableName ())));
        ignore (!stringBuffer#append (sqlStrings#wHERE));
        ignore (!stringBuffer#append (key));
        ignore (!stringBuffer#append (sqlStrings#eQUAL_QUOTE));
        ignore (!stringBuffer#append (value));
        ignore (!stringBuffer#append (sqlStrings#cLOSE_QUOTE));
        let sqlStatement : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
        (try
            let field : string ref = ref (stringUtil#eMPTY_STRING) in ();
            let rset : Obj.t ref = ref ((Obj.repr (self#executeSQLStatement (!sqlStatement)))) in ();
            while ((Obj.magic !rset)#next ()) do
                field := ((Obj.magic !rset)#getString (requestedField));
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                    ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                    ignore (!stringBuffer#append (sqlStrings#sQL_STATEMENT_LABEL));
                    ignore (!stringBuffer#append (!sqlStatement));
                    ignore (!stringBuffer#append (sqlStrings#fIELD_VALUE));
                    ignore (!stringBuffer#append (!field));
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, mETHOD_GET_FIELD))
                end;
                !field
            done;
            (Obj.magic 0)
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((java_string_of (Obj.repr (fAILED_SQL_STATEMENT)) ^ !sqlStatement), self, mETHOD_GET_FIELD, e))
            end;
            (java_string_of (Obj.repr (fAILED_SQL_STATEMENT)) ^ !sqlStatement)
        end)
        end [@@warning "-7"]
    

    (* Java overload getField(HashMap, String) is not converted: OCaml has one method per name *)
    

    method isSubsetOfEntry ((key : string), (value : string), (columnsAndValues : java_hash_map)) : string =
        try
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (sqlStrings#sELECT));
        (try
            let keyArray : Obj.t array ref = ref (((columnsAndValues#keySet ())#toArray ())) in ();
            let size : int ref = ref ((Array.length !keyArray)) in ();
            ignore (!stringBuffer#append (commonSeps#sPACE));
            ignore (!stringBuffer#append (key));
            for i = 0 to !size - 1 do
                ignore (!stringBuffer#append (commonSeps#sPACE));
                ignore (!stringBuffer#append ((java_string_of (Obj.repr !keyArray.(i)))))
            done;
            ignore (!stringBuffer#append (sqlStrings#fROM));
            ignore (!stringBuffer#append ((self#getTableName ())));
            ignore (!stringBuffer#append (sqlStrings#wHERE));
            ignore (!stringBuffer#append (key));
            ignore (!stringBuffer#append (sqlStrings#eQUAL_QUOTE));
            ignore (!stringBuffer#append (value));
            ignore (!stringBuffer#append (sqlStrings#cLOSE_QUOTE));
            let sqlStatement : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
            let rset : Obj.t ref = ref ((Obj.repr (self#executeSQLStatement (!sqlStatement)))) in ();
            let columnName : string ref = ref ("") in ();
            let field : string ref = ref ("") in ();
            while ((Obj.magic !rset)#next ()) do
                let keyArray2 : Obj.t array ref = ref (((columnsAndValues#keySet ())#toArray ())) in ();
                let size2 : int ref = ref ((Array.length !keyArray2)) in ();
                for i = 0 to !size2 - 1 do
                    columnName := (java_string_of (Obj.repr !keyArray2.(i)));
                    field := (java_string_of (Obj.repr ((Obj.magic !rset)#getObject (!columnName))));
                    if ((String.compare !field ((Obj.magic (columnsAndValues#get (!columnName))))) != 0) then begin
                        raise (Java_return (Obj.repr ((org.get_allbinary ())#globals#gLOBALS2#nOTASUBSET)))
                    end
                done
            done;
            if (((Obj.magic !rset)#getRow ()) != 1) then begin
                raise (Java_return (Obj.repr ((org.get_allbinary ())#globals#gLOBALS2#nOTASUBSET)))
            end else begin
                raise (Java_return (Obj.repr ((org.get_allbinary ())#globals#gLOBALS2#iSASUBSET)))
            end
        with e -> begin
            let sqlStatement : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((java_string_of (Obj.repr (fAILED_SQL_STATEMENT)) ^ !sqlStatement), self, mETHOD_IS_SUBSET_OF_ENTRY, e))
            end;
            (java_string_of (Obj.repr (fAILED_SQL_STATEMENT)) ^ !sqlStatement)
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        mETHOD_GET_FIELD <- "getField";
        mETHOD_IS_SUBSET_OF_ENTRY <- "isSubsetOfEntry";
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AbSqlBean" (fun arguments -> Obj.repr (new abSqlBean (Obj.obj arguments)))


