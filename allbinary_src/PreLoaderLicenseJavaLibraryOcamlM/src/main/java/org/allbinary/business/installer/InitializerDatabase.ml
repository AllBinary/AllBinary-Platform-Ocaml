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
(* package org.allbinary.business.installer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import java.util.Map *)
(* import java.util.Set *)
(* import org.allbinary.business.init.db.DatabaseConnectionInfoInterface *)
(* import org.allbinary.business.init.db.DbConnectionInfo *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.string.CommonStrings *)

let mAXDB : int = 30
let get_mAXDB () = mAXDB
let () = java_register_static "InitializerDatabase.get_mAXDB" (fun _ -> Obj.repr (get_mAXDB ()))
let mAX : int = 16
let get_mAX () = mAX
let () = java_register_static "InitializerDatabase.get_mAX" (fun _ -> Obj.repr (get_mAX ()))
let mIN : int = 4
let get_mIN () = mIN
let () = java_register_static "InitializerDatabase.get_mIN" (fun _ -> Obj.repr (get_mIN ()))
let mINPASSWORD : int = 0
let get_mINPASSWORD () = mINPASSWORD
let () = java_register_static "InitializerDatabase.get_mINPASSWORD" (fun _ -> Obj.repr (get_mINPASSWORD ()))
class initializerDatabase ((abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface), map) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable adminDbUserName : string = ""
    method adminDbUserName = adminDbUserName
    method set_adminDbUserName value' = adminDbUserName <- value'
    val mutable adminDbPassword : string = ""
    method adminDbPassword = adminDbPassword
    method set_adminDbPassword value' = adminDbPassword <- value'
    val mutable adminJdbcDriver : string = ""
    method adminJdbcDriver = adminJdbcDriver
    method set_adminJdbcDriver value' = adminJdbcDriver <- value'
    val mutable adminSchema : string = ""
    method adminSchema = adminSchema
    method set_adminSchema value' = adminSchema <- value'
    val mutable adminServer : string = ""
    method adminServer = adminServer
    method set_adminServer value' = adminServer <- value'
    val mutable adminPort : string = ""
    method adminPort = adminPort
    method set_adminPort value' = adminPort <- value'
    val mutable initDb : DynamicInitDb.dynamicInitDb = (Obj.magic 0)
    method initDb = initDb
    method set_initDb value' = initDb <- value'
    
    
    

    method getFormData : 'any1. 'any1 * java_hash_map -> unit = fun (abeClientInformation, (hashMap : java_hash_map)) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        (try
            let initializerData : InitializerData.initializerData ref = ref (((InitializerData.getInstance ()) :> InitializerData.initializerData)) in ();
            (self#setAdminDbUserName ((Obj.magic (hashMap#get (!initializerData#dBUSER)))));
            (self#setAdminDbPassword ((Obj.magic (hashMap#get (!initializerData#dBPASSWORD)))));
            (self#setAdminJdbcDriver ((Obj.magic (hashMap#get (!initializerData#aDMINJDBCDRIVER)))));
            (self#setAdminSchema ((Obj.magic (hashMap#get (!initializerData#aDMINSCHEMA)))));
            (self#setAdminServer ((Obj.magic (hashMap#get (!initializerData#aDMINSERVER)))));
            (self#setAdminPort ((Obj.magic (hashMap#get (!initializerData#aDMINPORT)))));
            let dbConnectionInfo : DbConnectionInfo.dbConnectionInfo ref = ref (((new DbConnectionInfo.dbConnectionInfo ()) :> DbConnectionInfo.dbConnectionInfo)) in ();
            let adminDbName : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
            ignore (!dbConnectionInfo#setJdbcDriver ((self#getAdminJdbcDriver ())));
            ignore (!dbConnectionInfo#setName (!adminDbName));
            ignore (!dbConnectionInfo#setUserName ((self#getAdminDbUserName ())));
            ignore (!dbConnectionInfo#setPassword ((self#getAdminDbPassword ())));
            ignore (!dbConnectionInfo#setSchema ((self#getAdminSchema ())));
            ignore (!dbConnectionInfo#setServer ((self#getAdminServer ())));
            ignore (!dbConnectionInfo#setPort ((self#getAdminPort ())));
            initDb <- (new DynamicInitDb.dynamicInitDb ((Obj.magic abeClientInformation), (Obj.magic !dbConnectionInfo)))
        with e -> begin
            ignore ((Obj.magic logUtil)#put ("Unable to get form data", self, "getFormData()", e))
        end)
        end [@@warning "-20"]
    

    method isJdbcDriverValid ((jdbcDriverClassPathString : string)) : bool =
        begin
        (try
            ignore ((Obj.magic (java_call_static "Class.forName" (Obj.repr (jdbcDriverClassPathString))))#newInstance ());
            true
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#pRELOADERERROR)) then begin
                let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
                ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#iS_VALID, e))
            end;
            false
        end)
        end
    

    method isValid () : bool =
        begin
        let isValid : bool ref = ref (true) in ();
        if (not (self#isJdbcDriverValid (adminJdbcDriver))) then begin
            isValid := false
        end;
        let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
        if (not (!stringValidationUtil#isValidRequired (adminDbUserName, mIN, mAX))) then begin
            isValid := false
        end;
        if (not (!stringValidationUtil#isValidNotRequired (adminDbPassword, mINPASSWORD, mAX))) then begin
            isValid := false
        end;
        !isValid
        end
    

    method getJdbcDriverValidationInfo ((jdbcDriver : string)) : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("The JDBC driver ("));
        ignore (!stringBuffer#append (jdbcDriver));
        ignore (!stringBuffer#append (") you have provided is not valid.<br/>"));
        (java_string_of (Obj.repr !stringBuffer))
        end
    

    method getInvalidInfo () : string =
        begin
        let isValid : bool ref = ref (true) in ();
        let isJdbcDriversValid : bool ref = ref (true) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        if (not (self#isJdbcDriverValid (adminJdbcDriver))) then begin
            isJdbcDriversValid := false;
            ignore (!stringBuffer#append ((self#getJdbcDriverValidationInfo ((self#getAdminJdbcDriver ())))))
        end;
        let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
        if (not (!stringValidationUtil#isValidRequired (adminDbUserName, mIN, mAX))) then begin
            ignore (!stringBuffer#append ((((("Admin username should be < " ^ java_string_of (Obj.repr (mAX))) ^ " and > ") ^ java_string_of (Obj.repr (mIN))) ^ " characters in length.<br />")))
        end;
        if (not (!stringValidationUtil#isValidNotRequired (adminDbPassword, mINPASSWORD, mAX))) then begin
            ignore (!stringBuffer#append ((((("Admin password should be < " ^ java_string_of (Obj.repr (mAX))) ^ " and > ") ^ java_string_of (Obj.repr (mINPASSWORD))) ^ " characters in length.<br />")))
        end;
        if (not !isJdbcDriversValid) then begin
            ignore (!stringBuffer#append (((InitializerData.getInstance ())#getJdbcDriverSolutionInfo ())))
        end;
        (java_string_of (Obj.repr !stringBuffer))
        end
    

    method createUsers () : bool =
        begin
        (try
            ignore (initDb#addUsers ());
            true
        with e -> begin
            ignore ((Obj.magic logUtil)#put ("Unable to Create Users", self, "createUsers()", e));
            false
        end)
        end
    

    method createDatabases () : bool =
        begin
        (try
            ignore (initDb#addDatabases ());
            true
        with e -> begin
            ignore ((Obj.magic logUtil)#put ("Unable to Create Databases", self, "createDatabases()", e));
            false
        end)
        end
    

    method createTables () : bool =
        begin
        (try
            ignore (initDb#addTables ());
            true
        with e -> begin
            ignore ((Obj.magic logUtil)#put ("Unable to Create Tables", self, "createTables()", e));
            false
        end)
        end
    

    method getAdminDbUserName () : string =
        begin
        adminDbUserName
        end
    

    method setAdminDbUserName ((adminDbUserName_arg : string)) : unit =
        begin
        adminDbUserName <- adminDbUserName_arg
        end
    

    method getAdminDbPassword () : string =
        begin
        adminDbPassword
        end
    

    method setAdminDbPassword ((adminDbPassword_arg : string)) : unit =
        begin
        adminDbPassword <- adminDbPassword_arg
        end
    

    method getAdminJdbcDriver () : string =
        begin
        adminJdbcDriver
        end
    

    method setAdminJdbcDriver ((adminJdbcDriver_arg : string)) : unit =
        begin
        adminJdbcDriver <- adminJdbcDriver_arg
        end
    

    method getAdminSchema () : string =
        begin
        adminSchema
        end
    

    method setAdminSchema ((adminSchema_arg : string)) : unit =
        begin
        adminSchema <- adminSchema_arg
        end
    

    method getAdminServer () : string =
        begin
        adminServer
        end
    

    method setAdminServer ((adminServer_arg : string)) : unit =
        begin
        adminServer <- adminServer_arg
        end
    

    method getAdminPort () : string =
        begin
        adminPort
        end
    

    method setAdminPort ((adminPort_arg : string)) : unit =
        begin
        adminPort <- adminPort_arg
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        adminDbUserName <- "";
        adminDbPassword <- "";
        adminJdbcDriver <- "";
        adminSchema <- "";
        adminServer <- "";
        adminPort <- "";
        initDb <- ((Obj.magic 0) :> DynamicInitDb.dynamicInitDb);
        ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        let keys : Obj.t ref = ref ((Obj.repr (map#keySet ()))) in ();
        let keyArray : Obj.t array ref = ref (((Obj.magic !keys)#toArray ())) in ();
        let size : int ref = ref ((Array.length !keyArray)) in ();
        for index = 0 to !size - 1 do
            let key : string ref = ref ((Obj.magic !keyArray.(index))) in ();
            let values : string array ref = ref ((Obj.magic (map#get (!key)))) in ();
            ignore (!hashMap#put ((Obj.obj (java_new "String" (Obj.repr (!key)))), (Obj.obj (java_new "String" (Obj.repr (!values.(0)))))));
            ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
            ignore (!stringBuffer#append ("key: "));
            ignore (!stringBuffer#append (!key));
            ignore (!stringBuffer#append (" Value: "));
            ignore (!stringBuffer#append (!values.(0)));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "getFormData()"))
        done;
        (self#getFormData (abeClientInformation, !hashMap))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "InitializerDatabase" (fun arguments -> Obj.repr (new initializerDatabase (Obj.obj arguments)))


