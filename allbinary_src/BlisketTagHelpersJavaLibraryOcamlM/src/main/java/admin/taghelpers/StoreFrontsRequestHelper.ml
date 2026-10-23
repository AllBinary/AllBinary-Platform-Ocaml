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
(* import org.allbinary.business.context.modules.storefront.StoreFront *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.installer.Portion *)
(* import org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSession *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.smtp.event.UserEmailEventNameData *)
(* import org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler *)
(* import org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons *)
(* import org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons *)
(* import org.allbinary.logic.communication.smtp.info.AdminEmailInfo *)
(* import org.allbinary.logic.communication.smtp.info.BasicEmailInfo *)
(* import org.allbinary.logic.communication.smtp.info.EmailInfo *)
(* import org.allbinary.logic.communication.smtp.info.StoreEmailInfo *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory *)

class storeFrontsRequestHelper ((hashMap : java_hash_map), pageContext_arg) =
  object (self)
    inherit ModifyTable.modifyTable ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface = (Obj.magic 0)
    method abeClientInformation = abeClientInformation
    method set_abeClientInformation value' = abeClientInformation <- value'
    val mutable pageContext : Obj.t = Obj.repr 0
    method pageContext : 'r. 'r = Obj.magic pageContext
    method set_pageContext : 'v. 'v -> unit = fun value' -> pageContext <- Obj.repr value'
    val mutable request : Obj.t = Obj.repr 0
    method request : 'r. 'r = Obj.magic request
    method set_request : 'v. 'v -> unit = fun value' -> request <- Obj.repr value'
    val mutable weblisketSession : WeblisketSession.weblisketSession = (Obj.magic 0)
    method weblisketSession = weblisketSession
    method set_weblisketSession value' = weblisketSession <- value'
    val mutable storeName : string = ""
    method storeName = storeName
    method set_storeName value' = storeName <- value'
    val mutable modifyingStoreFrontInterface : StoreFrontInterface.storeFrontInterface = (Obj.magic 0)
    method modifyingStoreFrontInterface = modifyingStoreFrontInterface
    method set_modifyingStoreFrontInterface value' = modifyingStoreFrontInterface <- value'
    val mutable portion : Portion.portion = (Obj.magic 0)
    method portion = portion
    method set_portion value' = portion <- value'
    
    

    method getFormData () : unit =
        begin
        storeName <- (weblisketSession#getStoreName ());
        modifyingStoreFrontInterface <- (Obj.magic (new StoreFront.storeFront ((Obj.magic request))))
        end [@@warning "-7"]
    

    method update () : string =
        begin
        (try
            let success : string ref = ref ("Updated Successfully") in ();
            let hashMapData : java_hash_map ref = ref (((modifyingStoreFrontInterface#toHashMap ()) :> java_hash_map)) in ();
            ignore (((StoreFrontsEntityFactory.getInstance ())#getStoreFrontsEntityInstance ())#update (!hashMapData));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "update()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to update storefronts table") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "update()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method sendStoreCreatedEmails () : unit =
        begin
        let storeManagerEmailSubject : string ref = ref (("Store Manager Nofification For Store: " ^ (modifyingStoreFrontInterface#getName ()))) in ();
        let adminEmailSubject : string ref = ref (("Admin Notification For Store: " ^ (modifyingStoreFrontInterface#getName ()))) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("Store Created: "));
        ignore (!stringBuffer#append ((modifyingStoreFrontInterface#getName ())));
        ignore (!stringBuffer#append ("\n\n"));
        ignore (!stringBuffer#append ("Click here for the Admin Interface:\n"));
        ignore (!stringBuffer#append ((modifyingStoreFrontInterface#getCurrentHomeHostName ())));
        ignore (!stringBuffer#append ("/admin/login.jsp\n\n"));
        ignore (!stringBuffer#append ("Goto Your Store:\n"));
        ignore (!stringBuffer#append ((modifyingStoreFrontInterface#getCurrentHomeHostName ())));
        ignore (!stringBuffer#append ((modifyingStoreFrontInterface#getName ())));
        ignore (!stringBuffer#append ("/index.jsp"));
        ignore (!stringBuffer#append ("\n\n"));
        ignore (!stringBuffer#append ("UserName: "));
        ignore (!stringBuffer#append ((weblisketSession#getUserName ())));
        let adminEmailTextBody : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
        let adminBasicEmailInfo : BasicEmailInfo.basicEmailInfo ref = ref (((Obj.magic (new AdminEmailInfo.adminEmailInfo (!adminEmailSubject, !adminEmailTextBody))) :> BasicEmailInfo.basicEmailInfo)) in ();
        let storeAdminBasicEmailInfo : BasicEmailInfo.basicEmailInfo ref = ref (((Obj.magic (new StoreEmailInfo.storeEmailInfo (modifyingStoreFrontInterface, !storeManagerEmailSubject, !adminEmailTextBody))) :> BasicEmailInfo.basicEmailInfo)) in ();
        let storeAdminEmailInfo : EmailInfo.emailInfo ref = ref (((new EmailInfo.emailInfo (!storeAdminBasicEmailInfo)) :> EmailInfo.emailInfo)) in ();
        let adminEmailInfo : EmailInfo.emailInfo ref = ref (((new EmailInfo.emailInfo (!adminBasicEmailInfo)) :> EmailInfo.emailInfo)) in ();
        let adminUserEmailEventHandler : UserEmailEventHandler.userEmailEventHandler ref = ref ((((AdminUserEmailEventHandlerSingletons.getInstance ())#getInstance (abeClientInformation, (UserEmailEventNameData.get_sTORECREATED ()))) :> UserEmailEventHandler.userEmailEventHandler)) in ();
        let storeAdminUserEmailEventHandler : UserEmailEventHandler.userEmailEventHandler ref = ref ((((StoreAdminUserEmailEventHandlerSingletons.getInstance ())#getInstance ((UserEmailEventNameData.get_sTORECREATED ()), abeClientInformation, modifyingStoreFrontInterface)) :> UserEmailEventHandler.userEmailEventHandler)) in ();
        ignore (!storeAdminUserEmailEventHandler#receiveEmailInfo ((UserEmailEventNameData.get_sTORECREATED ()), !storeAdminEmailInfo));
        ignore (!adminUserEmailEventHandler#receiveEmailInfo ((UserEmailEventNameData.get_sTORECREATED ()), !adminEmailInfo))
        end [@@warning "-7"]
    

    method install () : string =
        begin
        (try
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("Intall StoreFront Successfully: "));
            ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((portion#getCurrent ())#intValue ()))))));
            ignore (!stringBuffer#append (" of "));
            ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((portion#getTotal ())#intValue ()))))));
            let success : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
            ignore (modifyingStoreFrontInterface#install (((portion#getCurrent ())#intValue ()), ((portion#getTotal ())#intValue ())));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "install()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to Install storefront") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "install()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method insert () : string =
        begin
        (try
            let success : string ref = ref ("Added Successfully") in ();
            let values : BasicArrayList.basicArrayList ref = ref (((modifyingStoreFrontInterface#toVector ()) :> BasicArrayList.basicArrayList)) in ();
            ignore (((StoreFrontsEntityFactory.getInstance ())#getStoreFrontsEntityInstance ())#insert (!values));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "insert()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to add storefront") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "insert()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method delete () : string =
        begin
        (try
            let success : string ref = ref ("Delete Successfully") in ();
            ignore (((StoreFrontsEntityFactory.getInstance ())#getStoreFrontsEntityInstance ())#delete (storeName));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "delete()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to delete storefronts table") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "delete()", e))
            end;
            !error
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        abeClientInformation <- ((Obj.magic (java_call_static "ServiceClientInformationInterfaceFactory.getInstance" (Obj.repr ()))) :> AbeClientInformationInterface.abeClientInformationInterface);
        ();
        ();
        ();
        storeName <- "";
        modifyingStoreFrontInterface <- ((Obj.magic 0) :> StoreFrontInterface.storeFrontInterface);
        ();
        ();
        pageContext <- Obj.repr (pageContext_arg);
        request <- Obj.repr ((Obj.magic (pageContext_arg#getRequest ())));
        weblisketSession <- (new WeblisketSession.weblisketSession (hashMap, pageContext_arg));
        portion <- (new Portion.portion (hashMap));
        (self#getFormData ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "StoreFrontsRequestHelper" (fun arguments -> Obj.repr (new storeFrontsRequestHelper (Obj.obj arguments)))


