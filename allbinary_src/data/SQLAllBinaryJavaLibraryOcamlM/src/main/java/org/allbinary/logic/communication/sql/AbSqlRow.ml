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
(* import java.sql.ResultSetMetaData *)
(* import java.util.HashMap *)
(* import java.util.Set *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.init.db.DbConnectionInfo *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.string.regex.replace.Replace *)

class abSqlRow ((databaseConnectionInfoInterface : DbConnectionInfo.dbConnectionInfo)) =
  object (self)
    inherit AbSqlColumn.abSqlColumn (databaseConnectionInfoInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable eQUAL_QUOTE : string = ""
    method eQUAL_QUOTE = eQUAL_QUOTE
    method set_eQUAL_QUOTE value' = eQUAL_QUOTE <- value'
    val mutable eSCAPE_QUOTES : string = ""
    method eSCAPE_QUOTES = eSCAPE_QUOTES
    method set_eSCAPE_QUOTES value' = eSCAPE_QUOTES <- value'
    val mutable gET_ROW : string = ""
    method gET_ROW = gET_ROW
    method set_gET_ROW value' = gET_ROW <- value'
    val mutable mETHOD_GET_ROW : string = ""
    method mETHOD_GET_ROW = mETHOD_GET_ROW
    method set_mETHOD_GET_ROW value' = mETHOD_GET_ROW <- value'
    val mutable mETHOD_GET_ROWS : string = ""
    method mETHOD_GET_ROWS = mETHOD_GET_ROWS
    method set_mETHOD_GET_ROWS value' = mETHOD_GET_ROWS <- value'
    val mutable mETHOD_GET_ALL_ROWS : string = ""
    method mETHOD_GET_ALL_ROWS = mETHOD_GET_ALL_ROWS
    method set_mETHOD_GET_ALL_ROWS value' = mETHOD_GET_ALL_ROWS <- value'
    val mutable mETHOD_UPDATE_WHERE : string = ""
    method mETHOD_UPDATE_WHERE = mETHOD_UPDATE_WHERE
    method set_mETHOD_UPDATE_WHERE value' = mETHOD_UPDATE_WHERE <- value'
    val mutable mETHOD_GET_ROWS_WHERE_BETWEEN : string = ""
    method mETHOD_GET_ROWS_WHERE_BETWEEN = mETHOD_GET_ROWS_WHERE_BETWEEN
    method set_mETHOD_GET_ROWS_WHERE_BETWEEN value' = mETHOD_GET_ROWS_WHERE_BETWEEN <- value'
    val mutable mETHOD_DELETE_WHERE : string = ""
    method mETHOD_DELETE_WHERE = mETHOD_DELETE_WHERE
    method set_mETHOD_DELETE_WHERE value' = mETHOD_DELETE_WHERE <- value'
    val mutable rOW_VALUE_LABEL : string = ""
    method rOW_VALUE_LABEL = rOW_VALUE_LABEL
    method set_rOW_VALUE_LABEL value' = rOW_VALUE_LABEL <- value'
    val mutable rOW_VALUES_LABEL : string = ""
    method rOW_VALUES_LABEL = rOW_VALUES_LABEL
    method set_rOW_VALUES_LABEL value' = rOW_VALUES_LABEL <- value'
    val mutable nO_RESULTS_IN_RESULT_SET : string = ""
    method nO_RESULTS_IN_RESULT_SET = nO_RESULTS_IN_RESULT_SET
    method set_nO_RESULTS_IN_RESULT_SET value' = nO_RESULTS_IN_RESULT_SET <- value'
    val mutable cOLUMN_NAME_LABEL : string = ""
    method cOLUMN_NAME_LABEL = cOLUMN_NAME_LABEL
    method set_cOLUMN_NAME_LABEL value' = cOLUMN_NAME_LABEL <- value'
    val mutable iNSERT_END : string = ""
    method iNSERT_END = iNSERT_END
    method set_iNSERT_END value' = iNSERT_END <- value'
    
    

    method getValue ((value : string)) : string =
        try
        begin
        if ((StringValidationUtil.getInstance ())#isEmpty (value)) then begin
            raise (Java_return (Obj.repr ((self#stringUtil)#eMPTY_STRING)))
        end else begin
            raise (Java_return (Obj.repr (value)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method updateWhere ((key : string), (value : string), (updatedKeyValuePairs : java_hash_map)) : unit =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((self#sqlStrings)#uPDATE));
        ignore (!stringBuffer#append ((self#getTableName ())));
        ignore (!stringBuffer#append ((self#sqlStrings)#sET));
        (try
            let keyArray : Obj.t array ref = ref (((updatedKeyValuePairs#keySet ())#toArray ())) in ();
            let size : int ref = ref ((Array.length !keyArray)) in ();
            for i = 0 to !size - 1 do
                let columnName : string ref = ref ((java_string_of (Obj.repr !keyArray.(i)))) in ();
                ignore (!stringBuffer#append ((self#commonSeps)#sPACE));
                ignore (!stringBuffer#append (!columnName));
                ignore (!stringBuffer#append (eQUAL_QUOTE));
                let columnValue : string ref = ref ((Obj.magic (updatedKeyValuePairs#get (!columnName)))) in ();
                if (!columnValue = (Obj.magic 0)) then begin
                    columnValue := (self#stringUtil)#eMPTY_STRING
                end else begin
                    columnValue := ((new Replace.replace ((self#sqlStrings)#cLOSE_QUOTE, eSCAPE_QUOTES))#all (!columnValue))
                end;
                ignore (!stringBuffer#append ((self#getValue (!columnValue))));
                ignore (!stringBuffer#append ((self#sqlStrings)#cLOSE_QUOTE));
                if (i < (!size - 1)) then begin
                    ignore (!stringBuffer#append ((self#commonSeps)#cOMMA))
                end
            done;
            ignore (!stringBuffer#append ((self#sqlStrings)#wHERE));
            ignore (!stringBuffer#append (key));
            ignore (!stringBuffer#append ((self#sqlStrings)#eQUAL_QUOTE));
            ignore (!stringBuffer#append ((self#getValue (value))));
            ignore (!stringBuffer#append ((self#sqlStrings)#cLOSE_QUOTE));
            let sqlStatement : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
            ignore (self#executeSQLStatement (!sqlStatement));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((self#sUCCESS_SQL_STATEMENT))) ^ !sqlStatement), self, mETHOD_UPDATE_WHERE))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put (((self#fAILED_SQL_STATEMENT) + !stringBuffer), self, mETHOD_UPDATE_WHERE, e))
            end
        end)
        end [@@warning "-7"]
    

    (* Java overload updateWhere(HashMap, HashMap) is not converted: OCaml has one method per name *)
    

    method deleteWhere ((key : string), (value : string)) : unit =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((self#sqlStrings)#dELETE));
        ignore (!stringBuffer#append ((self#sqlStrings)#fROM));
        ignore (!stringBuffer#append ((self#getTableName ())));
        ignore (!stringBuffer#append ((self#sqlStrings)#wHERE));
        ignore (!stringBuffer#append (key));
        ignore (!stringBuffer#append ((self#sqlStrings)#eQUAL_QUOTE));
        ignore (!stringBuffer#append (value));
        ignore (!stringBuffer#append ((self#sqlStrings)#cLOSE_QUOTE));
        (try
            let sqlStatement : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
            ignore (self#executeSQLStatement (!sqlStatement));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((self#sUCCESS_SQL_STATEMENT))) ^ !sqlStatement), self, mETHOD_DELETE_WHERE))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((java_string_of (Obj.repr ((self#fAILED_SQL_STATEMENT))) ^ (java_string_of (Obj.repr !stringBuffer))), self, mETHOD_DELETE_WHERE, e))
            end
        end)
        end [@@warning "-7"]
    

    (* Java overload deleteWhere(HashMap) is not converted: OCaml has one method per name *)
    

    method insert : 'any1. 'any1 -> unit = fun (values) ->
        let values = Obj.repr values in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((self#sqlStrings)#iNSERT_INTO));
        ignore (!stringBuffer#append ((self#getTableName ())));
        ignore (!stringBuffer#append ((self#sqlStrings)#vALUES));
        (try
            for i = 0 to (((Obj.magic values)#size ()) - 1) - 1 do
                let value : string ref = ref ((self#getValue ((Obj.magic ((Obj.magic values)#get (i)))))) in ();
                value := ((new Replace.replace ((self#sqlStrings)#eSCAPE, (self#sqlStrings)#dOUBLE_ESCAPE))#all (!value));
                ignore (!stringBuffer#append (!value));
                ignore (!stringBuffer#append ((self#sqlStrings)#sINGLE_QUOTE_COMMA_SEP))
            done;
            let value : string ref = ref ((self#getValue ((Obj.magic ((Obj.magic values)#get ((((Obj.magic values)#size ()) - 1))))))) in ();
            value := ((new Replace.replace ((self#sqlStrings)#eSCAPE, (self#sqlStrings)#dOUBLE_ESCAPE))#all (!value));
            ignore (!stringBuffer#append (!value));
            ignore (!stringBuffer#append (iNSERT_END));
            let sqlStatement : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
            ignore (self#executeSQLStatement (!sqlStatement));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((self#sUCCESS_SQL_STATEMENT))) ^ !sqlStatement), self, (self#iNSERT)))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((java_string_of (Obj.repr ((self#fAILED_SQL_STATEMENT))) ^ (java_string_of (Obj.repr !stringBuffer))), self, iNSERT, e))
            end
        end)
        end [@@warning "-7-20"]
    

    method getRow ((keysAndValues : java_hash_map)) : java_hash_map =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((self#sqlStrings)#sELECT_ALL_FROM));
        ignore (!stringBuffer#append ((self#getTableName ())));
        ignore (!stringBuffer#append ((self#sqlStrings)#wHERE));
        (try
            let result : java_hash_map ref = ref (((Obj.magic 0) :> java_hash_map)) in ();
            let set : Obj.t ref = ref ((Obj.repr (keysAndValues#keySet ()))) in ();
            let keyArray : Obj.t array ref = ref (((Obj.magic !set)#toArray ())) in ();
            let size : int ref = ref ((Array.length !keyArray)) in ();
            for index = 0 to !size - 1 do
                let key : string ref = ref ((Obj.magic !keyArray.(index))) in ();
                let value : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((Obj.magic (keysAndValues#get (!key)))))))) in ();
                ignore (!stringBuffer#append (!key));
                ignore (!stringBuffer#append ((self#sqlStrings)#eQUAL_QUOTE));
                ignore (!stringBuffer#append ((self#getValue (!value))));
                ignore (!stringBuffer#append ((self#sqlStrings)#cLOSE_QUOTE));
                if (index < (!size - 1)) then begin
                    ignore (!stringBuffer#append ((self#sqlStrings)#aND))
                end
            done;
            let sqlStatement : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((self#sqlStrings)#sQL_STATEMENT_LABEL)) ^ !sqlStatement), self, mETHOD_GET_ROW))
            end;
            let rset : Obj.t ref = ref ((Obj.repr (self#executeSQLStatement (!sqlStatement)))) in ();
            let resultSetMetaData : Obj.t ref = ref ((Obj.repr ((Obj.magic !rset)#getMetaData ()))) in ();
            while ((Obj.magic !rset)#next ()) do
                result := ((self#stdUtil)#createHashMap ());
                let columnCount : int ref = ref (((Obj.magic !resultSetMetaData)#getColumnCount ())) in ();
                for index = 1 to !columnCount do
                    let columnName : string ref = ref (((Obj.magic !resultSetMetaData)#getColumnName (index))) in ();
                    let field : string ref = ref (((Obj.magic !rset)#getString (!columnName))) in ();
                    ignore (!result#put (!columnName, !field))
                done;
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                    ignore ((Obj.magic logUtil)#putF ((rOW_VALUE_LABEL ^ (java_string_of (Obj.repr !result))), self, mETHOD_GET_ROW))
                end;
                (!result :> java_hash_map)
            done;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#putF (nO_RESULTS_IN_RESULT_SET, self, mETHOD_GET_ROW))
            end;
            ((Obj.magic 0) :> java_hash_map)
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put (((self#fAILED_SQL_STATEMENT) + !stringBuffer), self, mETHOD_GET_ROW, e))
            end;
            ((Obj.magic 0) :> java_hash_map)
        end)
        end [@@warning "-7"]
    

    method getRows ((keysAndValues : java_hash_map)) : BasicArrayList.basicArrayList =
        begin
        ((self#getRows (keysAndValues, (StringUtil.getInstance ())#eMPTY_STRING)) :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    (* Java overload getRows(HashMap, String) is not converted: OCaml has one method per name *)
    

    method getAllRows () : BasicArrayList.basicArrayList =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((self#sqlStrings)#sELECT_ALL_FROM));
        ignore (!stringBuffer#append ((self#getTableName ())));
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF (((self#sqlStrings)#sQL_STATEMENT_LABEL + !stringBuffer), self, mETHOD_GET_ALL_ROWS))
            end;
            let rows : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            let sqlStatement : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
            let rset : Obj.t ref = ref ((Obj.repr (self#executeSQLStatement (!sqlStatement)))) in ();
            let resultSetMetaData : Obj.t ref = ref ((Obj.repr ((Obj.magic !rset)#getMetaData ()))) in ();
            while ((Obj.magic !rset)#next ()) do
                let result : java_hash_map ref = ref ((((self#stdUtil)#createHashMap ()) :> java_hash_map)) in ();
                let columnCount : int ref = ref (((Obj.magic !resultSetMetaData)#getColumnCount ())) in ();
                for index = 1 to !columnCount do
                    let columnName : string ref = ref (((Obj.magic !resultSetMetaData)#getColumnName (index))) in ();
                    let field : string ref = ref (((Obj.magic !rset)#getString (!columnName))) in ();
                    ignore (!result#put (!columnName, !field))
                done;
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                    ignore ((Obj.magic logUtil)#putF ((rOW_VALUES_LABEL ^ (java_string_of (Obj.repr !result))), self, mETHOD_GET_ALL_ROWS))
                end;
                ignore (!rows#add (!result))
            done;
            (!rows :> BasicArrayList.basicArrayList)
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put (((self#fAILED_SQL_STATEMENT) + !stringBuffer), self, mETHOD_GET_ALL_ROWS, e))
            end;
            ((Obj.magic 0) :> BasicArrayList.basicArrayList)
        end)
        end [@@warning "-7"]
    

    method getRowsWhereBetween ((whereKeyValuePairs : java_hash_map), (betweenColumn : string), (smallest : string), (largest : string)) : BasicArrayList.basicArrayList =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((self#sqlStrings)#sELECT_ALL_FROM));
        ignore (!stringBuffer#append ((self#getTableName ())));
        (try
            let rows : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            ignore (!stringBuffer#append ((self#sqlStrings)#wHERE));
            let set : Obj.t ref = ref ((Obj.repr (whereKeyValuePairs#keySet ()))) in ();
            let key : string ref = ref ("") in ();
            let value : string ref = ref ("") in ();
            let keyArray : Obj.t array ref = ref (((Obj.magic !set)#toArray ())) in ();
            let size : int ref = ref ((Array.length !keyArray)) in ();
            for index = 0 to !size - 1 do
                key := (Obj.magic !keyArray.(index));
                value := (Obj.magic (whereKeyValuePairs#get (!key)));
                ignore (!stringBuffer#append (!key));
                ignore (!stringBuffer#append ((self#sqlStrings)#eQUAL_QUOTE));
                ignore (!stringBuffer#append ((self#getValue (!value))));
                ignore (!stringBuffer#append ((self#sqlStrings)#cLOSE_QUOTE));
                ignore (!stringBuffer#append ((self#sqlStrings)#aND))
            done;
            ignore (!stringBuffer#append (betweenColumn));
            ignore (!stringBuffer#append ((self#sqlStrings)#mORE_THAN_QUOTE));
            ignore (!stringBuffer#append (smallest));
            ignore (!stringBuffer#append ((self#sqlStrings)#cLOSE_QUOTE));
            ignore (!stringBuffer#append ((self#sqlStrings)#aND));
            ignore (!stringBuffer#append (betweenColumn));
            ignore (!stringBuffer#append ((self#sqlStrings)#lESS_THAN_QUOTE));
            ignore (!stringBuffer#append (largest));
            ignore (!stringBuffer#append ((self#sqlStrings)#cLOSE_QUOTE));
            let sqlStatement : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((self#sqlStrings)#sQL_STATEMENT_LABEL)) ^ !sqlStatement), self, mETHOD_GET_ROWS_WHERE_BETWEEN))
            end;
            let rset : Obj.t ref = ref ((Obj.repr (self#executeSQLStatement (!sqlStatement)))) in ();
            let resultSetMetaData : Obj.t ref = ref ((Obj.repr ((Obj.magic !rset)#getMetaData ()))) in ();
            let result : java_hash_map ref = ref (((Obj.magic 0) :> java_hash_map)) in ();
            let columnNames : BasicArrayList.basicArrayList ref = ref (((Obj.magic 0) :> BasicArrayList.basicArrayList)) in ();
            let columnCount : int ref = ref (0) in ();
            let columnName : string ref = ref ("") in ();
            let field : string ref = ref ("") in ();
            while ((Obj.magic !rset)#next ()) do
                result := ((self#stdUtil)#createHashMap ());
                columnNames := (new BasicArrayListD.basicArrayListD ());
                columnCount := ((Obj.magic !resultSetMetaData)#getColumnCount ());
                for index = 1 to !columnCount do
                    columnName := ((Obj.magic !resultSetMetaData)#getColumnName (index));
                    field := ((Obj.magic !rset)#getString (!columnName));
                    ignore (!result#put (!columnName, !field))
                done;
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                    ignore ((Obj.magic logUtil)#putF ((rOW_VALUE_LABEL ^ (java_string_of (Obj.repr !result))), self, mETHOD_GET_ROWS_WHERE_BETWEEN))
                end;
                ignore (!rows#add (!result))
            done;
            (!rows :> BasicArrayList.basicArrayList)
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put (((self#fAILED_SQL_STATEMENT) + !stringBuffer), self, mETHOD_GET_ROWS_WHERE_BETWEEN, e))
            end;
            ((Obj.magic 0) :> BasicArrayList.basicArrayList)
        end)
        end [@@warning "-7"]
    

    (* Java overload getRowsWhereBetween(String, String, String) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        eQUAL_QUOTE <- "=\"";
        eSCAPE_QUOTES <- "\\\"";
        gET_ROW <- "Row Value: ";
        mETHOD_GET_ROW <- "getRow()";
        mETHOD_GET_ROWS <- "getRows()";
        mETHOD_GET_ALL_ROWS <- "getAllRows()";
        mETHOD_UPDATE_WHERE <- "updateWhere()";
        mETHOD_GET_ROWS_WHERE_BETWEEN <- "getRowsWhereBetween()";
        mETHOD_DELETE_WHERE <- "deleteWhere()";
        rOW_VALUE_LABEL <- "Row Value: ";
        rOW_VALUES_LABEL <- "Row Values: ";
        nO_RESULTS_IN_RESULT_SET <- "No Results in ResultSet";
        cOLUMN_NAME_LABEL <- "columnName: ";
        iNSERT_END <- "')";
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AbSqlRow" (fun arguments -> Obj.repr (new abSqlRow (Obj.obj arguments)))


