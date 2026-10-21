(*
 
  To change this license header, choose License Headers in Project Properties. 
  To change this template file, choose Tools | Templates 
  and open the template in the editor.  
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.communication.sql *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.net.InetAddress *)
(* import org.allbinary.business.init.db.DatabaseConnectionInfoInterface *)
(* import org.allbinary.business.init.db.DbConnectionInfo *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonStrings *)

class abDatabaseManagement ((databaseConnectionInfoInterface : DatabaseConnectionInfoInterface.databaseConnectionInfoInterface)) =
  object (self)
    inherit AbSqlBean.abSqlBean ((Obj.magic databaseConnectionInfoInterface)) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable sqlCommandLog : StringMaker.stringMaker = (Obj.magic 0)
    method sqlCommandLog = sqlCommandLog
    method set_sqlCommandLog value' = sqlCommandLog <- value'
    val mutable gRANT_ALL : string = ""
    method gRANT_ALL = gRANT_ALL
    method set_gRANT_ALL value' = gRANT_ALL <- value'
    val mutable dOT_STAR : string = ""
    method dOT_STAR = dOT_STAR
    method set_dOT_STAR value' = dOT_STAR <- value'
    val mutable tO : string = ""
    method tO = tO
    method set_tO value' = tO <- value'
    val mutable aT_LOCALHOST : string = ""
    method aT_LOCALHOST = aT_LOCALHOST
    method set_aT_LOCALHOST value' = aT_LOCALHOST <- value'
    val mutable iDENTIFIED_BY : string = ""
    method iDENTIFIED_BY = iDENTIFIED_BY
    method set_iDENTIFIED_BY value' = iDENTIFIED_BY <- value'
    val mutable wITH_GRANT_OPTION : string = ""
    method wITH_GRANT_OPTION = wITH_GRANT_OPTION
    method set_wITH_GRANT_OPTION value' = wITH_GRANT_OPTION <- value'
    val mutable fAILED : string = ""
    method fAILED = fAILED
    method set_fAILED value' = fAILED <- value'
    val mutable gET_HOST_NAME : string = ""
    method gET_HOST_NAME = gET_HOST_NAME
    method set_gET_HOST_NAME value' = gET_HOST_NAME <- value'
    val mutable mETHOD_ADD_USER : string = ""
    method mETHOD_ADD_USER = mETHOD_ADD_USER
    method set_mETHOD_ADD_USER value' = mETHOD_ADD_USER <- value'
    val mutable mETHOD_ADD_USERS : string = ""
    method mETHOD_ADD_USERS = mETHOD_ADD_USERS
    method set_mETHOD_ADD_USERS value' = mETHOD_ADD_USERS <- value'
    val mutable mETHOD_ADD_DB : string = ""
    method mETHOD_ADD_DB = mETHOD_ADD_DB
    method set_mETHOD_ADD_DB value' = mETHOD_ADD_DB <- value'
    val mutable mETHOD_ADD_DATABASES : string = ""
    method mETHOD_ADD_DATABASES = mETHOD_ADD_DATABASES
    method set_mETHOD_ADD_DATABASES value' = mETHOD_ADD_DATABASES <- value'
    val mutable mETHOD_ADD_TABLES : string = ""
    method mETHOD_ADD_TABLES = mETHOD_ADD_TABLES
    method set_mETHOD_ADD_TABLES value' = mETHOD_ADD_TABLES <- value'
    val mutable uNABLE_TO_CREATE_USER : string = ""
    method uNABLE_TO_CREATE_USER = uNABLE_TO_CREATE_USER
    method set_uNABLE_TO_CREATE_USER value' = uNABLE_TO_CREATE_USER <- value'
    val mutable uNABLE_TO_CREATE_DATABASE : string = ""
    method uNABLE_TO_CREATE_DATABASE = uNABLE_TO_CREATE_DATABASE
    method set_uNABLE_TO_CREATE_DATABASE value' = uNABLE_TO_CREATE_DATABASE <- value'
    val mutable uNABLE_TO_CREATE_TABLES : string = ""
    method uNABLE_TO_CREATE_TABLES = uNABLE_TO_CREATE_TABLES
    method set_uNABLE_TO_CREATE_TABLES value' = uNABLE_TO_CREATE_TABLES <- value'
    val mutable aDD_TABLES_RESULTS_LABEL : string = ""
    method aDD_TABLES_RESULTS_LABEL = aDD_TABLES_RESULTS_LABEL
    method set_aDD_TABLES_RESULTS_LABEL value' = aDD_TABLES_RESULTS_LABEL <- value'
    
    
    

    method getHostName () : string =
        begin
        (try
            let addr : Obj.t ref = ref ((Obj.repr (InetAddress.getLocalHost ()))) in ();
            ((Obj.magic !addr)#getHostName ())
        with e -> begin
            ignore ((Obj.magic logUtil)#put (fAILED, self, gET_HOST_NAME, e));
            (Obj.magic 0)
        end)
        end [@@warning "-7"]
    

    method addDbUser ((hostName : string), (db : string), (userName : string), (password : string)) : bool =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (gRANT_ALL));
        ignore (!stringBuffer#append (db));
        ignore (!stringBuffer#append (dOT_STAR));
        ignore (!stringBuffer#append (tO));
        ignore (!stringBuffer#append (userName));
        ignore (!stringBuffer#append (hostName));
        ignore (!stringBuffer#append (iDENTIFIED_BY));
        ignore (!stringBuffer#append (password));
        ignore (!stringBuffer#append (wITH_GRANT_OPTION));
        let sqlStatement : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
        ignore (sqlCommandLog#append (!sqlStatement));
        ignore (sqlCommandLog#append (commonSeps#nEW_LINE));
        ignore (super#executeSQLStatement (!sqlStatement));
        true
        end [@@warning "-7"]
    

    (* Java overload addDbUser(String, String, String) is not converted: OCaml has one method per name *)
    

    method addDb ((db : string)) : bool =
        begin
        (try
            let sqlStatement : string ref = ref ((java_string_of (Obj.repr (sqlStrings#cREATE_DATABASE)) ^ db)) in ();
            ignore (sqlCommandLog#append (!sqlStatement));
            ignore (sqlCommandLog#append (commonSeps#nEW_LINE));
            ignore (super#executeSQLStatement (!sqlStatement));
            true
        with e -> begin
            ignore ((Obj.magic logUtil)#put ((uNABLE_TO_CREATE_DATABASE ^ db), self, mETHOD_ADD_DB, e));
            false
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        sqlCommandLog <- ((new StringMaker.stringMaker ()) :> StringMaker.stringMaker);
        gRANT_ALL <- "GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, INDEX, ALTER ON ";
        dOT_STAR <- ".*";
        tO <- " TO ";
        aT_LOCALHOST <- "@localhost";
        iDENTIFIED_BY <- " IDENTIFIED BY '";
        wITH_GRANT_OPTION <- "' WITH GRANT OPTION";
        fAILED <- "Failed";
        gET_HOST_NAME <- "getHostName()";
        mETHOD_ADD_USER <- "addUser()";
        mETHOD_ADD_USERS <- "addUsers()";
        mETHOD_ADD_DB <- "addDb()";
        mETHOD_ADD_DATABASES <- "addDatabases()";
        mETHOD_ADD_TABLES <- "addTables()";
        uNABLE_TO_CREATE_USER <- "Unable to Create User: ";
        uNABLE_TO_CREATE_DATABASE <- "Unable to Create Database: ";
        uNABLE_TO_CREATE_TABLES <- "Unable to Create Tables";
        aDD_TABLES_RESULTS_LABEL <- "Add Table Results: ";
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "AbDatabaseManagement" (fun arguments -> Obj.repr (new abDatabaseManagement (Obj.obj arguments)))


