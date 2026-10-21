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
(* package org.allbinary.business.init *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.sql.Connection *)
(* import java.sql.DriverManager *)
(* import java.sql.ResultSet *)
(* import java.sql.ResultSetMetaData *)
(* import java.sql.SQLException *)
(* import java.sql.Statement *)
(* import java.util.HashMap *)
(* import java.util.Set *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.init.db.DatabaseConnectionInfoInterface *)
(* import org.allbinary.business.init.db.DbConnectionInfo *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory *)
(* import org.allbinary.logic.communication.log.config.type.LogConfigTypes *)
(* import org.allbinary.logic.communication.sql.SqlStrings *)
(* import org.allbinary.logic.communication.sql.SqlTypeStrings *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)

class initSql ((databaseConnectionInfoInterface_arg : DbConnectionInfo.dbConnectionInfo)) =
  object (self)
    val mutable stringUtil : StringUtil.stringUtil = (Obj.magic 0)
    method stringUtil = stringUtil
    method set_stringUtil value' = stringUtil <- value'
    val mutable commonSeps : CommonSeps.commonSeps = (Obj.magic 0)
    method commonSeps = commonSeps
    method set_commonSeps value' = commonSeps <- value'
    val mutable sqlTypeStrings : SqlTypeStrings.sqlTypeStrings = (Obj.magic 0)
    method sqlTypeStrings = sqlTypeStrings
    method set_sqlTypeStrings value' = sqlTypeStrings <- value'
    val mutable sqlStrings : SqlStrings.sqlStrings = (Obj.magic 0)
    method sqlStrings = sqlStrings
    method set_sqlStrings value' = sqlStrings <- value'
    val mutable stdUtil : Obj.t = Obj.repr 0
    method stdUtil : 'r. 'r = Obj.magic stdUtil
    method set_stdUtil : 'v. 'v -> unit = fun value' -> stdUtil <- Obj.repr value'
    val mutable iNSERT : string = ""
    method iNSERT = iNSERT
    method set_iNSERT value' = iNSERT <- value'
    val mutable uPDATE : string = ""
    method uPDATE = uPDATE
    method set_uPDATE value' = uPDATE <- value'
    val mutable databaseConnectionInfoInterface : DbConnectionInfo.dbConnectionInfo = (Obj.magic 0)
    method databaseConnectionInfoInterface = databaseConnectionInfoInterface
    method set_databaseConnectionInfoInterface value' = databaseConnectionInfoInterface <- value'
    val mutable userid : string = ""
    method userid = userid
    method set_userid value' = userid <- value'
    val mutable password : string = ""
    method password = password
    method set_password value' = password <- value'
    val mutable tableName : string = ""
    method tableName = tableName
    method set_tableName value' = tableName <- value'
    val mutable conn : Obj.t = Obj.repr 0
    method conn : 'r. 'r = Obj.magic conn
    method set_conn : 'v. 'v -> unit = fun value' -> conn <- Obj.repr value'
    val mutable useridAndPassword : bool = false
    method useridAndPassword = useridAndPassword
    method set_useridAndPassword value' = useridAndPassword <- value'
    val mutable sUCCESS_SQL_STATEMENT : string = ""
    method sUCCESS_SQL_STATEMENT = sUCCESS_SQL_STATEMENT
    method set_sUCCESS_SQL_STATEMENT value' = sUCCESS_SQL_STATEMENT <- value'
    val mutable fAILED_SQL_STATEMENT : string = ""
    method fAILED_SQL_STATEMENT = fAILED_SQL_STATEMENT
    method set_fAILED_SQL_STATEMENT value' = fAILED_SQL_STATEMENT <- value'
    val mutable iNIT_SQL : string = ""
    method iNIT_SQL = iNIT_SQL
    method set_iNIT_SQL value' = iNIT_SQL <- value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable eQUAL_QUOTE : string = ""
    method eQUAL_QUOTE = eQUAL_QUOTE
    method set_eQUAL_QUOTE value' = eQUAL_QUOTE <- value'
    val mutable mETHOD_GET_ROW : string = ""
    method mETHOD_GET_ROW = mETHOD_GET_ROW
    method set_mETHOD_GET_ROW value' = mETHOD_GET_ROW <- value'
    val mutable mETHOD_UPDATE_WHERE : string = ""
    method mETHOD_UPDATE_WHERE = mETHOD_UPDATE_WHERE
    method set_mETHOD_UPDATE_WHERE value' = mETHOD_UPDATE_WHERE <- value'
    val mutable rOW_VALUE_LABEL : string = ""
    method rOW_VALUE_LABEL = rOW_VALUE_LABEL
    method set_rOW_VALUE_LABEL value' = rOW_VALUE_LABEL <- value'
    val mutable nO_RESULTS_IN_RESULT_SET : string = ""
    method nO_RESULTS_IN_RESULT_SET = nO_RESULTS_IN_RESULT_SET
    method set_nO_RESULTS_IN_RESULT_SET value' = nO_RESULTS_IN_RESULT_SET <- value'
    val mutable iNSERT_END : string = ""
    method iNSERT_END = iNSERT_END
    method set_iNSERT_END value' = iNSERT_END <- value'
    
    

    method setTable ((tableName_arg : string)) : unit =
        begin
        tableName <- tableName_arg
        end
    

    method setDatabaseConnectionInfoInterface : 'any1. 'any1 -> unit = fun (databaseConnectionInfoInterface_arg) ->
        let databaseConnectionInfoInterface_arg = Obj.repr databaseConnectionInfoInterface_arg in
        begin
        databaseConnectionInfoInterface <- (Obj.magic databaseConnectionInfoInterface_arg)
        end [@@warning "-20"]
    

    method createTable ((tableData : string)) : bool =
        begin
        (try
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("Creating Table: "));
            ignore (!stringBuffer#append (tableData));
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr !stringBuffer)), iNIT_SQL, "createTable()"))));
            ignore (self#executeSQLStatement (tableData));
            true
        with e -> begin
            if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#sQLLOGGINGERROR)) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (commonStrings#eXCEPTION, iNIT_SQL, "createTable()", e))))
            end;
            false
        end)
        end
    

    method dropTable () : bool =
        begin
        let sqlStatement : string ref = ref ((java_string_of (Obj.repr (sqlStrings#dROP_TABLE)) ^ tableName)) in ();
        (try
            ignore (self#executeSQLStatement (!sqlStatement));
            true
        with e -> begin
            if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#sQLLOGGINGERROR)) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (commonStrings#eXCEPTION, iNIT_SQL, "dropTables()", e))))
            end;
            false
        end)
        end
    

    method getRow ((keysAndValues : java_hash_map)) : java_hash_map =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (sqlStrings#sELECT_ALL_FROM));
        ignore (!stringBuffer#append (tableName));
        ignore (!stringBuffer#append (sqlStrings#wHERE));
        (try
            let result : java_hash_map ref = ref (((Obj.magic 0) :> java_hash_map)) in ();
            let set : Obj.t ref = ref ((Obj.repr (keysAndValues#keySet ()))) in ();
            let keyArray : Obj.t array ref = ref (((Obj.magic !set)#toArray ())) in ();
            let size : int ref = ref ((Array.length !keyArray)) in ();
            for i = 0 to !size - 1 do
                let key : string ref = ref ((Obj.magic !keyArray.(i))) in ();
                let value : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((Obj.magic (keysAndValues#get (!key)))))))) in ();
                ignore (!stringBuffer#append (!key));
                ignore (!stringBuffer#append (sqlStrings#eQUAL_QUOTE));
                ignore (!stringBuffer#append ((self#getValue (!value))));
                ignore (!stringBuffer#append (sqlStrings#cLOSE_QUOTE));
                if (i < (!size - 1)) then begin
                    ignore (!stringBuffer#append (sqlStrings#aND))
                end
            done;
            let sqlStatement : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (sqlStrings#sQL_STATEMENT_LABEL)) ^ !sqlStatement), iNIT_SQL, mETHOD_GET_ROW))))
            end;
            let rset : Obj.t ref = ref ((Obj.repr (self#executeSQLStatement (!sqlStatement)))) in ();
            let resultSetMetaData : Obj.t ref = ref ((Obj.repr ((Obj.magic !rset)#getMetaData ()))) in ();
            while ((Obj.magic !rset)#next ()) do
                result := ((Obj.magic stdUtil)#createHashMap ());
                let columnCount : int ref = ref (((Obj.magic !resultSetMetaData)#getColumnCount ())) in ();
                for index = 1 to !columnCount do
                    let columnName : string ref = ref (((Obj.magic !resultSetMetaData)#getColumnName (index))) in ();
                    let field : string ref = ref (((Obj.magic !rset)#getString (!columnName))) in ();
                    ignore (!result#put (!columnName, !field))
                done;
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                    ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((rOW_VALUE_LABEL ^ (java_string_of (Obj.repr !result))), iNIT_SQL, mETHOD_GET_ROW))))
                end;
                (!result :> java_hash_map)
            done;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (nO_RESULTS_IN_RESULT_SET, iNIT_SQL, mETHOD_GET_ROW))))
            end;
            ((Obj.magic 0) :> java_hash_map)
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr ((fAILED_SQL_STATEMENT ^ java_string_of (Obj.repr (!stringBuffer))), iNIT_SQL, mETHOD_GET_ROW, e))))
            end;
            ((Obj.magic 0) :> java_hash_map)
        end)
        end
    

    method updateWhere ((key : string), (value : string), (updatedKeyValuePairs : java_hash_map)) : unit =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (sqlStrings#uPDATE));
        ignore (!stringBuffer#append (tableName));
        ignore (!stringBuffer#append (sqlStrings#sET));
        (try
            let columnArray : Obj.t array ref = ref (((updatedKeyValuePairs#keySet ())#toArray ())) in ();
            let size : int ref = ref ((Array.length !columnArray)) in ();
            for i = 0 to !size - 1 do
                let columnName : string ref = ref ((java_string_of (Obj.repr !columnArray.(i)))) in ();
                ignore (!stringBuffer#append (commonSeps#sPACE));
                ignore (!stringBuffer#append (!columnName));
                ignore (!stringBuffer#append (eQUAL_QUOTE));
                let columnValue : string ref = ref ((Obj.magic (updatedKeyValuePairs#get (!columnName)))) in ();
                if (!columnValue = (Obj.magic 0)) then begin
                    columnValue := stringUtil#eMPTY_STRING
                end else begin
                    ()
                end;
                ignore (!stringBuffer#append ((self#getValue (!columnValue))));
                ignore (!stringBuffer#append (sqlStrings#cLOSE_QUOTE));
                if (i < (!size - 1)) then begin
                    ignore (!stringBuffer#append (commonSeps#cOMMA))
                end
            done;
            ignore (!stringBuffer#append (sqlStrings#wHERE));
            ignore (!stringBuffer#append (key));
            ignore (!stringBuffer#append (sqlStrings#eQUAL_QUOTE));
            ignore (!stringBuffer#append ((self#getValue (value))));
            ignore (!stringBuffer#append (sqlStrings#cLOSE_QUOTE));
            let sqlStatement : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
            ignore (self#executeSQLStatement (!sqlStatement));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((sUCCESS_SQL_STATEMENT ^ !sqlStatement), iNIT_SQL, mETHOD_UPDATE_WHERE))))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr ((fAILED_SQL_STATEMENT ^ java_string_of (Obj.repr (!stringBuffer))), iNIT_SQL, mETHOD_UPDATE_WHERE, e))))
            end
        end)
        end
    

    method insert : 'any1. 'any1 -> unit = fun (values) ->
        let values = Obj.repr values in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (sqlStrings#iNSERT_INTO));
        ignore (!stringBuffer#append (tableName));
        ignore (!stringBuffer#append (sqlStrings#vALUES));
        (try
            let size : int ref = ref (((Obj.magic values)#size ())) in ();
            for i = 0 to (!size - 1) - 1 do
                let value : string ref = ref ((self#getValue ((Obj.magic ((Obj.magic values)#get (i)))))) in ();
                ignore (!stringBuffer#append (!value));
                ignore (!stringBuffer#append (sqlStrings#sINGLE_QUOTE_COMMA_SEP))
            done;
            let value : string ref = ref ((self#getValue ((Obj.magic ((Obj.magic values)#get ((((Obj.magic values)#size ()) - 1))))))) in ();
            ignore (!stringBuffer#append (!value));
            ignore (!stringBuffer#append (iNSERT_END));
            let sqlStatement : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
            ignore (self#executeSQLStatement (!sqlStatement));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((sUCCESS_SQL_STATEMENT ^ !sqlStatement), iNIT_SQL, iNSERT))))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr ((fAILED_SQL_STATEMENT ^ (java_string_of (Obj.repr !stringBuffer))), iNIT_SQL, iNSERT, e))))
            end
        end)
        end [@@warning "-20"]
    

    method getValue ((value : string)) : string =
        try
        begin
        if ((StringValidationUtil.getInstance ())#isEmpty (value)) then begin
            raise (Java_return (Obj.repr (stringUtil#eMPTY_STRING)))
        end else begin
            raise (Java_return (Obj.repr (value)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method executeSQLStatement : 'return. string -> 'return = fun ((statement : string)) ->
        begin
        (try
            if ((Obj.magic conn) == (Obj.magic 0)) then begin
                (self#initialize ())
            end;
            let stmt : Obj.t ref = ref ((Obj.repr ((Obj.magic conn)#createStatement ()))) in ();
            ignore ((Obj.magic !stmt)#execute (statement));
            let rset : Obj.t ref = ref ((Obj.repr ((Obj.magic !stmt)#getResultSet ()))) in ();
            ignore ((Obj.magic !stmt)#close ());
            (Obj.magic ((Obj.magic !rset)))
        with e -> begin
            if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#sQLLOGGINGERROR)) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (commonStrings#eXCEPTION, iNIT_SQL, "executeSQLStatement()", e))))
            end;
            raise e
        end)
        end
    

    method createConnection () : unit =
        begin
        (try
            if (useridAndPassword = true) then begin
                conn <- Obj.repr ((DriverManager.getConnection ((databaseConnectionInfoInterface#getUrl ()), userid, password)))
            end else begin
                conn <- Obj.repr ((DriverManager.getConnection ((databaseConnectionInfoInterface#getUrl ()))))
            end
        with se -> begin
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (commonStrings#eXCEPTION, iNIT_SQL, "createConnection()", se))));
            raise se
        end)
        end
    

    method initialize () : unit =
        begin
        (try
            (try
                let jdbcDriver : string ref = ref ((databaseConnectionInfoInterface#getJdbcDriver ())) in ();
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append ("Loading DbConnnectionInfo: "))#append ((java_get_class (Obj.repr databaseConnectionInfoInterface))))#append (" Driver: "))#append (!jdbcDriver)))), iNIT_SQL, "initialize()"))));
                ignore ((Obj.magic (java_call_static "Class.forName" (Obj.repr (!jdbcDriver))))#newInstance ())
            with e -> begin
                if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#sQLLOGGINGERROR)) then begin
                    ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (("LoadDriver Failed: " ^ java_string_of (Obj.repr ((databaseConnectionInfoInterface#getJdbcDriver ())))), iNIT_SQL, "initialize()", e))))
                end;
                raise e
            end);
            if ((userid = (Obj.magic 0)) && (password = (Obj.magic 0))) then begin
                useridAndPassword <- true
            end;
            (self#createConnection ())
        with se -> begin
            if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#sQLLOGGINGERROR)) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (commonStrings#eXCEPTION, iNIT_SQL, "initialize()", se))))
            end;
            raise se
        end)
        end
    

    method getDatabaseConnectionInfoInterface () : DatabaseConnectionInfoInterface.databaseConnectionInfoInterface =
        begin
        (databaseConnectionInfoInterface :> DatabaseConnectionInfoInterface.databaseConnectionInfoInterface)
        end

    initializer
      begin
        stringUtil <- ((StringUtil.getInstance ()) :> StringUtil.stringUtil);
        commonSeps <- ((CommonSeps.getInstance ()) :> CommonSeps.commonSeps);
        sqlTypeStrings <- ((SqlTypeStrings.getInstance ()) :> SqlTypeStrings.sqlTypeStrings);
        sqlStrings <- ((SqlStrings.getInstance ()) :> SqlStrings.sqlStrings);
        stdUtil <- (Obj.repr (Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ()))));
        iNSERT <- "insert";
        uPDATE <- "update";
        databaseConnectionInfoInterface <- ((Obj.magic 0) :> DbConnectionInfo.dbConnectionInfo);
        userid <- "";
        password <- "";
        tableName <- "";
        conn <- (Obj.repr (Obj.magic 0));
        useridAndPassword <- false;
        sUCCESS_SQL_STATEMENT <- "Success\nSQL Statement: ";
        fAILED_SQL_STATEMENT <- "Failed\nSQL Statement: ";
        iNIT_SQL <- "InitSql";
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        eQUAL_QUOTE <- "=\"";
        mETHOD_GET_ROW <- "getRow()";
        mETHOD_UPDATE_WHERE <- "updateWhere()";
        rOW_VALUE_LABEL <- "Row Value: ";
        nO_RESULTS_IN_RESULT_SET <- "No Results in ResultSet";
        iNSERT_END <- "')";
        ();
        (self#setDatabaseConnectionInfoInterface (databaseConnectionInfoInterface_arg))
      end
  end [@@warning "-20"]
let () = java_register_constructor "InitSql" (fun arguments -> Obj.repr (new initSql (Obj.obj arguments)))


