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
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.init.db.DbConnectionInfo *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)

class abSqlColumn ((databaseConnectionInfoInterface : DbConnectionInfo.dbConnectionInfo)) =
  object (self)
    inherit AbSqlTable.abSqlTable (databaseConnectionInfoInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable lARGEST_INT_VALUE_IN_COLUMN : string = ""
    method lARGEST_INT_VALUE_IN_COLUMN = lARGEST_INT_VALUE_IN_COLUMN
    method set_lARGEST_INT_VALUE_IN_COLUMN value' = lARGEST_INT_VALUE_IN_COLUMN <- value'
    val mutable mETHOD_GET_LARGETS_INTEGER_IN_COLUMN : string = ""
    method mETHOD_GET_LARGETS_INTEGER_IN_COLUMN = mETHOD_GET_LARGETS_INTEGER_IN_COLUMN
    method set_mETHOD_GET_LARGETS_INTEGER_IN_COLUMN value' = mETHOD_GET_LARGETS_INTEGER_IN_COLUMN <- value'
    val mutable mETHOD_GET_COLUMN : string = ""
    method mETHOD_GET_COLUMN = mETHOD_GET_COLUMN
    method set_mETHOD_GET_COLUMN value' = mETHOD_GET_COLUMN <- value'
    val mutable mETHOD_GET_COLUMN_WHERE : string = ""
    method mETHOD_GET_COLUMN_WHERE = mETHOD_GET_COLUMN_WHERE
    method set_mETHOD_GET_COLUMN_WHERE value' = mETHOD_GET_COLUMN_WHERE <- value'
    val mutable iNVALID_RESULT : string = ""
    method iNVALID_RESULT = iNVALID_RESULT
    method set_iNVALID_RESULT value' = iNVALID_RESULT <- value'
    
    

    method getLargestIntegerInColumnWhere ((columnName : string), (key : string), (value : string)) : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (sqlStrings#sELECT));
        ignore (!stringBuffer#append (columnName));
        ignore (!stringBuffer#append (sqlStrings#fROM));
        ignore (!stringBuffer#append ((self#getTableName ())));
        ignore (!stringBuffer#append (sqlStrings#wHERE));
        ignore (!stringBuffer#append (key));
        ignore (!stringBuffer#append (sqlStrings#eQUAL_QUOTE));
        ignore (!stringBuffer#append (value));
        ignore (!stringBuffer#append (sqlStrings#cLOSE_QUOTE));
        let sqlStatement : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
        (try
            let largest : int ref = ref (0) in ();
            let rset : Obj.t ref = ref ((Obj.repr (self#executeSQLStatement (!sqlStatement)))) in ();
            while ((Obj.magic !rset)#next ()) do
                let intValue : int ref = ref (((Obj.magic !rset)#getInt (columnName))) in ();
                if (!intValue > !largest) then begin
                    largest := !intValue
                end
            done;
            let largestAsString : string ref = ref ((java_string_of (Obj.repr (Obj.obj (java_new "Integer" (Obj.repr (!largest))))))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                ignore (!stringBuffer#append (sqlStrings#sQL_STATEMENT_LABEL));
                ignore (!stringBuffer#append (!sqlStatement));
                ignore (!stringBuffer#append (lARGEST_INT_VALUE_IN_COLUMN));
                ignore (!stringBuffer#append (!largestAsString));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, mETHOD_GET_LARGETS_INTEGER_IN_COLUMN))
            end;
            !largestAsString
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((java_string_of (Obj.repr (fAILED_SQL_STATEMENT)) ^ !sqlStatement), self, mETHOD_GET_LARGETS_INTEGER_IN_COLUMN, e))
            end;
            iNVALID_RESULT
        end)
        end [@@warning "-7"]
    

    method getColumn ((columnName : string)) : BasicArrayList.basicArrayList =
        begin
        let column : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (sqlStrings#sELECT));
        ignore (!stringBuffer#append (columnName));
        ignore (!stringBuffer#append (sqlStrings#fROM));
        ignore (!stringBuffer#append ((self#getTableName ())));
        let sqlStatement : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
        (try
            let rset : Obj.t ref = ref ((Obj.repr (self#executeSQLStatement (!sqlStatement)))) in ();
            while ((Obj.magic !rset)#next ()) do
                let field : string ref = ref ((java_string_of (Obj.repr ((Obj.magic !rset)#getObject (columnName))))) in ();
                ignore (!column#add (!field))
            done;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                ignore (!stringBuffer#append (sqlStrings#sQL_STATEMENT_LABEL));
                ignore (!stringBuffer#append (!sqlStatement));
                ignore (!stringBuffer#append (sqlStrings#cOLUMN_VALUE));
                ignore (!stringBuffer#append ((java_string_of (Obj.repr !column))));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, mETHOD_GET_COLUMN))
            end;
            (!column :> BasicArrayList.basicArrayList)
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((java_string_of (Obj.repr (fAILED_SQL_STATEMENT)) ^ !sqlStatement), self, mETHOD_GET_COLUMN, e))
            end;
            (!column :> BasicArrayList.basicArrayList)
        end)
        end [@@warning "-7"]
    

    method getColumnWhere ((columnName : string), (key : string), (value : string)) : BasicArrayList.basicArrayList =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (sqlStrings#sELECT));
        ignore (!stringBuffer#append (columnName));
        ignore (!stringBuffer#append (sqlStrings#fROM));
        ignore (!stringBuffer#append ((self#getTableName ())));
        ignore (!stringBuffer#append (sqlStrings#wHERE));
        ignore (!stringBuffer#append (key));
        ignore (!stringBuffer#append (sqlStrings#eQUAL_QUOTE));
        ignore (!stringBuffer#append (value));
        ignore (!stringBuffer#append (sqlStrings#cLOSE_QUOTE));
        let sqlStatement : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
        let column : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let rset : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let field : string ref = ref ("") in ();
        (try
            rset := Obj.repr ((self#executeSQLStatement (!sqlStatement)));
            while ((Obj.magic !rset)#next ()) do
                field := (java_string_of (Obj.repr ((Obj.magic !rset)#getObject (columnName))));
                ignore (!column#add (!field))
            done;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                ignore (!stringBuffer#append (sqlStrings#sQL_STATEMENT_LABEL));
                ignore (!stringBuffer#append (!sqlStatement));
                ignore (!stringBuffer#append (sqlStrings#cOLUMN_VALUE));
                ignore (!stringBuffer#append ((java_string_of (Obj.repr !column))));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, mETHOD_GET_COLUMN_WHERE))
            end;
            (!column :> BasicArrayList.basicArrayList)
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((java_string_of (Obj.repr (fAILED_SQL_STATEMENT)) ^ !sqlStatement), self, mETHOD_GET_COLUMN_WHERE, e))
            end;
            (!column :> BasicArrayList.basicArrayList)
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        lARGEST_INT_VALUE_IN_COLUMN <- "\nLargest Int Value in column: ";
        mETHOD_GET_LARGETS_INTEGER_IN_COLUMN <- "getLargestIntegerInColumn";
        mETHOD_GET_COLUMN <- "getColumn";
        mETHOD_GET_COLUMN_WHERE <- "getColumnWhere";
        iNVALID_RESULT <- "-1";
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AbSqlColumn" (fun arguments -> Obj.repr (new abSqlColumn (Obj.obj arguments)))


