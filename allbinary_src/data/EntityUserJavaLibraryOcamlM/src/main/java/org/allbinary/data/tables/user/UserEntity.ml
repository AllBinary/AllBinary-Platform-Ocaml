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
(* package org.allbinary.data.tables.user *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.init.db.UserDbInitInfo *)
(* import org.allbinary.business.user.CreateUserFactory *)
(* import org.allbinary.business.user.UserData *)
(* import org.allbinary.business.user.UserInterface *)
(* import org.allbinary.business.user.modules.User *)
(* import org.allbinary.business.user.role.UserRole *)
(* import org.allbinary.business.user.role.UserRoleData *)
(* import org.allbinary.business.user.role.UserRoleFactory *)
(* import org.allbinary.globals.GLOBALS2 *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlBean *)
(* import org.allbinary.logic.control.crypt.SuperCrypt *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)

class userEntity () =
  object (self)
    inherit AbSqlBean.abSqlBean ((Obj.obj (java_new "UserDbInitInfo" (Obj.repr ())))) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable tableName : string = ""
    method tableName = tableName
    method set_tableName value' = tableName <- value'
    val mutable cOMMAND_SUCCESS_FOR_USER : string = ""
    method cOMMAND_SUCCESS_FOR_USER = cOMMAND_SUCCESS_FOR_USER
    method set_cOMMAND_SUCCESS_FOR_USER value' = cOMMAND_SUCCESS_FOR_USER <- value'
    val mutable pASSWORD_LABEL : string = ""
    method pASSWORD_LABEL = pASSWORD_LABEL
    method set_pASSWORD_LABEL value' = pASSWORD_LABEL <- value'
    val mutable eQUALS : string = ""
    method eQUALS = eQUALS
    method set_eQUALS value' = eQUALS <- value'
    val mutable cOMMAND_SUCCESS_BUT_LOGIN_FAILED : string = ""
    method cOMMAND_SUCCESS_BUT_LOGIN_FAILED = cOMMAND_SUCCESS_BUT_LOGIN_FAILED
    method set_cOMMAND_SUCCESS_BUT_LOGIN_FAILED value' = cOMMAND_SUCCESS_BUT_LOGIN_FAILED <- value'
    val mutable iNVALID_PASSWORD_LABEL : string = ""
    method iNVALID_PASSWORD_LABEL = iNVALID_PASSWORD_LABEL
    method set_iNVALID_PASSWORD_LABEL value' = iNVALID_PASSWORD_LABEL <- value'
    val mutable nOT_EQUAL : string = ""
    method nOT_EQUAL = nOT_EQUAL
    method set_nOT_EQUAL value' = nOT_EQUAL <- value'
    val mutable eND_QUOTES : string = ""
    method eND_QUOTES = eND_QUOTES
    method set_eND_QUOTES value' = eND_QUOTES <- value'
    
    

    method insert : 'any1. 'any1 -> unit = fun (values) ->
        let values = Obj.repr values in
        begin
        (try
            ignore (super#insert ((Obj.magic values)));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sUCCESS, self, iNSERT))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, iNSERT, e))
            end
        end)
        end [@@warning "-7-20"]
    

    method getAdministrators () : BasicArrayList.basicArrayList =
        begin
        ((self#getUsersWithRole ((UserRoleFactory.getInstance ())#aDMINISTRATOR)) :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method getStoreManagers : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (storeFrontInterface) ->
        let storeFrontInterface = Obj.repr storeFrontInterface in
        begin
        let keysAndValues : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        let usersVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!keysAndValues#put ((java_string_of (Obj.repr (UserRoleData.get_nAME ()))), (java_string_of (Obj.repr (UserRoleFactory.getInstance ())#sTOREMANAGER))));
        ignore (!keysAndValues#put ((UserData.get_pERMISSIONS ()), ((Obj.magic storeFrontInterface)#getName ())));
        let usersHashMapVector : BasicArrayList.basicArrayList ref = ref (((super#getRows (!keysAndValues)) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!usersHashMapVector#size ())) in ();
        for i = 0 to !size - 1 do
            let userHashMap : java_hash_map ref = ref (((Obj.magic (!usersHashMapVector#get (i))) :> java_hash_map)) in ();
            if (!userHashMap != (Obj.magic 0)) then begin
                ignore (!usersVector#add ((Obj.obj (java_new "User" (Obj.repr (!userHashMap))))))
            end
        done;
        (!usersVector :> BasicArrayList.basicArrayList)
        end [@@warning "-7-20"]
    

    method getCustomers () : BasicArrayList.basicArrayList =
        begin
        ((self#getUsersWithRole ((UserRoleFactory.getInstance ())#cUSTOMER)) :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method getUsersWithRole : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (userRole) ->
        let userRole = Obj.repr userRole in
        begin
        let keysAndValues : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        let usersVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!keysAndValues#put ((java_string_of (Obj.repr (UserRoleData.get_nAME ()))), (java_string_of (Obj.repr (Obj.magic userRole)))));
        let usersHashMapVector : BasicArrayList.basicArrayList ref = ref (((super#getRows (!keysAndValues)) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!usersHashMapVector#size ())) in ();
        for index = 0 to !size - 1 do
            let userHashMap : java_hash_map ref = ref (((Obj.magic (!usersHashMapVector#get (index))) :> java_hash_map)) in ();
            if (!userHashMap != (Obj.magic 0)) then begin
                ignore (!usersVector#add ((Obj.obj (java_new "User" (Obj.repr (!userHashMap))))))
            end
        done;
        (!usersVector :> BasicArrayList.basicArrayList)
        end [@@warning "-7-20"]
    

    method getUsers : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (storeFrontInterface) ->
        let storeFrontInterface = Obj.repr storeFrontInterface in
        begin
        let keysAndValues : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        let usersVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!keysAndValues#put ((StoreFrontData.getInstance ())#nAME, ((Obj.magic storeFrontInterface)#getName ())));
        let usersHashMapVector : BasicArrayList.basicArrayList ref = ref (((super#getRows (!keysAndValues)) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!usersHashMapVector#size ())) in ();
        for index = 0 to !size - 1 do
            let userHashMap : java_hash_map ref = ref (((Obj.magic (!usersHashMapVector#get (index))) :> java_hash_map)) in ();
            if (!userHashMap != (Obj.magic 0)) then begin
                ignore (!usersVector#add ((Obj.obj (java_new "User" (Obj.repr (!userHashMap))))))
            end
        done;
        (!usersVector :> BasicArrayList.basicArrayList)
        end [@@warning "-7-20"]
    

    method getUser ((userName : string)) : UserInterface.userInterface =
        try
        begin
        let row : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!row#put ((UserData.get_uSERNAME ()), userName));
        let userHashMap : java_hash_map ref = ref (((super#getRow (!row)) :> java_hash_map)) in ();
        if (!userHashMap != (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr ((CreateUserFactory.getInstance (!userHashMap)))))
        end else begin
            raise (Java_return (Obj.repr ((Obj.magic 0))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method deleteWhere ((key : string), (value : string)) : unit =
        begin
        (try
            ignore (super#deleteWhere (key, value));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sUCCESS, self, "deleteWhere"))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, "deleteWhere", e))
            end
        end)
        end [@@warning "-7"]
    

    method login ((userName : string), (password : string)) : string =
        try
        begin
        (try
            let isUserNameAndPasswordCorrect : int ref = ref (0) in ();
            let result : string ref = ref ((super#getField ((UserData.get_uSERNAME ()), userName, (UserData.get_pASSWORD ())))) in ();
            let encryption : string ref = ref ((super#getField ((UserData.get_uSERNAME ()), userName, (EntryData.getInstance ())#eNCRYPTION))) in ();
            if ((!encryption <> (Obj.magic 0)) && ((String.compare !encryption ((self#stringUtil)#eMPTY_STRING)) != 0)) then begin
                isUserNameAndPasswordCorrect := (String.compare !result (((Obj.obj (java_new "SuperCrypt" (Obj.repr (((Obj.obj (java_new "Integer" (Obj.repr (!encryption))))#intValue ())))))#encrypt (password))))
            end else begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                    ignore ((Obj.magic logUtil)#putF ((("Command Success but login failed for user: " ^ userName) ^ " because user did not exist"), self, "login"))
                end;
                raise (Java_return (Obj.repr ((GLOBALS2.get_lOGINFAILED ()))))
            end;
            if (!isUserNameAndPasswordCorrect = 0) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                    let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                    ignore (!stringBuffer#append (cOMMAND_SUCCESS_FOR_USER));
                    ignore (!stringBuffer#append (userName));
                    ignore (!stringBuffer#append (pASSWORD_LABEL));
                    ignore (!stringBuffer#append (password));
                    ignore (!stringBuffer#append (eQUALS));
                    ignore (!stringBuffer#append (!result));
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "login"))
                end;
                raise (Java_return (Obj.repr ((GLOBALS2.get_lOGINSUCCESS ()))))
            end else begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                    let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                    ignore (!stringBuffer#append (cOMMAND_SUCCESS_BUT_LOGIN_FAILED));
                    ignore (!stringBuffer#append (userName));
                    ignore (!stringBuffer#append (iNVALID_PASSWORD_LABEL));
                    ignore (!stringBuffer#append (((Obj.obj (java_new "SuperCrypt" (Obj.repr (((Obj.obj (java_new "Integer" (Obj.repr (!encryption))))#intValue ())))))#encrypt (password))));
                    ignore (!stringBuffer#append (nOT_EQUAL));
                    ignore (!stringBuffer#append (!result));
                    ignore (!stringBuffer#append (eND_QUOTES));
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "login"))
                end;
                raise (Java_return (Obj.repr ((GLOBALS2.get_lOGINFAILED ()))))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, "login", e))
            end;
            "Error"
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method update ((userName : string), (updatedValues : java_hash_map)) : unit =
        begin
        ignore (super#updateWhere ((UserData.get_uSERNAME ()), userName, updatedValues))
        end [@@warning "-7"]
    

    method dropTables () : string =
        begin
        (super#dropTable ())
        end [@@warning "-7"]
    

    method createTableStatement () : string =
        begin
        let entryData : EntryData.entryData ref = ref (((EntryData.getInstance ()) :> EntryData.entryData)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore ((((((((((((((((((((((((((((((((((((((((((((((((((((((((!stringBuffer#append ((self#sqlStrings)#cREATE_TABLE))#append (tableName))#append ((self#sqlStrings)#sTART))#append ((UserData.get_uSERNAME ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append ((UserData.get_pREFIXNAME ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN))#append ((UserData.get_fIRSTNAME ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN))#append ((UserData.get_lASTNAME ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN))#append ((UserData.get_mIDDLENAME ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN))#append ((UserData.get_sUFFIXNAME ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN))#append ((UserData.get_cOMPANY ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN))#append ((UserData.get_pOSITIONATCOMPANY ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN))#append ((UserData.get_mAINEMAIL ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append ((UserData.get_sECONDARYEMAIL ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN))#append ((UserData.get_hOMEPHONE ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN))#append ((UserData.get_cELLPHONE ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN))#append ((UserData.get_wORKPHONE ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN))#append ((UserData.get_oTHERCONTACT ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN))#append ((UserData.get_eLECTRONICDEVICE ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN))#append ((UserData.get_fAX ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN))#append ((java_string_of (Obj.repr (UserRoleData.get_nAME ())))))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append ((UserData.get_cONFIGURATION ())))#append ((self#sqlTypeStrings)#bLOB_NOT_NULL))#append ((UserData.get_pERMISSIONS ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN))#append (!entryData#eNCRYPTION))#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((UserData.get_sECRET ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN))#append ((UserData.get_pASSWORD ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append (!entryData#eNABLE))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN))#append (!entryData#tIMECREATED))#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append (!entryData#lASTMODIFIED))#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((self#sqlStrings)#pRIMARY_KEY))#append ((UserData.get_uSERNAME ())))#append ((self#sqlStrings)#eND));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]
    

    method createTable () : string =
        begin
        (super#createTable ((self#createTableStatement ())))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        tableName <- "user";
        cOMMAND_SUCCESS_FOR_USER <- "Command Success for user: ";
        pASSWORD_LABEL <- " Password: ";
        eQUALS <- "==";
        cOMMAND_SUCCESS_BUT_LOGIN_FAILED <- "Command Success but login failed for user: ";
        iNVALID_PASSWORD_LABEL <- " Password: \n\"";
        nOT_EQUAL <- "\"!=\"";
        eND_QUOTES <- (CommonSeps.getInstance ())#qUOTE;
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setTableName (tableName))
      end
  end [@@warning "-20"]
let () = java_register_constructor "UserEntity" (fun arguments -> Obj.repr (new userEntity (Obj.obj arguments)))


