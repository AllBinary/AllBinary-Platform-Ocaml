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
(* import org.allbinary.business.init.db.DbConnectionInfo *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class abSqlTable ((databaseConnectionInfoInterface : DbConnectionInfo.dbConnectionInfo)) =
  object (self)
    inherit AbSqlBasic.abSqlBasic (databaseConnectionInfoInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable tableName : string = ""
    method tableName = tableName
    method set_tableName value' = tableName <- value'
    val mutable mETHOD_CREATED_TABLE : string = ""
    method mETHOD_CREATED_TABLE = mETHOD_CREATED_TABLE
    method set_mETHOD_CREATED_TABLE value' = mETHOD_CREATED_TABLE <- value'
    val mutable mETHOD_DROP_TABLE : string = ""
    method mETHOD_DROP_TABLE = mETHOD_DROP_TABLE
    method set_mETHOD_DROP_TABLE value' = mETHOD_DROP_TABLE <- value'
    val mutable tABLE_CREATION_SUCCESS : string = ""
    method tABLE_CREATION_SUCCESS = tABLE_CREATION_SUCCESS
    method set_tABLE_CREATION_SUCCESS value' = tABLE_CREATION_SUCCESS <- value'
    val mutable dROPPED_SUCCESS : string = ""
    method dROPPED_SUCCESS = dROPPED_SUCCESS
    method set_dROPPED_SUCCESS value' = dROPPED_SUCCESS <- value'
    
    

    method setTableName ((tableName_arg : string)) : unit =
        begin
        tableName <- tableName_arg
        end [@@warning "-7"]
    

    method getTableName () : string =
        begin
        tableName
        end [@@warning "-7"]
    

    method createTable ((data : string)) : string =
        begin
        (try
            ignore (self#executeSQLStatement (data));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ((((tABLE_CREATION_SUCCESS ^ tableName) ^ " with statement: ") ^ data), self, mETHOD_CREATED_TABLE))
            end;
            (tableName ^ java_string_of (Obj.repr (sqlStrings#cREATE_RETURN)))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put (((("Table Creation Failed: " ^ tableName) ^ " with statement: ") ^ data), self, mETHOD_CREATED_TABLE, e))
            end;
            (("Failed to Create " ^ tableName) ^ " table.")
        end)
        end [@@warning "-7"]
    

    method dropTable () : string =
        begin
        let sqlStatement : string ref = ref ((java_string_of (Obj.repr (sqlStrings#dROP_TABLE)) ^ tableName)) in ();
        (try
            ignore (self#executeSQLStatement (!sqlStatement));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (sUCCESS_SQL_STATEMENT)) ^ !sqlStatement), self, mETHOD_DROP_TABLE))
            end;
            (tableName ^ dROPPED_SUCCESS)
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((java_string_of (Obj.repr (fAILED_SQL_STATEMENT)) ^ !sqlStatement), self, mETHOD_DROP_TABLE, e))
            end;
            (("Failed to Drop " ^ tableName) ^ " table.")
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        tableName <- "";
        mETHOD_CREATED_TABLE <- "createTable()";
        mETHOD_DROP_TABLE <- "dropTable()";
        tABLE_CREATION_SUCCESS <- "Table Creation Successful: ";
        dROPPED_SUCCESS <- " Dropped Successfully";
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AbSqlTable" (fun arguments -> Obj.repr (new abSqlTable (Obj.obj arguments)))


