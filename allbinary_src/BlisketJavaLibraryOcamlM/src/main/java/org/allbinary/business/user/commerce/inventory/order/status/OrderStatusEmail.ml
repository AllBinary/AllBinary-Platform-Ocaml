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
(* package org.allbinary.business.user.commerce.inventory.order.status *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.context.modules.storefront.StoreFrontFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.user.UserInterface *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderHistory *)
(* import org.allbinary.data.tables.user.UserEntityFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.smtp.event.UserEmailEventNameData *)
(* import org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler *)
(* import org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons *)
(* import org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons *)
(* import org.allbinary.logic.communication.smtp.event.handler.factory.UserEmailEventHandlerSingletons *)
(* import org.allbinary.logic.communication.smtp.info.AdminEmailInfo *)
(* import org.allbinary.logic.communication.smtp.info.BasicEmailInfo *)
(* import org.allbinary.logic.communication.smtp.info.EmailInfo *)
(* import org.allbinary.logic.communication.smtp.info.StoreEmailInfo *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.string.CommonStrings *)

class orderStatusEmail ((abeClientInformation_arg : AbeClientInformationInterface.abeClientInformationInterface), (orderHistory_arg : OrderHistory.orderHistory)) =
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
    val mutable orderHistory : OrderHistory.orderHistory = (Obj.magic 0)
    method orderHistory = orderHistory
    method set_orderHistory value' = orderHistory <- value'
    val mutable storeFrontInterface : StoreFrontInterface.storeFrontInterface = (Obj.magic 0)
    method storeFrontInterface = storeFrontInterface
    method set_storeFrontInterface value' = storeFrontInterface <- value'
    val mutable user : UserInterface.userInterface = (Obj.magic 0)
    method user = user
    method set_user value' = user <- value'
    
    

    method process () : unit =
        begin
        (self#notifyStoreAdmin ());
        (self#notifyUser ())
        end
    

    method notifyStoreAdmin () : unit =
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ("Order Email", self, "emailStoreAdmin"))
            end;
            let adminEmailSubject : string ref = ref ((("Order " ^ java_string_of (Obj.repr ((orderHistory#getStatus ())))) ^ " Attempt")) in ();
            let adminEmailTextBody : string ref = ref (((("Order attempt: " ^ java_string_of (Obj.repr ((orderHistory#getId ())))) ^ " Preprocessing by: ") ^ java_string_of (Obj.repr ((user#getUserName ()))))) in ();
            let adminBasicEmailInfo : BasicEmailInfo.basicEmailInfo ref = ref (((Obj.magic (new AdminEmailInfo.adminEmailInfo (!adminEmailSubject, !adminEmailTextBody))) :> BasicEmailInfo.basicEmailInfo)) in ();
            let storeAdminBasicEmailInfo : BasicEmailInfo.basicEmailInfo ref = ref (((Obj.magic (new StoreEmailInfo.storeEmailInfo (storeFrontInterface, !adminEmailSubject, !adminEmailTextBody))) :> BasicEmailInfo.basicEmailInfo)) in ();
            let storeAdminEmailInfo : EmailInfo.emailInfo ref = ref (((new EmailInfo.emailInfo (!storeAdminBasicEmailInfo)) :> EmailInfo.emailInfo)) in ();
            let adminEmailInfo : EmailInfo.emailInfo ref = ref (((new EmailInfo.emailInfo (!adminBasicEmailInfo)) :> EmailInfo.emailInfo)) in ();
            let userEmailEventNameData : UserEmailEventNameData.userEmailEventNameData ref = ref (((UserEmailEventNameData.getInstance ((orderHistory#getStatus ()))) :> UserEmailEventNameData.userEmailEventNameData)) in ();
            let adminUserEmailEventHandler : UserEmailEventHandler.userEmailEventHandler ref = ref ((((AdminUserEmailEventHandlerSingletons.getInstance ())#getInstance (abeClientInformation, !userEmailEventNameData)) :> UserEmailEventHandler.userEmailEventHandler)) in ();
            let storeAdminUserEmailEventHandler : UserEmailEventHandler.userEmailEventHandler ref = ref ((((StoreAdminUserEmailEventHandlerSingletons.getInstance ())#getInstance (!userEmailEventNameData, abeClientInformation, storeFrontInterface)) :> UserEmailEventHandler.userEmailEventHandler)) in ();
            ignore (!storeAdminUserEmailEventHandler#receiveEmailInfo (!userEmailEventNameData, !storeAdminEmailInfo));
            ignore (!adminUserEmailEventHandler#receiveEmailInfo (!userEmailEventNameData, !adminEmailInfo))
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
            let subject : string ref = ref ((("Order " ^ java_string_of (Obj.repr ((orderHistory#getStatus ())))) ^ " Attempt")) in ();
            let textBody : string ref = ref (((("Order attempt: " ^ java_string_of (Obj.repr ((orderHistory#getId ())))) ^ " Preprocessing by: ") ^ java_string_of (Obj.repr ((user#getUserName ()))))) in ();
            let basicEmailInfo : BasicEmailInfo.basicEmailInfo ref = ref (((Obj.magic (new StoreEmailInfo.storeEmailInfo (storeFrontInterface, !subject, !textBody))) :> BasicEmailInfo.basicEmailInfo)) in ();
            let emailInfo : EmailInfo.emailInfo ref = ref (((new EmailInfo.emailInfo (!basicEmailInfo)) :> EmailInfo.emailInfo)) in ();
            let userEmailEventNameData : UserEmailEventNameData.userEmailEventNameData ref = ref (((UserEmailEventNameData.getInstance ((orderHistory#getStatus ()))) :> UserEmailEventNameData.userEmailEventNameData)) in ();
            let userEmailEventHandler : UserEmailEventHandler.userEmailEventHandler ref = ref ((((UserEmailEventHandlerSingletons.getInstance ())#getInstance (abeClientInformation, !userEmailEventNameData, user)) :> UserEmailEventHandler.userEmailEventHandler)) in ();
            ignore (!userEmailEventHandler#receiveEmailInfo (!userEmailEventNameData, !emailInfo))
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
        ();
        abeClientInformation <- abeClientInformation_arg;
        orderHistory <- orderHistory_arg;
        let storeName : string ref = ref ((orderHistory_arg#getStoreName ())) in ();
        storeFrontInterface <- (StoreFrontFactory.getInstance (!storeName));
        user <- ((UserEntityFactory.getInstance ())#getUser ((orderHistory_arg#getUserName ())))
      end
  end [@@warning "-20"]
let () = java_register_constructor "OrderStatusEmail" (fun arguments -> Obj.repr (new orderStatusEmail (Obj.obj arguments)))


