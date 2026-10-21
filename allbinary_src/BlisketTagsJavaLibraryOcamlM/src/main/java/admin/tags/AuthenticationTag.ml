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
(* import java.lang.reflect.Method *)
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.jsp.JspTagException *)
(* import javax.servlet.jsp.tagext.TagSupport *)
(* import admin.taghelpers.AuthenticationHelperFactory *)
(* import admin.taghelpers.AuthenticationRequestHelperFactory *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSessionData *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)
(* import tags.CustomTagSupport *)

class authenticationTag () =
  object (self)
    inherit CustomTagSupport.customTagSupport ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
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
    val mutable roles : BasicArrayList.basicArrayList = (Obj.magic 0)
    method roles = roles
    method set_roles value' = roles <- value'
    val mutable propertiesHashMap : java_hash_map = (Obj.magic 0)
    method propertiesHashMap = propertiesHashMap
    method set_propertiesHashMap value' = propertiesHashMap <- value'
    
    

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
    

    method changePassword () : bool =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((new AuthenticationRequestHelperFactory.authenticationRequestHelperFactory ())#getInstance (propertiesHashMap, pageContext)))) in ();
            let addressHelperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!addressHelperClass#getMethod ("changePassword", (Obj.magic 0))))) in ();
            let result : bool ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0))))) in ();
            !result
        with e -> begin
            raise e
        end)
        end [@@warning "-7"]
    

    method newPassword () : bool =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((new AuthenticationRequestHelperFactory.authenticationRequestHelperFactory ())#getInstance (propertiesHashMap, pageContext)))) in ();
            let addressHelperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!addressHelperClass#getMethod ("newPassword", (Obj.magic 0))))) in ();
            let result : bool ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0))))) in ();
            !result
        with e -> begin
            raise e
        end)
        end [@@warning "-7"]
    

    method invalidateSession () : int =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((new AuthenticationHelperFactory.authenticationHelperFactory ())#getInstance (propertiesHashMap, pageContext)))) in ();
            let addressHelperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!addressHelperClass#getMethod ("invalidateSession", (Obj.magic 0))))) in ();
            let resultInteger : int ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0))))) in ();
            !resultInteger
        with e -> begin
            raise e
        end)
        end [@@warning "-7"]
    

    method isSessionOld () : bool =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((new AuthenticationHelperFactory.authenticationHelperFactory ())#getInstance (propertiesHashMap, pageContext)))) in ();
            let helperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!helperClass#getMethod ("isSessionOld", (Obj.magic 0))))) in ();
            let resultBoolean : bool ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0))))) in ();
            !resultBoolean
        with e -> begin
            raise e
        end)
        end [@@warning "-7"]
    

    method isRoleValid () : bool =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((new AuthenticationRequestHelperFactory.authenticationRequestHelperFactory ())#getInstance (propertiesHashMap, pageContext)))) in ();
            let addressHelperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let methodParams : string array ref = ref ([| (java_get_class (Obj.repr userName)); (java_get_class (Obj.repr password)); (java_get_class (Obj.repr roles)) |]) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!addressHelperClass#getMethod ("isRoleValid", !methodParams)))) in ();
            let methodArgs : Obj.t array ref = ref ([| userName; password; roles |]) in ();
            let resultBoolean : bool ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, !methodArgs)))) in ();
            !resultBoolean
        with e -> begin
            raise e
        end)
        end [@@warning "-7"]
    

    method validRole () : string =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((new AuthenticationHelperFactory.authenticationHelperFactory ())#getInstance (propertiesHashMap, pageContext)))) in ();
            let addressHelperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!addressHelperClass#getMethod ("validRole", (Obj.magic 0))))) in ();
            let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0))))) in ();
            !result
        with e -> begin
            raise e
        end)
        end [@@warning "-7"]
    

    method invalidRole () : string =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((new AuthenticationHelperFactory.authenticationHelperFactory ())#getInstance (propertiesHashMap, pageContext)))) in ();
            let addressHelperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!addressHelperClass#getMethod ("invalidRole", (Obj.magic 0))))) in ();
            let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0))))) in ();
            !result
        with e -> begin
            raise e
        end)
        end [@@warning "-7"]
    

    method isAuthenticationSessionValid () : bool =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((new AuthenticationHelperFactory.authenticationHelperFactory ())#getInstance (propertiesHashMap, pageContext)))) in ();
            let addressHelperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let methodParams : string array ref = ref ([| (java_get_class (Obj.repr roles)) |]) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!addressHelperClass#getMethod ("isAuthenticationSessionValid", !methodParams)))) in ();
            let methodArgs : Obj.t array ref = ref ([| roles |]) in ();
            let resultBoolean : bool ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, !methodArgs)))) in ();
            !resultBoolean
        with e -> begin
            raise e
        end)
        end [@@warning "-7"]
    

    method processIfNewLogin () : bool =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((new AuthenticationHelperFactory.authenticationHelperFactory ())#getInstance (propertiesHashMap, pageContext)))) in ();
            let helperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let methodParams : string array ref = ref ([| (java_get_class (Obj.repr userName)); (java_get_class (Obj.repr password)) |]) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!helperClass#getMethod ("processIfNewLogin", !methodParams)))) in ();
            let methodArgs : Obj.t array ref = ref ([| userName; password |]) in ();
            let resultBoolean : bool ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, !methodArgs)))) in ();
            !resultBoolean
        with e -> begin
            raise e
        end)
        end [@@warning "-7"]
    

    method processInvalidation () : bool =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((new AuthenticationHelperFactory.authenticationHelperFactory ())#getInstance (propertiesHashMap, pageContext)))) in ();
            let addressHelperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!addressHelperClass#getMethod ("processInvalidation", (Obj.magic 0))))) in ();
            let resultBoolean : bool ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0))))) in ();
            !resultBoolean
        with e -> begin
            raise e
        end)
        end [@@warning "-7"]
    

    method doStartTag () : int =
        try
        begin
        (try
            let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                let request : Obj.t ref = ref ((Obj.repr (Obj.magic (pageContext#getRequest ())))) in ();
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!stringBuffer#append (" Request URI: "));
                ignore (!stringBuffer#append (((Obj.magic !request)#getRequestURI ())));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, tagStrings#dO_START_TAG))
            end;
            if (command <> (Obj.magic 0)) then begin
                propertiesHashMap <- ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ());
                if ((String.compare command ((org.get_allbinary ())#globals#gLOBALS2#nEWPASSWORD)) == 0) then begin
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                        ignore ((Obj.magic logUtil)#putF ("New Password", self, tagStrings#dO_START_TAG))
                    end;
                    if (not (self#newPassword ())) then begin
                        ignore ((pageContext#getOut ())#print ("New Password Request Failed.<p/>"));
                        raise (Java_return (Obj.repr (eVAL_BODY_INCLUDE)))
                    end else begin
                        ignore ((pageContext#getOut ())#print ("New Password Was Sent.<p/>"));
                        raise (Java_return (Obj.repr (sKIP_BODY)))
                    end
                end else if ((String.compare command ((org.get_allbinary ())#globals#gLOBALS2#cHANGEPASSWORD)) == 0) then begin
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                        ignore ((Obj.magic logUtil)#putF ("Change Password", self, tagStrings#dO_START_TAG))
                    end;
                    if (not (self#changePassword ())) then begin
                        ignore ((pageContext#getOut ())#print ("Password Change Attempt Failed.<p/>"));
                        raise (Java_return (Obj.repr (eVAL_BODY_INCLUDE)))
                    end else begin
                        ignore ((pageContext#getOut ())#print ("Password Changed Successfully.<p/>"));
                        raise (Java_return (Obj.repr (sKIP_BODY)))
                    end
                end else if ((String.compare command ((WeblisketSessionData.get_iNVALIDATESESSION ()))) == 0) then begin
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                        ignore ((Obj.magic logUtil)#putF ("INVALIDATESESSION", self, tagStrings#dO_START_TAG))
                    end;
                    raise (Java_return (Obj.repr ((self#invalidateSession ()))))
                end else begin
                    if (self#isSessionOld ()) then begin
                        if (self#processInvalidation ()) then begin
                            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                                ignore ((Obj.magic logUtil)#putF ("Processing Invalidation", self, tagStrings#dO_START_TAG))
                            end;
                            ignore ((pageContext#getOut ())#print ("Please login again.<p>"));
                            if ((String.compare command ((org.get_allbinary ())#globals#gLOBALS2#pROCESSBODYIFAUTHENTICATED)) == 0) then begin
                                raise (Java_return (Obj.repr ((TagSupport.get_sKIP_BODY ()))))
                            end else begin
                                raise (Java_return (Obj.repr ((TagSupport.get_eVAL_BODY_INCLUDE ()))))
                            end
                        end else begin
                            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                                ignore ((Obj.magic logUtil)#putF ("Preparing session for invalidation", self, tagStrings#dO_START_TAG))
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
                            ignore ((Obj.magic logUtil)#putF ("Authenticated session is valid", self, tagStrings#dO_START_TAG))
                        end;
                        if ((String.compare command ((org.get_allbinary ())#globals#gLOBALS2#pROCESSBODYIFAUTHENTICATED)) == 0) then begin
                            raise (Java_return (Obj.repr ((TagSupport.get_eVAL_BODY_INCLUDE ()))))
                        end else begin
                            raise (Java_return (Obj.repr ((TagSupport.get_sKIP_BODY ()))))
                        end
                    end;
                    if (((userName <> (Obj.magic 0)) && (password <> (Obj.magic 0))) && (self#processIfNewLogin ())) then begin
                        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                            ignore ((Obj.magic logUtil)#putF ("Processing new login.", self, tagStrings#dO_START_TAG))
                        end;
                        if (self#isRoleValid ()) then begin
                            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                                ignore ((Obj.magic logUtil)#putF ("Role is valid - Processing new login", self, tagStrings#dO_START_TAG))
                            end;
                            ignore ((pageContext#getOut ())#print ((self#validRole ())));
                            if ((String.compare command ((org.get_allbinary ())#globals#gLOBALS2#pROCESSBODYIFAUTHENTICATED)) == 0) then begin
                                raise (Java_return (Obj.repr (eVAL_BODY_INCLUDE)))
                            end else begin
                                raise (Java_return (Obj.repr (sKIP_BODY)))
                            end
                        end else begin
                            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                                ignore ((Obj.magic logUtil)#putF ("Role is not valid - Processing new login", self, tagStrings#dO_START_TAG))
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
                            ignore ((Obj.magic logUtil)#putF ("Invalid Login", self, tagStrings#dO_START_TAG))
                        end;
                        if ((((userName <> (Obj.magic 0)) && ((String.compare userName (!stringUtil#eMPTY_STRING)) != 0)) && (password <> (Obj.magic 0))) && ((String.compare password (!stringUtil#eMPTY_STRING)) != 0)) then begin
                            ignore ((pageContext#getOut ())#print ("Sorry your username and/or password is invalid.<p/>"))
                        end
                    end;
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((((((new StringMaker.stringMaker ())#append ("Major authentication error - userName: "))#append (userName))#append (" Password: "))#append (password))#append (" Command: "))#append (command)))), self, tagStrings#dO_START_TAG))
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
            ignore (AbResponseHandler.sendJspTagLicensingRedirect (pageContext, e));
            sKIP_BODY
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        command <- "";
        ();
        ();
        newPassword <- "";
        roles <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        propertiesHashMap <- ((Obj.magic 0) :> java_hash_map);
        ();
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        userName <- !stringUtil#eMPTY_STRING;
        password <- !stringUtil#eMPTY_STRING
      end
  end [@@warning "-20"]
let () = java_register_constructor "AuthenticationTag" (fun arguments -> Obj.repr (new authenticationTag (Obj.obj arguments)))


