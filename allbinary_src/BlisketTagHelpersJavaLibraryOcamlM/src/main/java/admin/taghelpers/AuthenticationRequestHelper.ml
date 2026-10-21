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
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.business.user.UserData *)
(* import org.allbinary.business.user.UserInterface *)
(* import org.allbinary.business.user.password.Password *)
(* import org.allbinary.business.user.role.BasicUserRole *)
(* import org.allbinary.data.tables.user.UserEntityFactory *)
(* import org.allbinary.data.tables.user.UserEntityInterface *)
(* import org.allbinary.globals.GLOBALS2 *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSession *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSessionData *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.smtp.email.NewPasswordEmail *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory *)

class authenticationRequestHelper ((hashMap : java_hash_map), pageContext) =
  object (self)
    inherit TagHelper.tagHelper ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface = (Obj.magic 0)
    method abeClientInformation = abeClientInformation
    method set_abeClientInformation value' = abeClientInformation <- value'
    val mutable weblisketSession : WeblisketSession.weblisketSession = (Obj.magic 0)
    method weblisketSession = weblisketSession
    method set_weblisketSession value' = weblisketSession <- value'
    val mutable request : Obj.t = Obj.repr 0
    method request : 'r. 'r = Obj.magic request
    method set_request : 'v. 'v -> unit = fun value' -> request <- Obj.repr value'
    
    
    

    method generateNewPassword () : string =
        try
        begin
        if ((weblisketSession != (Obj.magic 0)) && ((weblisketSession#getId ()) != (Obj.magic 0))) then begin
            let startIndex : int ref = ref (((weblisketSession#getId ())#length ())) in ();
            if (!startIndex >= 8) then begin
                raise (Java_return (Obj.repr (((weblisketSession#getId ())#substring ((!startIndex - 8))))))
            end else begin
                raise (Failure ("Error Generating New Password"))
            end
        end else begin
            raise (Failure ("No Session Available For Generating New Password"))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method newPassword () : bool =
        try
        begin
        (try
            let userName : string ref = ref (((Obj.magic request)#getParameter ((WeblisketSessionData.get_rEMOVABLEUSERNAME ())))) in ();
            let email : string ref = ref (((Obj.magic request)#getParameter ((UserData.get_mAINEMAIL ())))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPER)) then begin
                ignore ((Obj.magic logUtil)#putF (("Generating New Password For: " ^ !userName), self, "newPassword()"))
            end;
            let userEntityInterface : UserEntityInterface.userEntityInterface ref = ref (((UserEntityFactory.getInstance ()) :> UserEntityInterface.userEntityInterface)) in ();
            let userInterface : UserInterface.userInterface ref = ref (((!userEntityInterface#getUser (!userName)) :> UserInterface.userInterface)) in ();
            if (((!userInterface#getMainEmail ())#compareTo (!email)) != 0) then begin
                if (((!userInterface#getSecondaryEmail ()) != (Obj.magic 0)) && (((!userInterface#getSecondaryEmail ())#compareTo (!email)) != 0)) then begin
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPER)) then begin
                        ignore ((Obj.magic logUtil)#putF ("Requested Email Is Not In User Profile", self, "newPassword()"))
                    end;
                    raise (Java_return (Obj.repr (false)))
                end
            end;
            let newPassword : string ref = ref ((self#generateNewPassword ())) in ();
            ignore (!userInterface#setPassword (!newPassword));
            let newPasswordHashMap : java_hash_map ref = ref (((!userInterface#toPasswordHashMap ()) :> java_hash_map)) in ();
            ignore ((UserEntityFactory.getInstance ())#update (!userName, !newPasswordHashMap));
            ignore ((new NewPasswordEmail.newPasswordEmail (abeClientInformation, !userInterface, !newPassword))#process ());
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPER)) then begin
                ignore ((Obj.magic logUtil)#putF (("Generated New Password For: " ^ !userName), self, "newPassword()"))
            end;
            true
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "newPassword()", e))
            end;
            false
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method changePassword () : bool =
        try
        begin
        (try
            let userName : string ref = ref (((Obj.magic request)#getParameter ((WeblisketSessionData.get_rEMOVABLEUSERNAME ())))) in ();
            let passwordString : string ref = ref (((Obj.magic request)#getParameter ((WeblisketSessionData.get_rEMOVABLEPASSWORD ())))) in ();
            let newPassword : string ref = ref (((Obj.magic request)#getParameter ((WeblisketSessionData.get_rEMOVABLENEWPASSWORD ())))) in ();
            let newReenteredPassword : string ref = ref (((Obj.magic request)#getParameter ((WeblisketSessionData.get_rEMOVABLEREENTERNEWPASSWORD ())))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPER)) then begin
                ignore ((Obj.magic logUtil)#putF (("Changing Password For User: " ^ !userName), self, "changePassword()"))
            end;
            let password : Password.password ref = ref (((new Password.password (!newPassword)) :> Password.password)) in ();
            if (not ((!password#isValid ())#booleanValue ())) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPER)) then begin
                    ignore ((Obj.magic logUtil)#putF ("New Password Is Not Valid", self, "changePassword()"))
                end;
                raise (Java_return (Obj.repr (false)))
            end;
            if ((String.compare !newPassword (!newReenteredPassword)) != 0) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPER)) then begin
                    ignore ((Obj.magic logUtil)#putF ("New Password Fields Do Not Match", self, "changePassword()"))
                end;
                raise (Java_return (Obj.repr (false)))
            end;
            let sessionPassword : string ref = ref ((weblisketSession#getPassword ())) in ();
            let userEntityInterface : UserEntityInterface.userEntityInterface ref = ref (((UserEntityFactory.getInstance ()) :> UserEntityInterface.userEntityInterface)) in ();
            let userInterface : UserInterface.userInterface ref = ref (((!userEntityInterface#getUser (!userName)) :> UserInterface.userInterface)) in ();
            let login : string ref = ref ((!userEntityInterface#login (!userName, !passwordString))) in ();
            if ((String.compare !login ((GLOBALS2.get_lOGINSUCCESS ()))) == 0) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPER)) then begin
                    ignore ((Obj.magic logUtil)#putF ("Authentication Successful", self, "changePassword()"))
                end;
                let newPasswordHashMap : java_hash_map ref = ref (((!password#toHashMap ((Obj.magic 0))) :> java_hash_map)) in ();
                ignore ((UserEntityFactory.getInstance ())#update (!userName, !newPasswordHashMap));
                ignore ((new NewPasswordEmail.newPasswordEmail (abeClientInformation, !userInterface, !newPassword))#process ());
                raise (Java_return (Obj.repr (true)))
            end;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPER)) then begin
                ignore ((Obj.magic logUtil)#putF ("Authentication Failed", self, "changePassword()"))
            end;
            false
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Authentication Failed", self, "changePassword()", e))
            end;
            false
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method isRoleValid : 'any3. string * string * 'any3 -> bool = fun ((userName : string), (_password : string), roles) ->
        let roles = Obj.repr roles in
        try
        begin
        (try
            let userEntityInterface : UserEntityInterface.userEntityInterface ref = ref (((UserEntityFactory.getInstance ()) :> UserEntityInterface.userEntityInterface)) in ();
            let userInterface : UserInterface.userInterface ref = ref (((!userEntityInterface#getUser (userName)) :> UserInterface.userInterface)) in ();
            if ((!userInterface#getRole ()) == (Obj.magic 0)) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPER)) then begin
                    ignore ((Obj.magic logUtil)#putF (((("Role is null: " ^ java_string_of (Obj.repr ((!userInterface#getRole ())))) ^ " Valid Roles: ") ^ (java_string_of (Obj.repr (Obj.magic roles)))), self, "isRoleValid()"))
                end;
                raise (Java_return (Obj.repr (false)))
            end;
            let basicUserRoleArray : Obj.t array ref = ref (((Obj.magic roles)#toArray ())) in ();
            let size : int ref = ref ((Array.length !basicUserRoleArray)) in ();
            for index = 0 to !size - 1 do
                let nextRole : BasicUserRole.basicUserRole ref = ref (((Obj.magic !basicUserRoleArray.(index)) :> BasicUserRole.basicUserRole)) in ();
                if (((!userInterface#getRole ())#getBasicUserRole ())#equals (!nextRole)) then begin
                    ignore (!userInterface#validateSession ((Obj.magic weblisketSession)));
                    ignore ((Obj.magic request)#removeAttribute ((WeblisketSessionData.get_rEMOVABLEUSERNAME ())));
                    ignore ((Obj.magic request)#removeAttribute ((WeblisketSessionData.get_rEMOVABLEPASSWORD ())));
                    raise (Java_return (Obj.repr (true)))
                end
            done;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPER)) then begin
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!stringBuffer#append ("Role is not valid: "));
                ignore (!stringBuffer#append ((java_string_of (Obj.repr (!userInterface#getRole ())))));
                ignore (!stringBuffer#append (" Valid Roles: "));
                ignore (!stringBuffer#append ((java_string_of (Obj.repr (Obj.magic roles)))));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "isRoleValid()"))
            end;
            false
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "isRoleValid()", e))
            end;
            false
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        abeClientInformation <- ((Obj.magic (java_call_static "ServiceClientInformationInterfaceFactory.getInstance" (Obj.repr ()))) :> AbeClientInformationInterface.abeClientInformationInterface);
        ();
        ();
        ();
        weblisketSession <- (new WeblisketSession.weblisketSession (hashMap, pageContext));
        request <- Obj.repr ((Obj.magic (pageContext#getRequest ())))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "AuthenticationRequestHelper" (fun arguments -> Obj.repr (new authenticationRequestHelper (Obj.obj arguments)))


