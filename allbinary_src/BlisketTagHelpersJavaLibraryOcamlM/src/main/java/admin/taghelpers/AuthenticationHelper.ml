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
(* package admin.taghelpers *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Calendar *)
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.jsp.PageContext *)
(* import javax.servlet.jsp.tagext.TagSupport *)
(* import org.allbinary.business.user.UserInterface *)
(* import org.allbinary.business.user.role.BasicUserRole *)
(* import org.allbinary.business.user.role.UserRole *)
(* import org.allbinary.business.user.role.UserRoleFactory *)
(* import org.allbinary.data.tables.user.UserEntityFactory *)
(* import org.allbinary.data.tables.user.UserEntityInterface *)
(* import org.allbinary.globals.GLOBALS2 *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSession *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.logic.java.bool.BooleanUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)

class authenticationHelper ((hashMap : java_hash_map), httpServletRequest) =
  object (self)
    inherit TagHelper.tagHelper ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable weblisketSession : WeblisketSession.weblisketSession = (Obj.magic 0)
    method weblisketSession = weblisketSession
    method set_weblisketSession value' = weblisketSession <- value'
    val mutable authenticated : string = ""
    method authenticated = authenticated
    method set_authenticated value' = authenticated <- value'
    val mutable sessionUserName : string = ""
    method sessionUserName = sessionUserName
    method set_sessionUserName value' = sessionUserName <- value'
    val mutable role : UserRole.userRole = (Obj.magic 0)
    method role = role
    method set_role value' = role <- value'
    val mutable timeout : string = ""
    method timeout = timeout
    method set_timeout value' = timeout <- value'
    val mutable attemptsInteger : int = (Obj.magic 0)
    method attemptsInteger = attemptsInteger
    method set_attemptsInteger value' = attemptsInteger <- value'
    
    
    

    method getFormData () : unit =
        begin
        authenticated <- (weblisketSession#getAuthentication ());
        sessionUserName <- (weblisketSession#getUserName ());
        role <- (weblisketSession#getRole ());
        attemptsInteger <- (weblisketSession#getAttempts ());
        timeout <- (weblisketSession#getTimeout ())
        end [@@warning "-7"]
    

    method invalidateSession () : int =
        begin
        (try
            ignore (weblisketSession#clear ());
            (Obj.obj (java_new "Integer" (Obj.repr ((TagSupport.get_eVAL_BODY_INCLUDE ())))))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#aUTHENTICATIONERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "invalidateSession()", e))
            end;
            (Obj.magic 0)
        end)
        end [@@warning "-7"]
    

    method isSessionOld () : bool =
        try
        begin
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
                raise (Java_return (Obj.repr (true)))
            end
        end else begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#aUTHENTICATION)) then begin
                ignore ((Obj.magic logUtil)#putF ("Role Is Not In Session", self, "isSessionOld()"))
            end
        end;
        (self#isRarelyUsedSession ())
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method isRarelyUsedSession () : bool =
        begin
        if (role != (Obj.magic 0)) then begin
            let timeCreated : int ref = ref ((weblisketSession#getCreationTime ())) in ();
            let lastAccess : int ref = ref ((weblisketSession#getLastAccessedTime ())) in ();
            let inactivityAllowed : int ref = ref ((role#getSessionInactivityTimeout ())) in ();
            let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
            let timeFirst : int ref = ref (((!calendar#getTimeInMillis ()) - !lastAccess)) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#aUTHENTICATION)) then begin
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!stringBuffer#append ("Session Is Rarely Used - Timeout: "));
                ignore (!stringBuffer#appendlong (!lastAccess));
                ignore (!stringBuffer#append (" Eval: "));
                ignore (!stringBuffer#appendlong (!timeFirst));
                ignore (!stringBuffer#append (" > "));
                ignore (!stringBuffer#appendlong (!inactivityAllowed));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "isRarelyUsedSession()"))
            end
        end else begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#aUTHENTICATION)) then begin
                ignore ((Obj.magic logUtil)#putF ("Role Is Not In Session", self, "isRarelyUsedSession()"))
            end
        end;
        false
        end [@@warning "-7"]
    

    method validRole () : string =
        begin
        (try
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("Trying New login<p/>"));
            (java_string_of (Obj.repr !stringBuffer))
        with e -> begin
            let error : string ref = ref ("Failed to set valid role") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#aUTHENTICATIONERROR)) then begin
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
            ignore (!stringBuffer#append ("Sorry your username and password is invalid on this page. "));
            ignore (!stringBuffer#append ("Trying New login<p/>"));
            (java_string_of (Obj.repr !stringBuffer))
        with e -> begin
            let error : string ref = ref ("Failed to set role invalid") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#aUTHENTICATIONERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "invalidRole()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method isAuthenticated () : bool =
        try
        begin
        if ((BooleanUtil.getInstance ())#getFromString (authenticated)) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method isAuthenticationSessionValid : 'any1. 'any1 -> bool = fun (roles) ->
        let roles = Obj.repr roles in
        try
        begin
        (try
            if (role != (Obj.magic 0)) then begin
                if (self#isAuthenticated ()) then begin
                    if (sessionUserName <> (Obj.magic 0)) then begin
                        let basicUserRole : BasicUserRole.basicUserRole ref = ref (((role#getBasicUserRole ()) :> BasicUserRole.basicUserRole)) in ();
                        let basicUserRoleArray : Obj.t array ref = ref (((Obj.magic roles)#toArray ())) in ();
                        let size : int ref = ref ((Array.length !basicUserRoleArray)) in ();
                        for index = 0 to !size - 1 do
                            let mustBeOfRole : BasicUserRole.basicUserRole ref = ref (((Obj.magic !basicUserRoleArray.(index)) :> BasicUserRole.basicUserRole)) in ();
                            if (!basicUserRole#equals (!mustBeOfRole)) then begin
                                if (!basicUserRole#equals ((UserRoleFactory.getInstance ())#cUSTOMER)) then begin
                                    let userEntityInterface : UserEntityInterface.userEntityInterface ref = ref (((UserEntityFactory.getInstance ()) :> UserEntityInterface.userEntityInterface)) in ();
                                    let userInterface : UserInterface.userInterface ref = ref (((!userEntityInterface#getUser (sessionUserName)) :> UserInterface.userInterface)) in ();
                                    if (not ((!userInterface#isSessionValid ())#booleanValue ())) then begin
                                        raise (Java_return (Obj.repr (false)))
                                    end
                                end;
                                raise (Java_return (Obj.repr (true)))
                            end
                        done
                    end;
                    raise (Java_return (Obj.repr (false)))
                end
            end else begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#aUTHENTICATION)) then begin
                    ignore ((Obj.magic logUtil)#putF ("Role Is Not In Session", self, "isAuthenticationSessionValid()"))
                end
            end;
            false
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#aUTHENTICATIONERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "isAuthenticatedSessionValid()", e))
            end;
            false
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method nextAttempt () : unit =
        begin
        if ((attemptsInteger != (Obj.magic 0)) && (attemptsInteger > 0)) then begin
            ignore (weblisketSession#setAttempts ((Obj.obj (java_new "Integer" (Obj.repr ((attemptsInteger + 1)))))))
        end else begin
            ignore (weblisketSession#setAttempts ((Obj.obj (java_new "Integer" (Obj.repr (1))))))
        end
        end [@@warning "-7"]
    

    method processIfNewLogin ((userName : string), (password : string)) : bool =
        try
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#aUTHENTICATIONERROR)) then begin
                ignore ((Obj.magic logUtil)#putF (("Starting: " ^ userName), self, "processIfNewLogin()"))
            end;
            if ((((userName <> (Obj.magic 0)) && ((String.compare userName ((StringUtil.getInstance ())#eMPTY_STRING)) != 0)) && (password <> (Obj.magic 0))) && ((String.compare password ((StringUtil.getInstance ())#eMPTY_STRING)) != 0)) then begin
                let login : string ref = ref ("") in ();
                let userEntityInterface : UserEntityInterface.userEntityInterface ref = ref (((UserEntityFactory.getInstance ()) :> UserEntityInterface.userEntityInterface)) in ();
                login := (!userEntityInterface#login (userName, password));
                if ((String.compare !login ((GLOBALS2.get_lOGINSUCCESS ()))) == 0) then begin
                    let userInterface : UserInterface.userInterface ref = ref (((!userEntityInterface#getUser (userName)) :> UserInterface.userInterface)) in ();
                    if ((!userInterface#isSessionValid ())#booleanValue ()) then begin
                        ignore (weblisketSession#setAttempts ((Obj.obj (java_new "Integer" (Obj.repr (0))))));
                        raise (Java_return (Obj.repr (true)))
                    end
                end;
                (self#nextAttempt ());
                raise (Java_return (Obj.repr (false)))
            end;
            (self#nextAttempt ());
            false
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#aUTHENTICATIONERROR)) then begin
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
                raise (Java_return (Obj.repr (true)))
            end;
            begin
                ignore (weblisketSession#setTimeout ((BooleanFactory.getInstance ())#tRUE_STRING));
                false
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#aUTHENTICATIONERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "processInvalidation()", e))
            end;
            false
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method outputSessionInfo () : string =
        begin
        (try
            let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
            let timeCreated : int ref = ref ((weblisketSession#getCreationTime ())) in ();
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            let lastAccess : int ref = ref ((weblisketSession#getLastAccessedTime ())) in ();
            ignore (!stringBuffer#append ((("Time Since Last Access: " ^ java_string_of (Obj.repr ((((!calendar#getTimeInMillis ()) - !lastAccess))))) ^ "<br/>\n")));
            if (role != (Obj.magic 0)) then begin
                ignore (!stringBuffer#append ("Auth: "));
                ignore (!stringBuffer#append (authenticated));
                ignore (!stringBuffer#append (" UserName: "));
                ignore (!stringBuffer#append (sessionUserName));
                ignore (!stringBuffer#append (" Role: "));
                ignore (!stringBuffer#append ((java_string_of (Obj.repr role))));
                ignore (!stringBuffer#append ("<br/>\n"));
                ignore (!stringBuffer#append ("Time Left: "));
                ignore (!stringBuffer#appendlong ((java_to_int (Obj.repr ((((role#getSessionTimeout ()) - (((!calendar#getTimeInMillis ()) - !timeCreated)))))))));
                ignore (!stringBuffer#append ("<br/>\n"));
                ignore (!stringBuffer#append ("Inactivity Time Allowed: "));
                ignore (!stringBuffer#appendlong ((java_to_int (Obj.repr ((role#getSessionTimeout ()))))));
                ignore (!stringBuffer#append ("<br/>\n"));
                ignore (!stringBuffer#append ("Inactivity Time Allowed: "));
                ignore (!stringBuffer#appendlong ((java_to_int (Obj.repr ((role#getSessionInactivityTimeout ()))))));
                ignore (!stringBuffer#append ("<br/>\n"))
            end else begin
                ignore (!stringBuffer#append ("Role Is Not Set<br/>\n"))
            end;
            (java_string_of (Obj.repr !stringBuffer))
        with e -> begin
            "Error"
        end)
        end [@@warning "-7"]
    

    method getRole () : UserRole.userRole =
        begin
        (role :> UserRole.userRole)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        authenticated <- "";
        sessionUserName <- "";
        role <- ((Obj.magic 0) :> UserRole.userRole);
        timeout <- "";
        attemptsInteger <- (Obj.magic 0);
        ();
        weblisketSession <- (new WeblisketSession.weblisketSession (hashMap, httpServletRequest));
        (self#getFormData ());
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#aUTHENTICATION)) then begin
            ignore ((Obj.magic logUtil)#putF ((self#outputSessionInfo ()), self, (self#commonStrings)#cONSTRUCTOR))
        end
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "AuthenticationHelper" (fun arguments -> Obj.repr (new authenticationHelper (Obj.obj arguments)))


