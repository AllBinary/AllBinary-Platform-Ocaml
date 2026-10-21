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
(* import java.sql.Connection *)
(* import java.sql.ResultSet *)
(* import java.sql.SQLException *)
(* import java.sql.Statement *)
(* import org.allbinary.business.init.db.DatabaseConnectionInfoInterface *)
(* import org.allbinary.business.init.db.DbConnectionInfo *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)

class abSqlBasic ((databaseConnectionInfoInterface_arg : DbConnectionInfo.dbConnectionInfo)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable sqlConnectionPool : SqlConnectionPool.sqlConnectionPool = (Obj.magic 0)
    method sqlConnectionPool = sqlConnectionPool
    method set_sqlConnectionPool value' = sqlConnectionPool <- value'
    val mutable databaseConnectionInfoInterface : DbConnectionInfo.dbConnectionInfo = (Obj.magic 0)
    method databaseConnectionInfoInterface = databaseConnectionInfoInterface
    method set_databaseConnectionInfoInterface value' = databaseConnectionInfoInterface <- value'
    val mutable connectAttemptCounter : int = 0
    method connectAttemptCounter = connectAttemptCounter
    method set_connectAttemptCounter value' = connectAttemptCounter <- value'
    val mutable conn : Obj.t = Obj.repr 0
    method conn : 'r. 'r = Obj.magic conn
    method set_conn : 'v. 'v -> unit = fun value' -> conn <- Obj.repr value'
    val mutable stringUtil : StringUtil.stringUtil = (Obj.magic 0)
    method stringUtil = stringUtil
    method set_stringUtil value' = stringUtil <- value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable commonSeps : CommonSeps.commonSeps = (Obj.magic 0)
    method commonSeps = commonSeps
    method set_commonSeps value' = commonSeps <- value'
    val mutable stdUtil : Obj.t = Obj.repr 0
    method stdUtil : 'r. 'r = Obj.magic stdUtil
    method set_stdUtil : 'v. 'v -> unit = fun value' -> stdUtil <- Obj.repr value'
    val mutable sqlTypeStrings : SqlTypeStrings.sqlTypeStrings = (Obj.magic 0)
    method sqlTypeStrings = sqlTypeStrings
    method set_sqlTypeStrings value' = sqlTypeStrings <- value'
    val mutable sqlStrings : SqlStrings.sqlStrings = (Obj.magic 0)
    method sqlStrings = sqlStrings
    method set_sqlStrings value' = sqlStrings <- value'
    val mutable iNSERT : string = ""
    method iNSERT = iNSERT
    method set_iNSERT value' = iNSERT <- value'
    val mutable uPDATE : string = ""
    method uPDATE = uPDATE
    method set_uPDATE value' = uPDATE <- value'
    val mutable fAILED_SQL_STATEMENT : string = ""
    method fAILED_SQL_STATEMENT = fAILED_SQL_STATEMENT
    method set_fAILED_SQL_STATEMENT value' = fAILED_SQL_STATEMENT <- value'
    val mutable sUCCESS_SQL_STATEMENT : string = ""
    method sUCCESS_SQL_STATEMENT = sUCCESS_SQL_STATEMENT
    method set_sUCCESS_SQL_STATEMENT value' = sUCCESS_SQL_STATEMENT <- value'
    val mutable mETHOD_EXECUTED_SQL_STATEMENT : string = ""
    method mETHOD_EXECUTED_SQL_STATEMENT = mETHOD_EXECUTED_SQL_STATEMENT
    method set_mETHOD_EXECUTED_SQL_STATEMENT value' = mETHOD_EXECUTED_SQL_STATEMENT <- value'
    val mutable mETHOD_CREATE : string = ""
    method mETHOD_CREATE = mETHOD_CREATE
    method set_mETHOD_CREATE value' = mETHOD_CREATE <- value'
    val mutable dATABASE_CREATED_LABEL : string = ""
    method dATABASE_CREATED_LABEL = dATABASE_CREATED_LABEL
    method set_dATABASE_CREATED_LABEL value' = dATABASE_CREATED_LABEL <- value'
    val mutable dATABASE_CREATION_FAILED_LABEL : string = ""
    method dATABASE_CREATION_FAILED_LABEL = dATABASE_CREATION_FAILED_LABEL
    method set_dATABASE_CREATION_FAILED_LABEL value' = dATABASE_CREATION_FAILED_LABEL <- value'
    val mutable sQL_CONNECTION_FAILED : string = ""
    method sQL_CONNECTION_FAILED = sQL_CONNECTION_FAILED
    method set_sQL_CONNECTION_FAILED value' = sQL_CONNECTION_FAILED <- value'
    val mutable sQL_CONNECTION_RETRYING : string = ""
    method sQL_CONNECTION_RETRYING = sQL_CONNECTION_RETRYING
    method set_sQL_CONNECTION_RETRYING value' = sQL_CONNECTION_RETRYING <- value'
    val mutable sQL_CONNECTION_RETRY : string = ""
    method sQL_CONNECTION_RETRY = sQL_CONNECTION_RETRY
    method set_sQL_CONNECTION_RETRY value' = sQL_CONNECTION_RETRY <- value'
    val mutable mETHOD_CREATE_CONNECTION : string = ""
    method mETHOD_CREATE_CONNECTION = mETHOD_CREATE_CONNECTION
    method set_mETHOD_CREATE_CONNECTION value' = mETHOD_CREATE_CONNECTION <- value'
    val mutable mETHOD_INITIALIZE : string = ""
    method mETHOD_INITIALIZE = mETHOD_INITIALIZE
    method set_mETHOD_INITIALIZE value' = mETHOD_INITIALIZE <- value'
    val mutable lOAD_JDBC_DRIVER_FAILED_LABEL : string = ""
    method lOAD_JDBC_DRIVER_FAILED_LABEL = lOAD_JDBC_DRIVER_FAILED_LABEL
    method set_lOAD_JDBC_DRIVER_FAILED_LABEL value' = lOAD_JDBC_DRIVER_FAILED_LABEL <- value'
    
    

    method executeSQLStatement : 'return. string -> 'return = fun ((statement : string)) ->
        begin
        (try
            (self#initialize ());
            let stmt : Obj.t ref = ref ((Obj.repr ((Obj.magic conn)#createStatement ()))) in ();
            ignore ((Obj.magic !stmt)#execute (statement));
            let rset : Obj.t ref = ref ((Obj.repr ((Obj.magic !stmt)#getResultSet ()))) in ();
            ignore ((Obj.magic !stmt)#close ());
            let tempConnection : Obj.t ref = ref ((Obj.repr (Obj.magic conn))) in ();
            conn <- Obj.repr ((Obj.magic 0));
            ignore (sqlConnectionPool#add (((self#getDatabaseConnectionInfoInterface ())#getUrl ()), (Obj.magic !tempConnection)));
            (Obj.magic ((Obj.magic !rset)))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((fAILED_SQL_STATEMENT ^ statement), self, mETHOD_EXECUTED_SQL_STATEMENT, e))
            end;
            ignore ((Obj.magic conn)#close ());
            conn <- Obj.repr ((Obj.magic 0));
            raise e
        end)
        end
    

    method create ((databaseName : string)) : string =
        begin
        (try
            ignore (self#executeSQLStatement ((java_string_of (Obj.repr (sqlStrings#cREATE_DATABASE)) ^ databaseName)));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ((dATABASE_CREATED_LABEL ^ databaseName), self, mETHOD_CREATE))
            end;
            (databaseName ^ java_string_of (Obj.repr (sqlStrings#cREATE_RETURN)))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((dATABASE_CREATION_FAILED_LABEL ^ databaseName), self, mETHOD_CREATE, e))
            end;
            (dATABASE_CREATION_FAILED_LABEL ^ databaseName)
        end)
        end
    

    method createConnection () : unit =
        begin
        (try
            conn <- Obj.repr ((sqlConnectionPool#get (((self#getDatabaseConnectionInfoInterface ())#getUrl ()))))
        with se -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put (sQL_CONNECTION_RETRYING, self, mETHOD_CREATE_CONNECTION, se))
            end;
            (try
                ignore ((Obj.magic (java_call_static "Thread.currentThread" (Obj.repr ())))#sleep (2000));
                if (connectAttemptCounter < 10) then begin
                    connectAttemptCounter <- connectAttemptCounter + 1;
                    (self#initialize ())
                end
            with e -> begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                    ignore ((Obj.magic logUtil)#put ((sQL_CONNECTION_RETRY ^ (Printexc.to_string se)), self, mETHOD_CREATE_CONNECTION, e))
                end
            end)
        end)
        end
    

    method initialize () : unit =
        begin
        (try
            begin
                (try
                    let loader : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "Thread.currentThread" (Obj.repr ())))#getContextClassLoader ()))) in ();
                    let jdbcDriverClass : string ref = ref (((Obj.magic !loader)#loadClass (((self#getDatabaseConnectionInfoInterface ())#getJdbcDriver ())))) in ();
                    ignore (!jdbcDriverClass#newInstance ())
                with e -> begin
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                        ignore ((Obj.magic logUtil)#put ((lOAD_JDBC_DRIVER_FAILED_LABEL ^ java_string_of (Obj.repr (((self#getDatabaseConnectionInfoInterface ())#getJdbcDriver ())))), self, mETHOD_INITIALIZE, e))
                    end
                end)
            end;
            (self#createConnection ())
        with se -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put (sQL_CONNECTION_FAILED, self, mETHOD_INITIALIZE, se))
            end
        end)
        end
    

    method getDatabaseConnectionInfoInterface () : DatabaseConnectionInfoInterface.databaseConnectionInfoInterface =
        begin
        (databaseConnectionInfoInterface :> DatabaseConnectionInfoInterface.databaseConnectionInfoInterface)
        end
    

    method setDatabaseConnectionInfoInterface : 'any1. 'any1 -> unit = fun (databaseConnectionInfoInterface_arg) ->
        let databaseConnectionInfoInterface_arg = Obj.repr databaseConnectionInfoInterface_arg in
        begin
        databaseConnectionInfoInterface <- (Obj.magic databaseConnectionInfoInterface_arg)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        sqlConnectionPool <- ((SqlConnectionPool.getInstance ()) :> SqlConnectionPool.sqlConnectionPool);
        ();
        ();
        ();
        stringUtil <- ((StringUtil.getInstance ()) :> StringUtil.stringUtil);
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        commonSeps <- ((CommonSeps.getInstance ()) :> CommonSeps.commonSeps);
        stdUtil <- (Obj.repr (Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ()))));
        sqlTypeStrings <- ((SqlTypeStrings.getInstance ()) :> SqlTypeStrings.sqlTypeStrings);
        sqlStrings <- ((SqlStrings.getInstance ()) :> SqlStrings.sqlStrings);
        iNSERT <- "insert";
        uPDATE <- "update";
        fAILED_SQL_STATEMENT <- "Failed\nSQL Statement: ";
        sUCCESS_SQL_STATEMENT <- "Success\nSQL Statement: ";
        mETHOD_EXECUTED_SQL_STATEMENT <- "executedSQLStatement";
        mETHOD_CREATE <- "create";
        dATABASE_CREATED_LABEL <- "Database Created: ";
        dATABASE_CREATION_FAILED_LABEL <- "Database Creation Failed: ";
        sQL_CONNECTION_FAILED <- "SQL Connection Failed";
        sQL_CONNECTION_RETRYING <- "SQL Connection Retrying";
        sQL_CONNECTION_RETRY <- "SQL Connection Retry";
        mETHOD_CREATE_CONNECTION <- "createConnection()";
        mETHOD_INITIALIZE <- "initialize";
        lOAD_JDBC_DRIVER_FAILED_LABEL <- "Load JDBC Driver Failed: ";
        ();
        databaseConnectionInfoInterface <- databaseConnectionInfoInterface_arg;
        connectAttemptCounter <- 0;
        conn <- Obj.repr ((Obj.magic 0))
      end
  end [@@warning "-20"]
let () = java_register_constructor "AbSqlBasic" (fun arguments -> Obj.repr (new abSqlBasic (Obj.obj arguments)))


