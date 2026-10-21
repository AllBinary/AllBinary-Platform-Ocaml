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
(* package org.allbinary.business.user.modules *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Calendar *)
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.servlet.http.HttpServletRequest *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.user.UserData *)
(* import org.allbinary.business.user.UserInterface *)
(* import org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping *)
(* import org.allbinary.business.user.modules.configuration.UserConfigurationInterface *)
(* import org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory *)
(* import org.allbinary.business.user.password.Password *)
(* import org.allbinary.business.user.role.UserRole *)
(* import org.allbinary.business.user.role.UserRoleB *)
(* import org.allbinary.business.user.role.UserRoleData *)
(* import org.allbinary.business.user.username.UserName *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.http.request.RequestParams *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSessionData *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class user () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable userName : string = ""
    method userName = userName
    method set_userName value' = userName <- value'
    val mutable prefixName : string = ""
    method prefixName = prefixName
    method set_prefixName value' = prefixName <- value'
    val mutable firstName : string = ""
    method firstName = firstName
    method set_firstName value' = firstName <- value'
    val mutable lastName : string = ""
    method lastName = lastName
    method set_lastName value' = lastName <- value'
    val mutable middleName : string = ""
    method middleName = middleName
    method set_middleName value' = middleName <- value'
    val mutable suffixName : string = ""
    method suffixName = suffixName
    method set_suffixName value' = suffixName <- value'
    val mutable company : string = ""
    method company = company
    method set_company value' = company <- value'
    val mutable positionAtCompany : string = ""
    method positionAtCompany = positionAtCompany
    method set_positionAtCompany value' = positionAtCompany <- value'
    val mutable mainEmail : string = ""
    method mainEmail = mainEmail
    method set_mainEmail value' = mainEmail <- value'
    val mutable secondaryEmail : string = ""
    method secondaryEmail = secondaryEmail
    method set_secondaryEmail value' = secondaryEmail <- value'
    val mutable homePhone : string = ""
    method homePhone = homePhone
    method set_homePhone value' = homePhone <- value'
    val mutable cellPhone : string = ""
    method cellPhone = cellPhone
    method set_cellPhone value' = cellPhone <- value'
    val mutable workPhone : string = ""
    method workPhone = workPhone
    method set_workPhone value' = workPhone <- value'
    val mutable otherContact : string = ""
    method otherContact = otherContact
    method set_otherContact value' = otherContact <- value'
    val mutable electronicDevice : string = ""
    method electronicDevice = electronicDevice
    method set_electronicDevice value' = electronicDevice <- value'
    val mutable fax : string = ""
    method fax = fax
    method set_fax value' = fax <- value'
    val mutable role : UserRole.userRole = (Obj.magic 0)
    method role = role
    method set_role value' = role <- value'
    val mutable encryption : string = ""
    method encryption = encryption
    method set_encryption value' = encryption <- value'
    val mutable secret : string = ""
    method secret = secret
    method set_secret value' = secret <- value'
    val mutable password : Password.password = (Obj.magic 0)
    method password = password
    method set_password value' = password <- value'
    val mutable enable : string = ""
    method enable = enable
    method set_enable value' = enable <- value'
    val mutable permissions : string = ""
    method permissions = permissions
    method set_permissions value' = permissions <- value'
    val mutable userConfigurationInterface : UserConfigurationInterface.userConfigurationInterface = (Obj.magic 0)
    method userConfigurationInterface = userConfigurationInterface
    method set_userConfigurationInterface value' = userConfigurationInterface <- value'
    
    
    
    

    method getFormData ((userHashMap : java_hash_map)) : unit =
        begin
        userName <- ((new UserName.userName (userHashMap))#get ());
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        let passwordString : string ref = ref ((!stringUtil#getNonNull ((Obj.magic (userHashMap#get ((UserData.get_pASSWORD ()))))))) in ();
        let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
        if ((!stringValidationUtil#isEmpty (userName)) && (!stringValidationUtil#isEmpty (!passwordString))) then begin
            userName <- (!stringUtil#getNonNull ((Obj.magic (userHashMap#get ((WeblisketSessionData.get_rEMOVABLEUSERNAME ()))))));
            passwordString := (!stringUtil#getNonNull ((Obj.magic (userHashMap#get ((WeblisketSessionData.get_rEMOVABLEPASSWORD ()))))))
        end;
        let encryption_arg : string ref = ref ((!stringUtil#getNonNull ((Obj.magic (userHashMap#get ((EntryData.getInstance ())#eNCRYPTION)))))) in ();
        let secret_arg : string ref = ref ((!stringUtil#getNonNull ((Obj.magic (userHashMap#get ((UserData.get_sECRET ()))))))) in ();
        password <- (new Password.password (!passwordString));
        prefixName <- (!stringUtil#getNonNull ((Obj.magic (userHashMap#get ((UserData.get_pREFIXNAME ()))))));
        firstName <- (!stringUtil#getNonNull ((Obj.magic (userHashMap#get ((UserData.get_fIRSTNAME ()))))));
        lastName <- (!stringUtil#getNonNull ((Obj.magic (userHashMap#get ((UserData.get_lASTNAME ()))))));
        middleName <- (!stringUtil#getNonNull ((Obj.magic (userHashMap#get ((UserData.get_mIDDLENAME ()))))));
        suffixName <- (!stringUtil#getNonNull ((Obj.magic (userHashMap#get ((UserData.get_sUFFIXNAME ()))))));
        company <- (!stringUtil#getNonNull ((Obj.magic (userHashMap#get ((UserData.get_cOMPANY ()))))));
        positionAtCompany <- (!stringUtil#getNonNull ((Obj.magic (userHashMap#get ((UserData.get_pOSITIONATCOMPANY ()))))));
        mainEmail <- (!stringUtil#getNonNull ((Obj.magic (userHashMap#get ((UserData.get_mAINEMAIL ()))))));
        secondaryEmail <- (!stringUtil#getNonNull ((Obj.magic (userHashMap#get ((UserData.get_sECONDARYEMAIL ()))))));
        homePhone <- (!stringUtil#getNonNull ((Obj.magic (userHashMap#get ((UserData.get_hOMEPHONE ()))))));
        cellPhone <- (!stringUtil#getNonNull ((Obj.magic (userHashMap#get ((UserData.get_cELLPHONE ()))))));
        workPhone <- (!stringUtil#getNonNull ((Obj.magic (userHashMap#get ((UserData.get_wORKPHONE ()))))));
        otherContact <- (!stringUtil#getNonNull ((Obj.magic (userHashMap#get ((UserData.get_oTHERCONTACT ()))))));
        electronicDevice <- (!stringUtil#getNonNull ((Obj.magic (userHashMap#get ((UserData.get_eLECTRONICDEVICE ()))))));
        fax <- (!stringUtil#getNonNull ((Obj.magic (userHashMap#get ((UserData.get_fAX ()))))));
        role <- (Obj.magic (java_call_static "UserRoleB.getRole" (Obj.repr ((Obj.magic (userHashMap#get ((java_string_of (Obj.repr (UserRoleData.get_nAME ()))))))))));
        permissions <- (!stringUtil#getNonNull ((Obj.magic (userHashMap#get ((UserData.get_pERMISSIONS ()))))));
        if ((not (!stringValidationUtil#isEmpty (permissions))) && ((String.compare permissions ((StoreFrontData.getInstance ())#nAME)) == 0)) then begin
            permissions <- (!stringUtil#getNonNull ((Obj.magic (userHashMap#get ((StoreFrontData.getInstance ())#nAME)))))
        end else if (permissions = (Obj.magic 0)) then begin
            permissions <- "No Permissions"
        end;
        enable <- (!stringUtil#getNonNull ((Obj.magic (userHashMap#get ((EntryData.getInstance ())#eNABLE)))))
        end
    

    method isValid () : bool =
        begin
        (try
            let valid : bool ref = ref (true) in ();
            if (not (((UserName.getInstance ())#isValid (userName))#booleanValue ())) then begin
                valid := false
            end;
            if (not ((password#isValid ())#booleanValue ())) then begin
                valid := false
            end;
            let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
            if (not (!stringValidationUtil#isValidRequired (firstName, 1, (UserData.get_mAXLEN ())))) then begin
                valid := false
            end;
            if (not (!stringValidationUtil#isValidRequired (lastName, 1, (UserData.get_mAXLEN ())))) then begin
                valid := false
            end;
            if ((not (!stringValidationUtil#isValidRequired (mainEmail, 1, (UserData.get_mAXLEN ())))) || ((java_string_index_of mainEmail (Obj.repr ("@"))) == (-1))) then begin
                valid := false
            end;
            !valid
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vALIDATIONERROR)) then begin
                let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
                ignore ((Obj.magic logUtil)#put ("Failed to validate form", self, !commonStrings#iS_VALID, e))
            end;
            false
        end)
        end
    

    method validationInfo () : string =
        begin
        (try
            let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ((UserName.getValidationInfo (userName))));
            ignore (!stringBuffer#append ((password#getValidationInfo ())));
            if (not (!stringValidationUtil#isValidRequired (firstName, 1, (UserData.get_mAXLEN ())))) then begin
                ignore (!stringBuffer#append ("Please enter a valid First Name.<br />"))
            end;
            if (not (!stringValidationUtil#isValidRequired (lastName, 1, (UserData.get_mAXLEN ())))) then begin
                ignore (!stringBuffer#append ("Please enter a valid Last Name.<br />"))
            end;
            if ((not (!stringValidationUtil#isValidRequired (mainEmail, 1, (UserData.get_mAXLEN ())))) || ((java_string_index_of mainEmail (Obj.repr ("@"))) == (-1))) then begin
                ignore (!stringBuffer#append ("Please enter a valid email address.<br />"))
            end;
            (java_string_of (Obj.repr !stringBuffer))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to generate validation error info", self, "validationInfo()", e))
            end;
            "Error Validating Form"
        end)
        end
    

    method setUserName ((value : string)) : unit =
        begin
        userName <- value
        end
    

    method setPrefixName ((value : string)) : unit =
        begin
        prefixName <- value
        end
    

    method setFirstName ((value : string)) : unit =
        begin
        firstName <- value
        end
    

    method setLastName ((value : string)) : unit =
        begin
        lastName <- value
        end
    

    method setMiddleName ((value : string)) : unit =
        begin
        middleName <- value
        end
    

    method setSuffixName ((value : string)) : unit =
        begin
        suffixName <- value
        end
    

    method setCompany ((value : string)) : unit =
        begin
        company <- value
        end
    

    method setPositionAtCompany ((value : string)) : unit =
        begin
        positionAtCompany <- value
        end
    

    method setMainEmail ((value : string)) : unit =
        begin
        mainEmail <- value
        end
    

    method setSecondaryEmail ((value : string)) : unit =
        begin
        secondaryEmail <- value
        end
    

    method setHomePhone ((value : string)) : unit =
        begin
        homePhone <- value
        end
    

    method setCellPhone ((value : string)) : unit =
        begin
        cellPhone <- value
        end
    

    method setWorkPhone ((value : string)) : unit =
        begin
        workPhone <- value
        end
    

    method setOtherContact ((value : string)) : unit =
        begin
        otherContact <- value
        end
    

    method setElectronicContact ((value : string)) : unit =
        begin
        electronicDevice <- value
        end
    

    method setFax ((value : string)) : unit =
        begin
        fax <- value
        end
    

    method setRole : 'any1. 'any1 -> unit = fun (role_arg) ->
        let role_arg = Obj.repr role_arg in
        begin
        role <- (Obj.magic role_arg)
        end [@@warning "-20"]
    

    method setPermissions ((value : string)) : unit =
        begin
        permissions <- value
        end
    

    method setEncryption ((value : string)) : unit =
        begin
        encryption <- value
        end
    

    method setSecret ((value : string)) : unit =
        begin
        secret <- value
        end
    

    method setPassword ((value : string)) : unit =
        begin
        ignore (password#set (value))
        end
    

    method enable () : unit =
        begin
        (self#setEnable ("Yes"))
        end
    

    method disable () : unit =
        begin
        (self#setEnable ("No"))
        end
    

    method setEnable ((enable_arg : string)) : unit =
        begin
        enable <- enable_arg
        end
    

    method getUserName () : string =
        begin
        userName
        end
    

    method getPrefixName () : string =
        begin
        prefixName
        end
    

    method getFirstName () : string =
        begin
        firstName
        end
    

    method getLastName () : string =
        begin
        lastName
        end
    

    method getMiddleName () : string =
        begin
        middleName
        end
    

    method getSuffixName () : string =
        begin
        suffixName
        end
    

    method getCompany () : string =
        begin
        company
        end
    

    method getPositionAtCompany () : string =
        begin
        positionAtCompany
        end
    

    method getMainEmail () : string =
        begin
        mainEmail
        end
    

    method getSecondaryEmail () : string =
        begin
        secondaryEmail
        end
    

    method getHomePhone () : string =
        begin
        homePhone
        end
    

    method getCellPhone () : string =
        begin
        cellPhone
        end
    

    method getWorkPhone () : string =
        begin
        workPhone
        end
    

    method getOtherContact () : string =
        begin
        otherContact
        end
    

    method getElectronicContact () : string =
        begin
        electronicDevice
        end
    

    method getFax () : string =
        begin
        fax
        end
    

    method getRole () : UserRole.userRole =
        begin
        (role :> UserRole.userRole)
        end
    

    method getPermissions () : string =
        begin
        permissions
        end
    

    method getEncryption () : string =
        begin
        encryption
        end
    

    method getSecret () : string =
        begin
        secret
        end
    

    method getPassword () : string =
        begin
        (password#get ())
        end
    

    method toVector () : BasicArrayList.basicArrayList =
        begin
        let values : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!values#add (userName));
        ignore (!values#add (prefixName));
        ignore (!values#add (firstName));
        ignore (!values#add (lastName));
        ignore (!values#add (middleName));
        ignore (!values#add (suffixName));
        ignore (!values#add (company));
        ignore (!values#add (positionAtCompany));
        ignore (!values#add (mainEmail));
        ignore (!values#add (secondaryEmail));
        ignore (!values#add (homePhone));
        ignore (!values#add (cellPhone));
        ignore (!values#add (workPhone));
        ignore (!values#add (otherContact));
        ignore (!values#add (electronicDevice));
        ignore (!values#add (fax));
        ignore (!values#add ((java_string_of (Obj.repr (self#getRole ())))));
        let userConfigurationDomDocumentMapping : UserConfigurationDomDocumentMapping.userConfigurationDomDocumentMapping ref = ref (((new UserConfigurationDomDocumentMapping.userConfigurationDomDocumentMapping ((self#getUserConfigurationInterface ()))) :> UserConfigurationDomDocumentMapping.userConfigurationDomDocumentMapping)) in ();
        ignore (!values#add ((!userConfigurationDomDocumentMapping#toDomDocumentString ())));
        ignore (!values#add (permissions));
        ignore (!values#addAllList ((password#toVector (secret))));
        ignore (!values#add (enable));
        let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
        let time : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr ((!calendar#getTimeInMillis ())))))))))))) in ();
        ignore (!values#add (!time));
        ignore (!values#add (!time));
        (!values :> BasicArrayList.basicArrayList)
        end
    

    method toHashMap () : java_hash_map =
        begin
        let values : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!values#put ((UserData.get_uSERNAME ()), userName));
        ignore (!values#put ((UserData.get_pREFIXNAME ()), prefixName));
        ignore (!values#put ((UserData.get_fIRSTNAME ()), firstName));
        ignore (!values#put ((UserData.get_lASTNAME ()), lastName));
        ignore (!values#put ((UserData.get_mIDDLENAME ()), middleName));
        ignore (!values#put ((UserData.get_sUFFIXNAME ()), suffixName));
        ignore (!values#put ((UserData.get_cOMPANY ()), company));
        ignore (!values#put ((UserData.get_pOSITIONATCOMPANY ()), positionAtCompany));
        ignore (!values#put ((UserData.get_mAINEMAIL ()), mainEmail));
        ignore (!values#put ((UserData.get_sECONDARYEMAIL ()), secondaryEmail));
        ignore (!values#put ((UserData.get_hOMEPHONE ()), homePhone));
        ignore (!values#put ((UserData.get_cELLPHONE ()), cellPhone));
        ignore (!values#put ((UserData.get_wORKPHONE ()), workPhone));
        ignore (!values#put ((UserData.get_oTHERCONTACT ()), otherContact));
        ignore (!values#put ((UserData.get_eLECTRONICDEVICE ()), electronicDevice));
        ignore (!values#put ((UserData.get_fAX ()), fax));
        if ((self#getRole ()) != (Obj.magic 0)) then begin
            ignore (!values#put ((java_string_of (Obj.repr (UserRoleData.get_nAME ()))), (java_string_of (Obj.repr (self#getRole ())))))
        end;
        let userConfigurationDomDocumentMapping : UserConfigurationDomDocumentMapping.userConfigurationDomDocumentMapping ref = ref (((new UserConfigurationDomDocumentMapping.userConfigurationDomDocumentMapping ((self#getUserConfigurationInterface ()))) :> UserConfigurationDomDocumentMapping.userConfigurationDomDocumentMapping)) in ();
        ignore (!values#put ((UserData.get_cONFIGURATION ()), (!userConfigurationDomDocumentMapping#toDomDocumentString ())));
        ignore (!values#put ((UserData.get_pERMISSIONS ()), permissions));
        ignore (!values#putAll ((password#toHashMap (secret))));
        ignore (!values#put ((EntryData.getInstance ())#eNABLE, enable));
        let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
        let time : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr ((!calendar#getTimeInMillis ())))))))))))) in ();
        ignore (!values#put ((EntryData.getInstance ())#lASTMODIFIED, !time));
        (!values :> java_hash_map)
        end
    

    method toPasswordHashMap () : java_hash_map =
        begin
        ((password#toHashMap (secret)) :> java_hash_map)
        end
    

    method validateSession : 'any1. 'any1 -> unit = fun (weblisketSession) ->
        let weblisketSession = Obj.repr weblisketSession in
        begin
        ignore ((Obj.magic weblisketSession)#setAuthenticated ());
        ignore ((Obj.magic weblisketSession)#setRole ((self#getRole ())));
        ignore ((Obj.magic weblisketSession)#setUserName ((self#getUserName ())))
        end [@@warning "-20"]
    

    method updateSession : 'any1. 'any1 -> unit = fun (_weblisketSession) ->
        begin
        ()
        end [@@warning "-20"]
    

    method isSessionValid () : bool =
        begin
        true
        end
    

    method getKey () : Obj.t =
        begin
        (Obj.repr ((Obj.magic userName)))
        end
    

    method toValidationInfoDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end
    

    method toValidationInfoNode : 'any1 'return. 'any1 -> 'return = fun (_document) ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-20"]
    

    method getUserConfigurationInterface () : UserConfigurationInterface.userConfigurationInterface =
        begin
        (userConfigurationInterface :> UserConfigurationInterface.userConfigurationInterface)
        end
    

    method setUserConfigurationInterface : 'any1. 'any1 -> unit = fun (userConfigurationInterface_arg) ->
        let userConfigurationInterface_arg = Obj.repr userConfigurationInterface_arg in
        begin
        userConfigurationInterface <- (Obj.magic userConfigurationInterface_arg)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        userName <- "";
        prefixName <- "";
        firstName <- "";
        lastName <- "";
        middleName <- "";
        suffixName <- "";
        company <- "";
        positionAtCompany <- "";
        mainEmail <- "";
        secondaryEmail <- "";
        homePhone <- "";
        cellPhone <- "";
        workPhone <- "";
        otherContact <- "";
        electronicDevice <- "";
        fax <- "";
        role <- ((Obj.magic 0) :> UserRole.userRole);
        encryption <- "";
        secret <- "";
        ();
        enable <- "";
        permissions <- "";
        ();
        ();
        userConfigurationInterface <- (UserConfigurationInterfaceFactory.getInstance ());
        password <- (new Password.password ((StringUtil.getInstance ())#eMPTY_STRING))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "User" (fun arguments -> Obj.repr (new user (Obj.obj arguments)))


