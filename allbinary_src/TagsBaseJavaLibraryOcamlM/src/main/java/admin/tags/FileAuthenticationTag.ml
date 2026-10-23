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
(* package admin.tags *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Calendar *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.jsp.JspTagException *)
(* import javax.servlet.jsp.tagext.TagSupport *)
(* import org.allbinary.business.init.InstallerInfo *)
(* import org.allbinary.business.user.role.BasicUserRole *)
(* import org.allbinary.business.user.role.BasicUserRoleFactory *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.communication.http.request.session.BasicWeblisketSession *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSessionData *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.logic.java.bool.BooleanUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)
(* import tags.CustomTagSupport *)

class fileAuthenticationTag () =
  object (self)
    inherit CustomTagSupport.customTagSupport ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable attemptsInteger : int = (Obj.magic 0)
    method attemptsInteger = attemptsInteger
    method set_attemptsInteger value' = attemptsInteger <- value'
    val mutable weblisketSession : BasicWeblisketSession.basicWeblisketSession = (Obj.magic 0)
    method weblisketSession = weblisketSession
    method set_weblisketSession value' = weblisketSession <- value'
    val mutable request : Obj.t = Obj.repr 0
    method request : 'r. 'r = Obj.magic request
    method set_request : 'v. 'v -> unit = fun value' -> request <- Obj.repr value'
    val mutable command : string = ""
    method command = command
    method set_command value' = command <- value'
    val mutable userName : string = ""
    method userName = userName
    method set_userName value' = userName <- value'
    val mutable password : string = ""
    method password = password
    method set_password value' = password <- value'
    val mutable newPassword : string = ""
    method newPassword = newPassword
    method set_newPassword value' = newPassword <- value'
    val mutable authenticated : string = ""
    method authenticated = authenticated
    method set_authenticated value' = authenticated <- value'
    val mutable sessionUserName : string = ""
    method sessionUserName = sessionUserName
    method set_sessionUserName value' = sessionUserName <- value'
    val mutable role : BasicUserRole.basicUserRole = (Obj.magic 0)
    method role = role
    method set_role value' = role <- value'
    val mutable timeout : string = ""
    method timeout = timeout
    method set_timeout value' = timeout <- value'
    val mutable roles : BasicArrayList.basicArrayList = (Obj.magic 0)
    method roles = roles
    method set_roles value' = roles <- value'
    
    

    method setCommand ((command_arg : string)) : unit =
        begin
        command <- command_arg
        end [@@warning "-7"]
    

    method setUserName ((userName_arg : string)) : unit =
        begin
        userName <- userName_arg
        end [@@warning "-7"]
    

    method setPassword ((value : string)) : unit =
        begin
        password <- value
        end [@@warning "-7"]
    

    method setNewPassword ((value : string)) : unit =
        begin
        newPassword <- value
        end [@@warning "-7"]
    

    method setRoles : 'any1. 'any1 -> unit = fun (values) ->
        let values = Obj.repr values in
        begin
        roles <- (Obj.magic values)
        end [@@warning "-7-20"]
    

    method makeSessionValid : 'any1. 'any1 * string -> unit = fun (storedRole, (userName_arg : string)) ->
        let storedRole = Obj.repr storedRole in
        begin
        ignore (weblisketSession#setAuthenticated ());
        ignore (weblisketSession#setRole ((Obj.magic storedRole)));
        ignore (weblisketSession#setUserName (userName_arg));
        ignore ((Obj.magic request)#removeAttribute ((WeblisketSessionData.get_rEMOVABLEUSERNAME ())));
        ignore ((Obj.magic request)#removeAttribute ((WeblisketSessionData.get_rEMOVABLEPASSWORD ())))
        end [@@warning "-7-20"]
    

    method getFormData () : unit =
        begin
        authenticated <- (weblisketSession#getAuthentication ());
        sessionUserName <- (weblisketSession#getUserName ());
        role <- (weblisketSession#getRole ());
        attemptsInteger <- (weblisketSession#getAttempts ());
        timeout <- (weblisketSession#getTimeout ())
        end [@@warning "-7"]
    

    method nextAttempt () : unit =
        begin
        if ((attemptsInteger != (Obj.magic 0)) && (attemptsInteger > 0)) then begin
            ignore (weblisketSession#setAttempts ((Obj.obj (java_new "Integer" (Obj.repr ((attemptsInteger + 1)))))))
        end else begin
            ignore (weblisketSession#setAttempts ((Obj.obj (java_new "Integer" (Obj.repr (1))))))
        end
        end [@@warning "-7"]
    

    method changePassword () : bool =
        try
        begin
        (try
            let userName_arg : string ref = ref (((Obj.magic request)#getParameter ((WeblisketSessionData.get_rEMOVABLEUSERNAME ())))) in ();
            let password_arg : string ref = ref (((Obj.magic request)#getParameter ((WeblisketSessionData.get_rEMOVABLEPASSWORD ())))) in ();
            let newPassword_arg : string ref = ref (((Obj.magic request)#getParameter ((WeblisketSessionData.get_rEMOVABLENEWPASSWORD ())))) in ();
            let newReenteredPassword : string ref = ref (((Obj.magic request)#getParameter ((WeblisketSessionData.get_rEMOVABLEREENTERNEWPASSWORD ())))) in ();
            if ((String.compare !newPassword_arg (!newReenteredPassword)) != 0) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            let installerInfo : InstallerInfo.installerInfo ref = ref (((new InstallerInfo.installerInfo ()) :> InstallerInfo.installerInfo)) in ();
            if (!installerInfo#isValid (!userName_arg, !password_arg)) then begin
                ignore (!installerInfo#setPassword (!newPassword_arg));
                ignore (!installerInfo#write ());
                ignore (weblisketSession#setUserName (!userName_arg));
                ignore (weblisketSession#setPassword (!newPassword_arg));
                raise (Java_return (Obj.repr (true)))
            end;
            false
        with e -> begin
            raise e
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method invalidateSession () : int =
        begin
        (try
            ignore (weblisketSession#clear ());
            ((Obj.obj (java_new "Integer" (Obj.repr ((TagSupport.get_eVAL_BODY_INCLUDE ())))))#intValue ())
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAGERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "invalidateSession()", e))
            end;
            (TagSupport.get_sKIP_BODY ())
        end)
        end [@@warning "-7"]
    

    method isSessionOld () : bool =
        try
        begin
        (try
            if (role != (Obj.magic 0)) then begin
                let timeCreated : int ref = ref ((weblisketSession#getCreationTime ())) in ();
                let sessionTimout : int ref = ref ((role#getSessionTimeout ())) in ();
                let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
                let timeFirst : int ref = ref (((!calendar#getTimeInMillis ()) - !sessionTimout)) in ();
                if (!timeFirst > !timeCreated) then begin
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#aUTHENTICATION)) then begin
                        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                        ignore (!stringBuffer#append ("Session Is Old - Timeout: "));
                        ignore (!stringBuffer#appendlong (!sessionTimout));
                        ignore (!stringBuffer#append (" Eval: "));
                        ignore (!stringBuffer#appendlong (!timeFirst));
                        ignore (!stringBuffer#append (" > "));
                        ignore (!stringBuffer#appendlong (!timeCreated));
                        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "isSessionOld()"))
                    end;
                    raise (Java_return (Obj.repr ((true#booleanValue ()))))
                end
            end else begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#aUTHENTICATION)) then begin
                    ignore ((Obj.magic logUtil)#putF ("Role Is Not In Session", self, "isSessionOld()"))
                end
            end;
            ((self#isRarelyUsedSession ())#booleanValue ())
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAGERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "isSessionOld()", e))
            end;
            false
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method isRarelyUsedSession () : bool =
        begin
        if (role != (Obj.magic 0)) then begin
            let timeCreated : int ref = ref ((weblisketSession#getCreationTime ())) in ();
            let lastAccess : int ref = ref ((weblisketSession#getLastAccessedTime ())) in ();
            let timePassed : int ref = ref ((role#getSessionInactivityTimeout ())) in ();
            let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
            let timeFirst : int ref = ref (((!calendar#getTimeInMillis ()) - !lastAccess)) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#aUTHENTICATION)) then begin
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!stringBuffer#append ("Session Is Rarely Used - Timeout: "));
                ignore (!stringBuffer#appendlong (!lastAccess));
                ignore (!stringBuffer#append (" Eval: "));
                ignore (!stringBuffer#appendlong (!timeFirst));
                ignore (!stringBuffer#append (" > "));
                ignore (!stringBuffer#appendlong (!timePassed));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "isRarelyUsedSession()"))
            end
        end else begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#aUTHENTICATION)) then begin
                ignore ((Obj.magic logUtil)#putF ("Role Is Not In Session", self, "isRarelyUsedSession()"))
            end
        end;
        false
        end [@@warning "-7"]
    

    method isRoleValid () : bool =
        begin
        (try
            (self#makeSessionValid ((BasicUserRoleFactory.getInstance ())#iNSTALLER, userName));
            (true#booleanValue ())
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAGERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "isRoleValid()", e))
            end;
            false
        end)
        end [@@warning "-7"]
    

    method validRole () : string =
        begin
        (try
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("Trying New login<p>"));
            (java_string_of (Obj.repr !stringBuffer))
        with e -> begin
            let error : string ref = ref ("Failed to set valid role") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAGERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "validRole()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method invalidRole () : string =
        begin
        (try
            ignore (weblisketSession#setAuthenticated (false));
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("Sorry your username and password is invalid on this page."));
            ignore (!stringBuffer#append ("Trying New login<p>"));
            (java_string_of (Obj.repr !stringBuffer))
        with e -> begin
            let error : string ref = ref ("Failed to set role invalid") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAGERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "invalidRole()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method isAuthenticationSessionValid () : bool =
        try
        begin
        (try
            if ((BooleanUtil.getInstance ())#getFromString (authenticated)) then begin
                let size : int ref = ref ((roles#size ())) in ();
                for index = 0 to !size - 1 do
                    let mustBeOfRole : BasicUserRole.basicUserRole ref = ref (((Obj.magic (roles#get (index))) :> BasicUserRole.basicUserRole)) in ();
                    if ((sessionUserName <> (Obj.magic 0)) && (role#equals (!mustBeOfRole))) then begin
                        raise (Java_return (Obj.repr ((true#booleanValue ()))))
                    end
                done;
                raise (Java_return (Obj.repr ((false#booleanValue ()))))
            end;
            (false#booleanValue ())
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAGERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "isAuthenticationSessionValid()", e))
            end;
            false
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method processIfNewLogin () : bool =
        try
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERERROR)) then begin
                ignore ((Obj.magic logUtil)#putF (((("Starting for User: " ^ userName) ^ " Attempt: ") ^ java_string_of (Obj.repr ((weblisketSession#getAttempts ())))), self, "processIfNewLogin()"))
            end;
            if ((((userName <> (Obj.magic 0)) && ((String.compare userName ((StringUtil.getInstance ())#eMPTY_STRING)) != 0)) && (password <> (Obj.magic 0))) && ((String.compare password ((StringUtil.getInstance ())#eMPTY_STRING)) != 0)) then begin
                let login : string ref = ref ("") in ();
                let installerInfo : InstallerInfo.installerInfo ref = ref (((new InstallerInfo.installerInfo ()) :> InstallerInfo.installerInfo)) in ();
                if (!installerInfo#isValid (userName, password)) then begin
                    login := (org.get_allbinary ())#globals#gLOBALS2#lOGINSUCCESS
                end else begin
                    login := (org.get_allbinary ())#globals#gLOBALS2#lOGINFAILED
                end;
                if ((String.compare !login ((org.get_allbinary ())#globals#gLOBALS2#lOGINSUCCESS)) == 0) then begin
                    ignore (weblisketSession#setAttempts ((Obj.obj (java_new "Integer" (Obj.repr (0))))));
                    raise (Java_return (Obj.repr ((true#booleanValue ()))))
                end;
                (self#nextAttempt ());
                raise (Java_return (Obj.repr ((false#booleanValue ()))))
            end;
            (self#nextAttempt ());
            (false#booleanValue ())
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAGERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "processIfNewLogin()", e))
            end;
            false
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method processInvalidation () : bool =
        try
        begin
        (try
            if ((BooleanUtil.getInstance ())#getFromString (timeout)) then begin
                ignore (self#invalidateSession ());
                raise (Java_return (Obj.repr ((true#booleanValue ()))))
            end;
            begin
                ignore (weblisketSession#setTimeout ((BooleanFactory.getInstance ())#tRUE_STRING));
                (false#booleanValue ())
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAGERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "isSetToInvalidate()", e))
            end;
            false
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method doStartTag () : int =
        try
        begin
        (try
            let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
            request <- Obj.repr ((Obj.magic (pageContext#getRequest ())));
            weblisketSession <- (new BasicWeblisketSession.basicWeblisketSession (pageContext));
            (self#getFormData ());
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                ignore ((Obj.magic logUtil)#putF ("Started", self, (self#tagStrings)#dO_START_TAG))
            end;
            if (command <> (Obj.magic 0)) then begin
                if ((String.compare command ((org.get_allbinary ())#globals#gLOBALS2#cHANGEPASSWORD)) == 0) then begin
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                        ignore ((Obj.magic logUtil)#putF ("Change Password", self, (self#tagStrings)#dO_START_TAG))
                    end;
                    if (not (self#changePassword ())) then begin
                        ignore ((pageContext#getOut ())#print ("Password Change Attempt Failed.<p>"));
                        raise (Java_return (Obj.repr (eVAL_BODY_INCLUDE)))
                    end else begin
                        ignore ((pageContext#getOut ())#print ("Password Changed Successfully.<p>"));
                        raise (Java_return (Obj.repr (sKIP_BODY)))
                    end
                end else if ((String.compare command ((WeblisketSessionData.get_iNVALIDATESESSION ()))) == 0) then begin
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                        ignore ((Obj.magic logUtil)#putF ("INVALIDATESESSION", self, (self#tagStrings)#dO_START_TAG))
                    end;
                    raise (Java_return (Obj.repr ((self#invalidateSession ()))))
                end else begin
                    if (self#isSessionOld ()) then begin
                        if (self#processInvalidation ()) then begin
                            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                                ignore ((Obj.magic logUtil)#putF ("Processing Invalidation", self, (self#tagStrings)#dO_START_TAG))
                            end;
                            ignore ((pageContext#getOut ())#print ("Please login again.<p>"));
                            if ((String.compare command ((org.get_allbinary ())#globals#gLOBALS2#pROCESSBODYIFAUTHENTICATED)) == 0) then begin
                                raise (Java_return (Obj.repr ((TagSupport.get_sKIP_BODY ()))))
                            end else begin
                                raise (Java_return (Obj.repr ((TagSupport.get_eVAL_BODY_INCLUDE ()))))
                            end
                        end else begin
                            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                                ignore ((Obj.magic logUtil)#putF ("Preparing session for invalidation", self, (self#tagStrings)#dO_START_TAG))
                            end;
                            if ((String.compare command ((org.get_allbinary ())#globals#gLOBALS2#pROCESSBODYIFAUTHENTICATED)) == 0) then begin
                                raise (Java_return (Obj.repr ((TagSupport.get_sKIP_BODY ()))))
                            end else begin
                                raise (Java_return (Obj.repr ((TagSupport.get_eVAL_BODY_INCLUDE ()))))
                            end
                        end
                    end;
                    if ((((((userName = (Obj.magic 0)) || ((String.compare userName (!stringUtil#eMPTY_STRING)) == 0))) && (((password = (Obj.magic 0)) || ((String.compare password (!stringUtil#eMPTY_STRING)) == 0)))) && (roles != (Obj.magic 0))) && (self#isAuthenticationSessionValid ())) then begin
                        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                            ignore ((Obj.magic logUtil)#putF ("Authenticated session is valid", self, (self#tagStrings)#dO_START_TAG))
                        end;
                        if ((String.compare command ((org.get_allbinary ())#globals#gLOBALS2#pROCESSBODYIFAUTHENTICATED)) == 0) then begin
                            raise (Java_return (Obj.repr ((TagSupport.get_eVAL_BODY_INCLUDE ()))))
                        end else begin
                            raise (Java_return (Obj.repr ((TagSupport.get_sKIP_BODY ()))))
                        end
                    end;
                    if (((userName <> (Obj.magic 0)) && (password <> (Obj.magic 0))) && (self#processIfNewLogin ())) then begin
                        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                            ignore ((Obj.magic logUtil)#putF ("Processing new login.", self, (self#tagStrings)#dO_START_TAG))
                        end;
                        if (self#isRoleValid ()) then begin
                            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                                ignore ((Obj.magic logUtil)#putF ("Role is valid - Processing new login", self, (self#tagStrings)#dO_START_TAG))
                            end;
                            ignore ((pageContext#getOut ())#print ((self#validRole ())));
                            if ((String.compare command ((org.get_allbinary ())#globals#gLOBALS2#pROCESSBODYIFAUTHENTICATED)) == 0) then begin
                                raise (Java_return (Obj.repr (eVAL_BODY_INCLUDE)))
                            end else begin
                                raise (Java_return (Obj.repr (sKIP_BODY)))
                            end
                        end else begin
                            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                                ignore ((Obj.magic logUtil)#putF ("Role is not valid - Processing new login", self, (self#tagStrings)#dO_START_TAG))
                            end;
                            ignore ((pageContext#getOut ())#print ((self#invalidRole ())));
                            if ((String.compare command ((org.get_allbinary ())#globals#gLOBALS2#pROCESSBODYIFAUTHENTICATED)) == 0) then begin
                                raise (Java_return (Obj.repr (sKIP_BODY)))
                            end else begin
                                raise (Java_return (Obj.repr (eVAL_BODY_INCLUDE)))
                            end
                        end
                    end else begin
                        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                            ignore ((Obj.magic logUtil)#putF ("Invalid Login", self, (self#tagStrings)#dO_START_TAG))
                        end;
                        if ((((userName <> (Obj.magic 0)) && ((String.compare userName ((StringUtil.getInstance ())#eMPTY_STRING)) != 0)) && (password <> (Obj.magic 0))) && ((String.compare password ((StringUtil.getInstance ())#eMPTY_STRING)) != 0)) then begin
                            ignore ((pageContext#getOut ())#print ("Sorry your username and/or password is invalid.<p>"))
                        end
                    end;
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                        ignore (!stringBuffer#append ("Major authentication error - userName: "));
                        ignore (!stringBuffer#append (userName));
                        ignore (!stringBuffer#append (" Password: "));
                        ignore (!stringBuffer#append (password));
                        ignore (!stringBuffer#append (" Command: "));
                        ignore (!stringBuffer#append (command));
                        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, (self#tagStrings)#dO_START_TAG))
                    end;
                    if ((String.compare command ((org.get_allbinary ())#globals#gLOBALS2#pROCESSBODYIFAUTHENTICATED)) == 0) then begin
                        raise (Java_return (Obj.repr ((TagSupport.get_sKIP_BODY ()))))
                    end else begin
                        raise (Java_return (Obj.repr ((TagSupport.get_eVAL_BODY_INCLUDE ()))))
                    end
                end
            end;
            sKIP_BODY
        with e -> begin
            ignore (AbResponseHandler.sendJspTagLicensingRedirect ((self#pageContext), e));
            sKIP_BODY
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        attemptsInteger <- (Obj.magic 0);
        weblisketSession <- ((Obj.magic 0) :> BasicWeblisketSession.basicWeblisketSession);
        request <- (Obj.repr (Obj.magic 0));
        command <- "";
        userName <- "";
        password <- "";
        newPassword <- "";
        authenticated <- "";
        sessionUserName <- "";
        role <- ((Obj.magic 0) :> BasicUserRole.basicUserRole);
        timeout <- "";
        roles <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "FileAuthenticationTag" (fun arguments -> Obj.repr (new fileAuthenticationTag (Obj.obj arguments)))


