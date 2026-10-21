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
(* import org.allbinary.business.init.db.HistoryDbInitInfo *)
(* import org.allbinary.business.init.db.InventoryDbInitInfo *)
(* import org.allbinary.business.init.db.LogDbInitInfo *)
(* import org.allbinary.business.init.db.StaticPagesDbInitInfo *)
(* import org.allbinary.business.init.db.UserDbInitInfo *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.string.CommonStrings *)

let mAXDB : int = 30
let get_mAXDB () = mAXDB
let () = java_register_static "Initializer.get_mAXDB" (fun _ -> Obj.repr (get_mAXDB ()))
let mAX : int = 16
let get_mAX () = mAX
let () = java_register_static "Initializer.get_mAX" (fun _ -> Obj.repr (get_mAX ()))
let mIN : int = 4
let get_mIN () = mIN
let () = java_register_static "Initializer.get_mIN" (fun _ -> Obj.repr (get_mIN ()))
let mINPASSWORD : int = 0
let get_mINPASSWORD () = mINPASSWORD
let () = java_register_static "Initializer.get_mINPASSWORD" (fun _ -> Obj.repr (get_mINPASSWORD ()))
class initializer (map) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable userJdbcDriver : string = ""
    method userJdbcDriver = userJdbcDriver
    method set_userJdbcDriver value' = userJdbcDriver <- value'
    val mutable userName : string = ""
    method userName = userName
    method set_userName value' = userName <- value'
    val mutable userUserName : string = ""
    method userUserName = userUserName
    method set_userUserName value' = userUserName <- value'
    val mutable userPassword : string = ""
    method userPassword = userPassword
    method set_userPassword value' = userPassword <- value'
    val mutable userSchema : string = ""
    method userSchema = userSchema
    method set_userSchema value' = userSchema <- value'
    val mutable userServer : string = ""
    method userServer = userServer
    method set_userServer value' = userServer <- value'
    val mutable userPort : string = ""
    method userPort = userPort
    method set_userPort value' = userPort <- value'
    val mutable historyJdbcDriver : string = ""
    method historyJdbcDriver = historyJdbcDriver
    method set_historyJdbcDriver value' = historyJdbcDriver <- value'
    val mutable historyName : string = ""
    method historyName = historyName
    method set_historyName value' = historyName <- value'
    val mutable historyUserName : string = ""
    method historyUserName = historyUserName
    method set_historyUserName value' = historyUserName <- value'
    val mutable historyPassword : string = ""
    method historyPassword = historyPassword
    method set_historyPassword value' = historyPassword <- value'
    val mutable historySchema : string = ""
    method historySchema = historySchema
    method set_historySchema value' = historySchema <- value'
    val mutable historyServer : string = ""
    method historyServer = historyServer
    method set_historyServer value' = historyServer <- value'
    val mutable historyPort : string = ""
    method historyPort = historyPort
    method set_historyPort value' = historyPort <- value'
    val mutable logJdbcDriver : string = ""
    method logJdbcDriver = logJdbcDriver
    method set_logJdbcDriver value' = logJdbcDriver <- value'
    val mutable logName : string = ""
    method logName = logName
    method set_logName value' = logName <- value'
    val mutable logUserName : string = ""
    method logUserName = logUserName
    method set_logUserName value' = logUserName <- value'
    val mutable logPassword : string = ""
    method logPassword = logPassword
    method set_logPassword value' = logPassword <- value'
    val mutable logSchema : string = ""
    method logSchema = logSchema
    method set_logSchema value' = logSchema <- value'
    val mutable logServer : string = ""
    method logServer = logServer
    method set_logServer value' = logServer <- value'
    val mutable logPort : string = ""
    method logPort = logPort
    method set_logPort value' = logPort <- value'
    val mutable inventoryJdbcDriver : string = ""
    method inventoryJdbcDriver = inventoryJdbcDriver
    method set_inventoryJdbcDriver value' = inventoryJdbcDriver <- value'
    val mutable inventoryName : string = ""
    method inventoryName = inventoryName
    method set_inventoryName value' = inventoryName <- value'
    val mutable inventoryUserName : string = ""
    method inventoryUserName = inventoryUserName
    method set_inventoryUserName value' = inventoryUserName <- value'
    val mutable inventoryPassword : string = ""
    method inventoryPassword = inventoryPassword
    method set_inventoryPassword value' = inventoryPassword <- value'
    val mutable inventorySchema : string = ""
    method inventorySchema = inventorySchema
    method set_inventorySchema value' = inventorySchema <- value'
    val mutable inventoryServer : string = ""
    method inventoryServer = inventoryServer
    method set_inventoryServer value' = inventoryServer <- value'
    val mutable inventoryPort : string = ""
    method inventoryPort = inventoryPort
    method set_inventoryPort value' = inventoryPort <- value'
    val mutable staticPagesJdbcDriver : string = ""
    method staticPagesJdbcDriver = staticPagesJdbcDriver
    method set_staticPagesJdbcDriver value' = staticPagesJdbcDriver <- value'
    val mutable staticPagesName : string = ""
    method staticPagesName = staticPagesName
    method set_staticPagesName value' = staticPagesName <- value'
    val mutable staticPagesUserName : string = ""
    method staticPagesUserName = staticPagesUserName
    method set_staticPagesUserName value' = staticPagesUserName <- value'
    val mutable staticPagesPassword : string = ""
    method staticPagesPassword = staticPagesPassword
    method set_staticPagesPassword value' = staticPagesPassword <- value'
    val mutable staticPagesSchema : string = ""
    method staticPagesSchema = staticPagesSchema
    method set_staticPagesSchema value' = staticPagesSchema <- value'
    val mutable staticPagesServer : string = ""
    method staticPagesServer = staticPagesServer
    method set_staticPagesServer value' = staticPagesServer <- value'
    val mutable staticPagesPort : string = ""
    method staticPagesPort = staticPagesPort
    method set_staticPagesPort value' = staticPagesPort <- value'
    
    
    

    method getFormData ((hashMap : java_hash_map)) : unit =
        begin
        (try
            let initializerData : InitializerData.initializerData ref = ref (((InitializerData.getInstance ()) :> InitializerData.initializerData)) in ();
            userJdbcDriver <- (Obj.magic (hashMap#get (!initializerData#cUSTOMERJDBCDRIVER)));
            userName <- (Obj.magic (hashMap#get (!initializerData#cUSTOMERNAME)));
            userUserName <- (Obj.magic (hashMap#get (!initializerData#cUSTOMERUSERNAME)));
            userPassword <- (Obj.magic (hashMap#get (!initializerData#cUSTOMERPASSWORD)));
            userSchema <- (Obj.magic (hashMap#get (!initializerData#cUSTOMERSCHEMA)));
            userServer <- (Obj.magic (hashMap#get (!initializerData#cUSTOMERSERVER)));
            userPort <- (Obj.magic (hashMap#get (!initializerData#cUSTOMERPORT)));
            historyJdbcDriver <- (Obj.magic (hashMap#get (!initializerData#hISTORYJDBCDRIVER)));
            historyName <- (Obj.magic (hashMap#get (!initializerData#hISTORYNAME)));
            historyUserName <- (Obj.magic (hashMap#get (!initializerData#hISTORYUSERNAME)));
            historyPassword <- (Obj.magic (hashMap#get (!initializerData#hISTORYPASSWORD)));
            historySchema <- (Obj.magic (hashMap#get (!initializerData#hISTORYSCHEMA)));
            historyServer <- (Obj.magic (hashMap#get (!initializerData#hISTORYSERVER)));
            historyPort <- (Obj.magic (hashMap#get (!initializerData#hISTORYPORT)));
            logJdbcDriver <- (Obj.magic (hashMap#get (!initializerData#lOGJDBCDRIVER)));
            logName <- (Obj.magic (hashMap#get (!initializerData#lOGNAME)));
            logUserName <- (Obj.magic (hashMap#get (!initializerData#lOGUSERNAME)));
            logPassword <- (Obj.magic (hashMap#get (!initializerData#lOGPASSWORD)));
            logSchema <- (Obj.magic (hashMap#get (!initializerData#lOGSCHEMA)));
            logServer <- (Obj.magic (hashMap#get (!initializerData#lOGSERVER)));
            logPort <- (Obj.magic (hashMap#get (!initializerData#lOGPORT)));
            inventoryJdbcDriver <- (Obj.magic (hashMap#get (!initializerData#iNVENTORYJDBCDRIVER)));
            inventoryName <- (Obj.magic (hashMap#get (!initializerData#iNVENTORYNAME)));
            inventoryUserName <- (Obj.magic (hashMap#get (!initializerData#iNVENTORYUSERNAME)));
            inventoryPassword <- (Obj.magic (hashMap#get (!initializerData#iNVENTORYPASSWORD)));
            inventorySchema <- (Obj.magic (hashMap#get (!initializerData#iNVENTORYSCHEMA)));
            inventoryServer <- (Obj.magic (hashMap#get (!initializerData#iNVENTORYSERVER)));
            inventoryPort <- (Obj.magic (hashMap#get (!initializerData#iNVENTORYPORT)));
            staticPagesJdbcDriver <- (Obj.magic (hashMap#get (!initializerData#sTATICPAGESJDBCDRIVER)));
            staticPagesName <- (Obj.magic (hashMap#get (!initializerData#sTATICPAGESNAME)));
            staticPagesUserName <- (Obj.magic (hashMap#get (!initializerData#sTATICPAGESUSERNAME)));
            staticPagesPassword <- (Obj.magic (hashMap#get (!initializerData#sTATICPAGESPASSWORD)));
            staticPagesSchema <- (Obj.magic (hashMap#get (!initializerData#sTATICPAGESSCHEMA)));
            staticPagesServer <- (Obj.magic (hashMap#get (!initializerData#sTATICPAGESSERVER)));
            staticPagesPort <- (Obj.magic (hashMap#get (!initializerData#sTATICPAGESPORT)))
        with e -> begin
            ignore ((Obj.magic logUtil)#put ("Unable to get form data", self, "getFormData()", e))
        end)
        end
    

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
        if (not (self#isJdbcDriverValid (userJdbcDriver))) then begin
            isValid := false
        end;
        let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
        if (not (!stringValidationUtil#isValidRequired (userName, mIN, mAXDB))) then begin
            isValid := false
        end;
        if (not (!stringValidationUtil#isValidRequired (userUserName, mIN, mAX))) then begin
            isValid := false
        end;
        if (not (!stringValidationUtil#isValidNotRequired (userPassword, mINPASSWORD, mAX))) then begin
            isValid := false
        end;
        if (not (self#isJdbcDriverValid (historyJdbcDriver))) then begin
            isValid := false
        end;
        if (not (!stringValidationUtil#isValidRequired (historyName, mIN, mAXDB))) then begin
            isValid := false
        end;
        if (not (!stringValidationUtil#isValidRequired (historyUserName, mIN, mAX))) then begin
            isValid := false
        end;
        if (not (!stringValidationUtil#isValidNotRequired (historyPassword, mINPASSWORD, mAX))) then begin
            isValid := false
        end;
        if (not (self#isJdbcDriverValid (logJdbcDriver))) then begin
            isValid := false
        end;
        if (not (!stringValidationUtil#isValidRequired (logName, mIN, mAXDB))) then begin
            isValid := false
        end;
        if (not (!stringValidationUtil#isValidRequired (logUserName, mIN, mAX))) then begin
            isValid := false
        end;
        if (not (!stringValidationUtil#isValidNotRequired (logPassword, mINPASSWORD, mAX))) then begin
            isValid := false
        end;
        if (not (self#isJdbcDriverValid (inventoryJdbcDriver))) then begin
            isValid := false
        end;
        if (not (!stringValidationUtil#isValidRequired (inventoryName, mIN, mAXDB))) then begin
            isValid := false
        end;
        if (not (!stringValidationUtil#isValidRequired (inventoryUserName, mIN, mAX))) then begin
            isValid := false
        end;
        if (not (!stringValidationUtil#isValidNotRequired (inventoryPassword, mINPASSWORD, mAX))) then begin
            isValid := false
        end;
        if (not (self#isJdbcDriverValid (staticPagesJdbcDriver))) then begin
            isValid := false
        end;
        if (not (!stringValidationUtil#isValidRequired (staticPagesName, mIN, mAXDB))) then begin
            isValid := false
        end;
        if (not (!stringValidationUtil#isValidRequired (staticPagesUserName, mIN, mAX))) then begin
            isValid := false
        end;
        if (not (!stringValidationUtil#isValidNotRequired (staticPagesPassword, mINPASSWORD, mAX))) then begin
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
    

    method getJdbcDriverSolutionInfo () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("The following describes the possible problems and solutions regarding the Jdbc Driver error(s):<p/>"));
        ignore (!stringBuffer#append ("1. A JDBC driver you specified is not in your classpath.<br/>"));
        ignore (!stringBuffer#append ("Solution 1: Move the JDBC driver into any directory specified in the existing classpath. <br/>"));
        ignore (!stringBuffer#append ("Solution 2: Add the directory that contains the JDBC driver to the classpath.<br/>"));
        ignore (!stringBuffer#append ("Solution 3: Add the JDBC driver to the WEB-INF/lib directory where you installed this webapp.<br/>"));
        ignore (!stringBuffer#append ("2. The JDBC driver you specified does not exit.<br/>"));
        ignore (!stringBuffer#append ("Solution: Get a JDBC driver. <br/>"));
        ignore (!stringBuffer#append ("3. The JDBC driver you specified is not valid.<br/>"));
        ignore (!stringBuffer#append ("Solution: Use a valid JDBC driver.<p/>"));
        (java_string_of (Obj.repr !stringBuffer))
        end
    

    method getInvalidInfo () : string =
        begin
        let isJdbcDriversValid : bool ref = ref (true) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        if (not (self#isJdbcDriverValid (userJdbcDriver))) then begin
            isJdbcDriversValid := false;
            ignore (!stringBuffer#append ((self#getJdbcDriverValidationInfo (userJdbcDriver))))
        end;
        let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
        if (not (!stringValidationUtil#isValidRequired (userName, mIN, mAXDB))) then begin
            ignore (!stringBuffer#append ((((("User db name should be < " ^ java_string_of (Obj.repr (mAXDB))) ^ " and > ") ^ java_string_of (Obj.repr (mIN))) ^ " characters in length.<br />")))
        end;
        if (not (!stringValidationUtil#isValidRequired (userUserName, mIN, mAX))) then begin
            ignore (!stringBuffer#append ((((("User db username should be < " ^ java_string_of (Obj.repr (mAX))) ^ " and > ") ^ java_string_of (Obj.repr (mIN))) ^ " characters in length.<br />")))
        end;
        if (not (!stringValidationUtil#isValidNotRequired (userPassword, mINPASSWORD, mAX))) then begin
            ignore (!stringBuffer#append ((((("User DB password should be < " ^ java_string_of (Obj.repr (mAX))) ^ " and > ") ^ java_string_of (Obj.repr (mINPASSWORD))) ^ " characters in length.<br />")))
        end;
        if (not (self#isJdbcDriverValid (historyJdbcDriver))) then begin
            isJdbcDriversValid := false;
            ignore (!stringBuffer#append ((self#getJdbcDriverValidationInfo (historyJdbcDriver))))
        end;
        if (not (!stringValidationUtil#isValidRequired (historyName, mIN, mAXDB))) then begin
            ignore (!stringBuffer#append ((((("History db should be < " ^ java_string_of (Obj.repr (mAXDB))) ^ " and > ") ^ java_string_of (Obj.repr (mIN))) ^ " characters in length.<br />")))
        end;
        if (not (!stringValidationUtil#isValidRequired (historyUserName, mIN, mAX))) then begin
            ignore (!stringBuffer#append ((((("History db username should be < " ^ java_string_of (Obj.repr (mAX))) ^ " and > ") ^ java_string_of (Obj.repr (mIN))) ^ " characters in length.<br />")))
        end;
        if (not (!stringValidationUtil#isValidNotRequired (historyPassword, mINPASSWORD, mAX))) then begin
            ignore (!stringBuffer#append ((((("History db password should be < " ^ java_string_of (Obj.repr (mAX))) ^ " and > ") ^ java_string_of (Obj.repr (mINPASSWORD))) ^ " characters in length.<br />")))
        end;
        if (not (self#isJdbcDriverValid (logJdbcDriver))) then begin
            isJdbcDriversValid := false;
            ignore (!stringBuffer#append ((self#getJdbcDriverValidationInfo (logJdbcDriver))))
        end;
        if (not (!stringValidationUtil#isValidRequired (logName, mIN, mAXDB))) then begin
            ignore (!stringBuffer#append ((((("Log db should be < " ^ java_string_of (Obj.repr (mAXDB))) ^ " and > ") ^ java_string_of (Obj.repr (mIN))) ^ " characters in length.<br />")))
        end;
        if (not (!stringValidationUtil#isValidRequired (logUserName, mIN, mAX))) then begin
            ignore (!stringBuffer#append ((((("Log db username should be < " ^ java_string_of (Obj.repr (mAX))) ^ " and > ") ^ java_string_of (Obj.repr (mIN))) ^ " characters in length.<br />")))
        end;
        if (not (!stringValidationUtil#isValidNotRequired (logPassword, mINPASSWORD, mAX))) then begin
            ignore (!stringBuffer#append ((((("Log db password should be < " ^ java_string_of (Obj.repr (mAX))) ^ " and > ") ^ java_string_of (Obj.repr (mINPASSWORD))) ^ " characters in length.<br />")))
        end;
        if (not (self#isJdbcDriverValid (inventoryJdbcDriver))) then begin
            isJdbcDriversValid := false;
            ignore (!stringBuffer#append ((self#getJdbcDriverValidationInfo (inventoryJdbcDriver))))
        end;
        if (not (!stringValidationUtil#isValidRequired (inventoryName, mIN, mAXDB))) then begin
            ignore (!stringBuffer#append ((((("Inventory db should be < " ^ java_string_of (Obj.repr (mAXDB))) ^ " and > ") ^ java_string_of (Obj.repr (mIN))) ^ " characters in length.<br />")))
        end;
        if (not (!stringValidationUtil#isValidRequired (inventoryUserName, mIN, mAX))) then begin
            ignore (!stringBuffer#append ((((("Inventory db username should be < " ^ java_string_of (Obj.repr (mAX))) ^ " and > ") ^ java_string_of (Obj.repr (mIN))) ^ " characters in length.<br />")))
        end;
        if (not (!stringValidationUtil#isValidNotRequired (inventoryPassword, mINPASSWORD, mAX))) then begin
            ignore (!stringBuffer#append ((((("Inventory DB password should be < " ^ java_string_of (Obj.repr (mAX))) ^ " and > ") ^ java_string_of (Obj.repr (mINPASSWORD))) ^ " characters in length.<br />")))
        end;
        if (not (self#isJdbcDriverValid (staticPagesJdbcDriver))) then begin
            isJdbcDriversValid := false;
            ignore (!stringBuffer#append ((self#getJdbcDriverValidationInfo (staticPagesJdbcDriver))))
        end;
        if (not (!stringValidationUtil#isValidRequired (staticPagesName, mIN, mAXDB))) then begin
            ignore (!stringBuffer#append ((((("Static Pages db should be < " ^ java_string_of (Obj.repr (mAXDB))) ^ " and > ") ^ java_string_of (Obj.repr (mIN))) ^ " characters in length.<br />")))
        end;
        if (not (!stringValidationUtil#isValidRequired (staticPagesUserName, mIN, mAX))) then begin
            ignore (!stringBuffer#append ((((("Static Pages db username should be < " ^ java_string_of (Obj.repr (mAX))) ^ " and > ") ^ java_string_of (Obj.repr (mIN))) ^ " characters in length.<br />")))
        end;
        if (not (!stringValidationUtil#isValidNotRequired (staticPagesPassword, mINPASSWORD, mAX))) then begin
            ignore (!stringBuffer#append ((((("Static Pages DB password should be < " ^ java_string_of (Obj.repr (mAX))) ^ " and > ") ^ java_string_of (Obj.repr (mINPASSWORD))) ^ " characters in length.<br />")))
        end;
        if (not !isJdbcDriversValid) then begin
            ignore (!stringBuffer#append ((self#getJdbcDriverSolutionInfo ())))
        end;
        (java_string_of (Obj.repr !stringBuffer))
        end
    

    method set () : unit =
        begin
        ignore ((Obj.magic logUtil)#putF ("Creating DB connection files", self, "set()"));
        let userDbInitInfo : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "UserDbInitInfo" (Obj.repr (false)))))) in ();
        ignore ((Obj.magic !userDbInitInfo)#setJdbcDriver (userJdbcDriver));
        ignore ((Obj.magic !userDbInitInfo)#setName (userName));
        ignore ((Obj.magic !userDbInitInfo)#setUserName (userUserName));
        ignore ((Obj.magic !userDbInitInfo)#setPassword (userPassword));
        ignore ((Obj.magic !userDbInitInfo)#setSchema (userSchema));
        ignore ((Obj.magic !userDbInitInfo)#setServer (userServer));
        ignore ((Obj.magic !userDbInitInfo)#setPort (userPort));
        ignore ((Obj.magic !userDbInitInfo)#setHasRead (true));
        ignore ((Obj.magic !userDbInitInfo)#write ());
        let historyDbInitInfo : HistoryDbInitInfo.historyDbInitInfo ref = ref (((new HistoryDbInitInfo.historyDbInitInfo (false)) :> HistoryDbInitInfo.historyDbInitInfo)) in ();
        ignore (!historyDbInitInfo#setJdbcDriver (historyJdbcDriver));
        ignore (!historyDbInitInfo#setName (historyName));
        ignore (!historyDbInitInfo#setUserName (historyUserName));
        ignore (!historyDbInitInfo#setPassword (historyPassword));
        ignore (!historyDbInitInfo#setSchema (historySchema));
        ignore (!historyDbInitInfo#setServer (historyServer));
        ignore (!historyDbInitInfo#setPort (historyPort));
        ignore (!historyDbInitInfo#setHasRead (true));
        ignore (!historyDbInitInfo#write ());
        let logDbInitInfo : LogDbInitInfo.logDbInitInfo ref = ref (((new LogDbInitInfo.logDbInitInfo (false)) :> LogDbInitInfo.logDbInitInfo)) in ();
        ignore (!logDbInitInfo#setJdbcDriver (logJdbcDriver));
        ignore (!logDbInitInfo#setName (logName));
        ignore (!logDbInitInfo#setUserName (logUserName));
        ignore (!logDbInitInfo#setPassword (logPassword));
        ignore (!logDbInitInfo#setSchema (logSchema));
        ignore (!logDbInitInfo#setServer (logServer));
        ignore (!logDbInitInfo#setPort (logPort));
        ignore (!logDbInitInfo#setHasRead (true));
        ignore (!logDbInitInfo#write ());
        let staticPagesDbInitInfo : StaticPagesDbInitInfo.staticPagesDbInitInfo ref = ref (((new StaticPagesDbInitInfo.staticPagesDbInitInfo (false)) :> StaticPagesDbInitInfo.staticPagesDbInitInfo)) in ();
        ignore (!staticPagesDbInitInfo#setJdbcDriver (staticPagesJdbcDriver));
        ignore (!staticPagesDbInitInfo#setName (staticPagesName));
        ignore (!staticPagesDbInitInfo#setUserName (staticPagesUserName));
        ignore (!staticPagesDbInitInfo#setPassword (staticPagesPassword));
        ignore (!staticPagesDbInitInfo#setSchema (staticPagesSchema));
        ignore (!staticPagesDbInitInfo#setServer (staticPagesServer));
        ignore (!staticPagesDbInitInfo#setPort (staticPagesPort));
        ignore (!staticPagesDbInitInfo#setHasRead (true));
        ignore (!staticPagesDbInitInfo#write ());
        let inventoryDbInitInfo : InventoryDbInitInfo.inventoryDbInitInfo ref = ref (((new InventoryDbInitInfo.inventoryDbInitInfo (false)) :> InventoryDbInitInfo.inventoryDbInitInfo)) in ();
        ignore (!inventoryDbInitInfo#setJdbcDriver (inventoryJdbcDriver));
        ignore (!inventoryDbInitInfo#setName (inventoryName));
        ignore (!inventoryDbInitInfo#setUserName (inventoryUserName));
        ignore (!inventoryDbInitInfo#setPassword (inventoryPassword));
        ignore (!inventoryDbInitInfo#setSchema (inventorySchema));
        ignore (!inventoryDbInitInfo#setServer (inventoryServer));
        ignore (!inventoryDbInitInfo#setPort (inventoryPort));
        ignore (!inventoryDbInitInfo#setHasRead (true));
        ignore (!inventoryDbInitInfo#write ());
        ignore ((Obj.magic logUtil)#putF ("Created DB connection files", self, "set()"))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        userJdbcDriver <- "";
        userName <- "";
        userUserName <- "";
        userPassword <- "";
        userSchema <- "";
        userServer <- "";
        userPort <- "";
        historyJdbcDriver <- "";
        historyName <- "";
        historyUserName <- "";
        historyPassword <- "";
        historySchema <- "";
        historyServer <- "";
        historyPort <- "";
        logJdbcDriver <- "";
        logName <- "";
        logUserName <- "";
        logPassword <- "";
        logSchema <- "";
        logServer <- "";
        logPort <- "";
        inventoryJdbcDriver <- "";
        inventoryName <- "";
        inventoryUserName <- "";
        inventoryPassword <- "";
        inventorySchema <- "";
        inventoryServer <- "";
        inventoryPort <- "";
        staticPagesJdbcDriver <- "";
        staticPagesName <- "";
        staticPagesUserName <- "";
        staticPagesPassword <- "";
        staticPagesSchema <- "";
        staticPagesServer <- "";
        staticPagesPort <- "";
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
        (self#getFormData (!hashMap))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "Initializer" (fun arguments -> Obj.repr (new initializer (Obj.obj arguments)))


