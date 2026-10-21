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
(* package org.allbinary.logic.communication.smtp.email *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.user.UserInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.smtp.event.UserEmailEventNameData *)
(* import org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler *)
(* import org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons *)
(* import org.allbinary.logic.communication.smtp.event.handler.factory.UserEmailEventHandlerSingletons *)
(* import org.allbinary.logic.communication.smtp.info.AdminEmailInfo *)
(* import org.allbinary.logic.communication.smtp.info.BasicEmailInfo *)
(* import org.allbinary.logic.communication.smtp.info.EmailInfo *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.string.CommonStrings *)

class newPasswordEmail ((abeClientInformation_arg : AbeClientInformationInterface.abeClientInformationInterface), (userInterface_arg : UserInterface.userInterface), (newPassword_arg : string)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface = (Obj.magic 0)
    method abeClientInformation = abeClientInformation
    method set_abeClientInformation value' = abeClientInformation <- value'
    val mutable userInterface : UserInterface.userInterface = (Obj.magic 0)
    method userInterface = userInterface
    method set_userInterface value' = userInterface <- value'
    val mutable newPassword : string = ""
    method newPassword = newPassword
    method set_newPassword value' = newPassword <- value'
    
    

    method process () : unit =
        begin
        (self#notifyStoreAdmin ());
        (self#notifyUser ())
        end
    

    method notifyStoreAdmin () : unit =
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ("notifyStoreAdmin", self, "notifyStoreAdmin"))
            end;
            let emailSubject : string ref = ref (("New Password For User: " ^ java_string_of (Obj.repr ((userInterface#getUserName ()))))) in ();
            let emailBody : string ref = ref (("New Password: " ^ newPassword)) in ();
            let basicEmailInfo : BasicEmailInfo.basicEmailInfo ref = ref (((Obj.magic (new AdminEmailInfo.adminEmailInfo (!emailSubject, !emailBody))) :> BasicEmailInfo.basicEmailInfo)) in ();
            let emailInfo : EmailInfo.emailInfo ref = ref (((new EmailInfo.emailInfo (!basicEmailInfo)) :> EmailInfo.emailInfo)) in ();
            let adminUserEmailEventHandler : UserEmailEventHandler.userEmailEventHandler ref = ref ((((AdminUserEmailEventHandlerSingletons.getInstance ())#getInstance (abeClientInformation, (UserEmailEventNameData.get_nEWPASSWORD ()))) :> UserEmailEventHandler.userEmailEventHandler)) in ();
            ignore (!adminUserEmailEventHandler#receiveEmailInfo ((UserEmailEventNameData.get_nEWPASSWORD ()), !emailInfo))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "emailAdmin", e))
            end
        end)
        end
    

    method notifyUser () : unit =
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ("Email User", self, "notifyUser()"))
            end;
            let subject : string ref = ref ("New Password") in ();
            let body : string ref = ref (("New Password: " ^ newPassword)) in ();
            let basicEmailInfo : BasicEmailInfo.basicEmailInfo ref = ref (((Obj.magic (new AdminEmailInfo.adminEmailInfo (!subject, !body))) :> BasicEmailInfo.basicEmailInfo)) in ();
            let emailInfo : EmailInfo.emailInfo ref = ref (((new EmailInfo.emailInfo (!basicEmailInfo)) :> EmailInfo.emailInfo)) in ();
            let userEmailEventHandler : UserEmailEventHandler.userEmailEventHandler ref = ref ((((UserEmailEventHandlerSingletons.getInstance ())#getInstance (abeClientInformation, (UserEmailEventNameData.get_nEWPASSWORD ()), userInterface)) :> UserEmailEventHandler.userEmailEventHandler)) in ();
            ignore (!userEmailEventHandler#receiveEmailInfo ((UserEmailEventNameData.get_nEWPASSWORD ()), !emailInfo))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "notifyUser", e))
            end;
            raise e
        end)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        ();
        ();
        abeClientInformation <- abeClientInformation_arg;
        userInterface <- userInterface_arg;
        newPassword <- newPassword_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "NewPasswordEmail" (fun arguments -> Obj.repr (new newPasswordEmail (Obj.obj arguments)))


