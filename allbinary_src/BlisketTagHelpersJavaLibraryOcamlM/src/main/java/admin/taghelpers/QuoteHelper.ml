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
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.business.context.modules.storefront.StoreFront *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.installer.Portion *)
(* import org.allbinary.business.user.UserInterface *)
(* import org.allbinary.business.user.quoterequest.QuoteRequest *)
(* import org.allbinary.data.tables.user.UserEntityFactory *)
(* import org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity *)
(* import org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSession *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.smtp.event.UserEmailEventNameData *)
(* import org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler *)
(* import org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons *)
(* import org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons *)
(* import org.allbinary.logic.communication.smtp.event.handler.factory.UserEmailEventHandlerSingletons *)
(* import org.allbinary.logic.communication.smtp.info.BasicEmailInfo *)
(* import org.allbinary.logic.communication.smtp.info.EmailInfo *)
(* import org.allbinary.logic.communication.smtp.info.StoreEmailInfo *)
(* import org.allbinary.logic.communication.sql.AbSqlTableUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory *)

class quoteHelper ((hashMap : java_hash_map), pageContext) =
  object (self)
    inherit BasicTable.basicTable ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface = (Obj.magic 0)
    method abeClientInformation = abeClientInformation
    method set_abeClientInformation value' = abeClientInformation <- value'
    val mutable weblisketSession : WeblisketSession.weblisketSession = (Obj.magic 0)
    method weblisketSession = weblisketSession
    method set_weblisketSession value' = weblisketSession <- value'
    val mutable storeFrontInterface : StoreFrontInterface.storeFrontInterface = (Obj.magic 0)
    method storeFrontInterface = storeFrontInterface
    method set_storeFrontInterface value' = storeFrontInterface <- value'
    val mutable portion : Portion.portion = (Obj.magic 0)
    method portion = portion
    method set_portion value' = portion <- value'
    
    

    method emailUser : 'any1. 'any1 -> unit = fun (quoteRequest) ->
        let quoteRequest = Obj.repr quoteRequest in
        begin
        let user : UserInterface.userInterface ref = ref ((((UserEntityFactory.getInstance ())#getUser (((Obj.magic quoteRequest)#getUserName ()))) :> UserInterface.userInterface)) in ();
        let userEmailSubject : string ref = ref ("Quote Request Receipt") in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("This is just a verification email. "));
        ignore (!stringBuffer#append ("We usually respond to quote request within 24 hours."));
        ignore (!stringBuffer#append ("\n\nThank You For Your Business."));
        let userEmailTextBody : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
        let basicEmailInfo : BasicEmailInfo.basicEmailInfo ref = ref (((Obj.magic (new StoreEmailInfo.storeEmailInfo (storeFrontInterface, !userEmailSubject, !userEmailTextBody))) :> BasicEmailInfo.basicEmailInfo)) in ();
        let emailInfo : EmailInfo.emailInfo ref = ref (((new EmailInfo.emailInfo (!basicEmailInfo)) :> EmailInfo.emailInfo)) in ();
        let userEmailEventHandler : UserEmailEventHandler.userEmailEventHandler ref = ref ((((UserEmailEventHandlerSingletons.getInstance ())#getInstance (abeClientInformation, (UserEmailEventNameData.get_qUOTEREQUEST ()), !user)) :> UserEmailEventHandler.userEmailEventHandler)) in ();
        ignore (!userEmailEventHandler#receiveEmailInfo ((UserEmailEventNameData.get_qUOTEREQUEST ()), !emailInfo))
        end [@@warning "-7-20"]
    

    method emailAdmins : 'any1. 'any1 -> unit = fun (quoteRequest) ->
        let quoteRequest = Obj.repr quoteRequest in
        begin
        let adminEmailSubject : string ref = ref ("Quote Request") in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("\nUserName: "));
        ignore (!stringBuffer#append (((Obj.magic quoteRequest)#getUserName ())));
        ignore (!stringBuffer#append ("\nProject Info: \n"));
        ignore (!stringBuffer#append (((Obj.magic quoteRequest)#getProjectInfo ())));
        ignore (!stringBuffer#append ("\nUser Comments: \n"));
        ignore (!stringBuffer#append (((Obj.magic quoteRequest)#getUserComments ())));
        ignore (!stringBuffer#append ("\nBudget: \n"));
        ignore (!stringBuffer#append (((Obj.magic quoteRequest)#getBudget ())));
        ignore (!stringBuffer#append ("\nTime Frame: \n"));
        ignore (!stringBuffer#append (((Obj.magic quoteRequest)#getTimeFrame ())));
        ignore (!stringBuffer#append ("\nComments: \n"));
        ignore (!stringBuffer#append (((Obj.magic quoteRequest)#getComments ())));
        let adminEmailTextBody : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
        let basicEmailInfo : BasicEmailInfo.basicEmailInfo ref = ref (((Obj.magic (new StoreEmailInfo.storeEmailInfo (storeFrontInterface, !adminEmailSubject, !adminEmailTextBody))) :> BasicEmailInfo.basicEmailInfo)) in ();
        let emailInfo : EmailInfo.emailInfo ref = ref (((new EmailInfo.emailInfo (!basicEmailInfo)) :> EmailInfo.emailInfo)) in ();
        let storeAdminUserEmailEventHandler : UserEmailEventHandler.userEmailEventHandler ref = ref ((((AdminUserEmailEventHandlerSingletons.getInstance ())#getInstance (abeClientInformation, (UserEmailEventNameData.get_qUOTEREQUEST ()))) :> UserEmailEventHandler.userEmailEventHandler)) in ();
        let adminUserEmailEventHandler : UserEmailEventHandler.userEmailEventHandler ref = ref ((((StoreAdminUserEmailEventHandlerSingletons.getInstance ())#getInstance ((UserEmailEventNameData.get_qUOTEREQUEST ()), abeClientInformation, storeFrontInterface)) :> UserEmailEventHandler.userEmailEventHandler)) in ();
        ignore (!storeAdminUserEmailEventHandler#receiveEmailInfo ((UserEmailEventNameData.get_qUOTEREQUEST ()), !emailInfo));
        ignore (!adminUserEmailEventHandler#receiveEmailInfo ((UserEmailEventNameData.get_qUOTEREQUEST ()), !emailInfo))
        end [@@warning "-7-20"]
    

    method email () : string =
        try
        begin
        (try
            let quoteRequestEntity : QuoteRequestEntity.quoteRequestEntity ref = ref ((((QuoteRequestEntityFactory.getInstance ())#getQuoteRequestEntityInstance ()) :> QuoteRequestEntity.quoteRequestEntity)) in ();
            let userName : string ref = ref ((weblisketSession#getUserName ())) in ();
            let vector : BasicArrayList.basicArrayList ref = ref (((!quoteRequestEntity#getIds (!userName)) :> BasicArrayList.basicArrayList)) in ();
            let id : int ref = ref (0) in ();
            let size : int ref = ref ((!vector#size ())) in ();
            for index = 0 to !size - 1 do
                let nextId : int ref = ref ((((Obj.magic (!vector#get (index))))#intValue ())) in ();
                if (!id < !nextId) then begin
                    id := !nextId
                end
            done;
            let quoteRequest : QuoteRequest.quoteRequest ref = ref (((!quoteRequestEntity#get (!userName, !id)) :> QuoteRequest.quoteRequest)) in ();
            if (!quoteRequest != (Obj.magic 0)) then begin
                (self#emailUser (!quoteRequest));
                (self#emailAdmins (!quoteRequest));
                raise (Java_return (Obj.repr ("Thank You For Your Business.<p/>")))
            end else begin
                raise (Failure ("No Quote Request"))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, "email", e))
            end;
            "Thank You For Your Business.<p>"
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method drop () : string =
        begin
        (try
            let success : string ref = ref ((((QuoteRequestEntityFactory.getInstance ())#getQuoteRequestEntityInstance ())#dropTable ())) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, (self#commonStrings)#dROP))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to drop QuoteRequest table") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#commonStrings)#dROP, e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method create () : string =
        begin
        (try
            let success : string ref = ref ((((QuoteRequestEntityFactory.getInstance ())#getQuoteRequestEntityInstance ())#createTable ())) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "create()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to create new QuoteRequest table") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "create()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method restore () : string =
        begin
        (try
            let success : string ref = ref ("Restore Successful") in ();
            let result : string ref = ref (((Obj.magic (java_call_static "AbSqlTableUtil.getInstance" (Obj.repr ())))#restoreTable (((QuoteRequestEntityFactory.getInstance ())#getQuoteRequestEntityInstance ()), portion))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "restore()"))
            end;
            !result
        with e -> begin
            let error : string ref = ref ("Failed to restore backup") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "restore()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method backup () : string =
        begin
        (try
            let success : string ref = ref ("Restore Successful") in ();
            let result : string ref = ref (((Obj.magic (java_call_static "AbSqlTableUtil.getInstance" (Obj.repr ())))#backupTable (((QuoteRequestEntityFactory.getInstance ())#getQuoteRequestEntityInstance ())))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "backup()"))
            end;
            !result
        with e -> begin
            let error : string ref = ref ("Failed to make backup") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "backup()", e))
            end;
            !error
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        abeClientInformation <- ((Obj.magic (java_call_static "ServiceClientInformationInterfaceFactory.getInstance" (Obj.repr ()))) :> AbeClientInformationInterface.abeClientInformationInterface);
        ();
        storeFrontInterface <- ((Obj.magic 0) :> StoreFrontInterface.storeFrontInterface);
        ();
        ();
        let storeName : string ref = ref ((Obj.magic (hashMap#get ((StoreFrontData.getInstance ())#nAME)))) in ();
        if (!storeName <> (Obj.magic 0)) then begin
            storeFrontInterface <- (StoreFrontFactory.getInstance (!storeName))
        end else begin
            storeFrontInterface <- (new StoreFront.storeFront ())
        end;
        weblisketSession <- (new WeblisketSession.weblisketSession (hashMap, pageContext));
        portion <- (new Portion.portion (hashMap))
      end
  end [@@warning "-20"]
let () = java_register_constructor "QuoteHelper" (fun arguments -> Obj.repr (new quoteHelper (Obj.obj arguments)))


