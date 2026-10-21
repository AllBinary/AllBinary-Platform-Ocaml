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
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.logic.communication.smtp.event.UserEmailEventNameData *)
(* import org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler *)
(* import org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons *)
(* import org.allbinary.logic.communication.smtp.info.AdminEmailInfo *)
(* import org.allbinary.logic.communication.smtp.info.BasicEmailInfo *)
(* import org.allbinary.logic.communication.smtp.info.EmailInfo *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory *)

class basicTextEmailHelper ((hashMap_arg : java_hash_map), pageContext_arg) =
  object
    inherit TagHelper.tagHelper ()
    val mutable abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface = (Obj.magic 0)
    method abeClientInformation = abeClientInformation
    method set_abeClientInformation value' = abeClientInformation <- value'
    val mutable hashMap : java_hash_map = (Obj.magic 0)
    method hashMap = hashMap
    method set_hashMap value' = hashMap <- value'
    val mutable pageContext : Obj.t = Obj.repr 0
    method pageContext : 'r. 'r = Obj.magic pageContext
    method set_pageContext : 'v. 'v -> unit = fun value' -> pageContext <- Obj.repr value'
    
    

    method send () : unit =
        begin
        let adminEmailSubject : string ref = ref ((Obj.magic (hashMap#get ("Subject")))) in ();
        let adminEmailTextBody : string ref = ref ((Obj.magic (hashMap#get ("Body")))) in ();
        let adminBasicEmailInfo : BasicEmailInfo.basicEmailInfo ref = ref (((Obj.magic (new AdminEmailInfo.adminEmailInfo (!adminEmailSubject, !adminEmailTextBody))) :> BasicEmailInfo.basicEmailInfo)) in ();
        let adminEmailInfo : EmailInfo.emailInfo ref = ref (((new EmailInfo.emailInfo (!adminBasicEmailInfo)) :> EmailInfo.emailInfo)) in ();
        let adminUserEmailEventHandler : UserEmailEventHandler.userEmailEventHandler ref = ref ((((AdminUserEmailEventHandlerSingletons.getInstance ())#getInstance (abeClientInformation, (UserEmailEventNameData.get_iNSTALLER ()))) :> UserEmailEventHandler.userEmailEventHandler)) in ();
        ignore (!adminUserEmailEventHandler#receiveEmailInfo ((UserEmailEventNameData.get_iNSTALLER ()), !adminEmailInfo))
        end [@@warning "-7"]

    initializer
      begin
        abeClientInformation <- ((Obj.magic (java_call_static "ServiceClientInformationInterfaceFactory.getInstance" (Obj.repr ()))) :> AbeClientInformationInterface.abeClientInformationInterface);
        ();
        ();
        ();
        pageContext <- Obj.repr (pageContext_arg);
        hashMap <- hashMap_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicTextEmailHelper" (fun arguments -> Obj.repr (new basicTextEmailHelper (Obj.obj arguments)))


