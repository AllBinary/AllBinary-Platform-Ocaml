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
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.business.context.AbContext *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.communication.http.AcceptableResponseGenerator *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.smtp.event.UserEmailEventNameData *)
(* import org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler *)
(* import org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons *)
(* import org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons *)
(* import org.allbinary.logic.communication.smtp.info.AdminEmailInfo *)
(* import org.allbinary.logic.communication.smtp.info.BasicEmailInfo *)
(* import org.allbinary.logic.communication.smtp.info.EmailInfo *)
(* import org.allbinary.logic.communication.smtp.info.StoreEmailInfo *)
(* import org.allbinary.logic.control.search.SearchParams *)
(* import org.allbinary.logic.control.search.SearchRequest *)
(* import org.allbinary.logic.io.file.FileUtil *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoData *)
(* import views.admin.inventory.listings.ProductListingFactory *)

class staticPagesRequestHelper ((propertiesHashMap : java_hash_map), pageContext) =
  object (self)
    inherit AbContext.abContext (propertiesHashMap, pageContext)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface = (Obj.magic 0)
    method abeClientInformation = abeClientInformation
    method set_abeClientInformation value' = abeClientInformation <- value'
    val mutable request : Obj.t = Obj.repr 0
    method request : 'r. 'r = Obj.magic request
    method set_request : 'v. 'v -> unit = fun value' -> request <- Obj.repr value'
    val mutable storeName : string = ""
    method storeName = storeName
    method set_storeName value' = storeName <- value'
    val mutable searchParams : SearchParams.searchParams = (Obj.magic 0)
    method searchParams = searchParams
    method set_searchParams value' = searchParams <- value'
    val mutable xslFile : string = ""
    method xslFile = xslFile
    method set_xslFile value' = xslFile <- value'
    
    

    method getFormData () : unit =
        begin
        storeName <- ((Obj.magic request)#getParameter ((StoreFrontData.getInstance ())#nAME));
        searchParams <- (new SearchParams.searchParams ((Obj.magic request)))
        end [@@warning "-7"]
    

    method email () : unit =
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ("Generated Static Pages Notification Email", self, "email"))
            end;
            let storeFrontInterface : StoreFrontInterface.storeFrontInterface ref = ref (((StoreFrontFactory.getInstance (storeName)) :> StoreFrontInterface.storeFrontInterface)) in ();
            let adminEmailSubject : string ref = ref ("Generated Static Pages Email Notification") in ();
            let adminEmailTextBody : string ref = ref (("Generated static pages for store: " ^ storeName)) in ();
            let adminBasicEmailInfo : BasicEmailInfo.basicEmailInfo ref = ref (((Obj.magic (new AdminEmailInfo.adminEmailInfo (!adminEmailSubject, !adminEmailTextBody))) :> BasicEmailInfo.basicEmailInfo)) in ();
            let storeAdminBasicEmailInfo : BasicEmailInfo.basicEmailInfo ref = ref (((Obj.magic (new StoreEmailInfo.storeEmailInfo (!storeFrontInterface, !adminEmailSubject, !adminEmailTextBody))) :> BasicEmailInfo.basicEmailInfo)) in ();
            let storeAdminEmailInfo : EmailInfo.emailInfo ref = ref (((new EmailInfo.emailInfo (!storeAdminBasicEmailInfo)) :> EmailInfo.emailInfo)) in ();
            let adminEmailInfo : EmailInfo.emailInfo ref = ref (((new EmailInfo.emailInfo (!adminBasicEmailInfo)) :> EmailInfo.emailInfo)) in ();
            let adminUserEmailEventHandler : UserEmailEventHandler.userEmailEventHandler ref = ref ((((AdminUserEmailEventHandlerSingletons.getInstance ())#getInstance (abeClientInformation, (UserEmailEventNameData.get_sTOREGENERATINGSTATICPAGES ()))) :> UserEmailEventHandler.userEmailEventHandler)) in ();
            let storeAdminUserEmailEventHandler : UserEmailEventHandler.userEmailEventHandler ref = ref ((((StoreAdminUserEmailEventHandlerSingletons.getInstance ())#getInstance ((UserEmailEventNameData.get_sTOREGENERATINGSTATICPAGES ()), abeClientInformation, !storeFrontInterface)) :> UserEmailEventHandler.userEmailEventHandler)) in ();
            ignore (!storeAdminUserEmailEventHandler#receiveEmailInfo ((UserEmailEventNameData.get_sTOREGENERATINGSTATICPAGES ()), !storeAdminEmailInfo));
            ignore (!adminUserEmailEventHandler#receiveEmailInfo ((UserEmailEventNameData.get_sTOREGENERATINGSTATICPAGES ()), !adminEmailInfo))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, "email", e))
            end
        end)
        end [@@warning "-7"]
    

    method generateStaticPages () : string =
        begin
        (try
            let contentType : string ref = ref (((AcceptableResponseGenerator.getInstance ())#get ((Obj.magic request)))) in ();
            let searchRequest : SearchRequest.searchRequest ref = ref (((new SearchRequest.searchRequest ((Obj.magic 0), searchParams, xslFile, !contentType, (self#getPropertiesHashMap ()), (self#getPageContext ()))) :> SearchRequest.searchRequest)) in ();
            let success : string ref = ref (((ProductListingFactory.getInstance (!searchRequest))#generateAll (storeName))) in ();
            (self#email ());
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "generateStaticPages()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to generate staticpages table") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "generateStaticPages()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method makePublic () : string =
        begin
        (try
            let storeFrontInterface : StoreFrontInterface.storeFrontInterface ref = ref (((StoreFrontFactory.getInstance (storeName)) :> StoreFrontInterface.storeFrontInterface)) in ();
            let fromAbPath : AbPath.abPath ref = ref (((new AbPath.abPath (((!storeFrontInterface#getTestHtmlPath ()) + (!storeFrontInterface#getStaticPath ())), (StringUtil.getInstance ())#eMPTY_STRING)) :> AbPath.abPath)) in ();
            let toAbPath : AbPath.abPath ref = ref (((new AbPath.abPath ((((java_string_of (Obj.repr ((URLGLOBALS.getWebappPath ()))) ^ (!storeFrontInterface#getName ())) ^ java_string_of (Obj.repr ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR))) ^ java_string_of (Obj.repr ((!storeFrontInterface#getStaticPath ())))), (StringUtil.getInstance ())#eMPTY_STRING)) :> AbPath.abPath)) in ();
            ignore ((FileUtil.getInstance ())#copy (!fromAbPath, !toAbPath));
            let success : string ref = ref ("Made Public") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "makePublic()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to makePublic") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "makePublic()", e))
            end;
            !error
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        abeClientInformation <- ((Obj.magic (java_call_static "ServiceClientInformationInterfaceFactory.getInstance" (Obj.repr ()))) :> AbeClientInformationInterface.abeClientInformationInterface);
        ();
        storeName <- "";
        searchParams <- ((Obj.magic 0) :> SearchParams.searchParams);
        ();
        ();
        (* super(...) is the inherit clause *) ();
        request <- Obj.repr ((Obj.magic (pageContext#getRequest ())));
        xslFile <- (Obj.magic (propertiesHashMap#get ((TransformInfoData.getInstance ())#tEMPLATEFILENAME)));
        (self#getFormData ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "StaticPagesRequestHelper" (fun arguments -> Obj.repr (new staticPagesRequestHelper (Obj.obj arguments)))


