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
(* package taghelpers *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.http.HttpServletResponse *)
(* import javax.servlet.jsp.PageContext *)
(* import admin.taghelpers.TagHelper *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.user.address.StreetAddress *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemData *)
(* import org.allbinary.logic.communication.http.AcceptableResponseGenerator *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSession *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.search.SearchParams *)
(* import org.allbinary.logic.control.search.SearchRequest *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoData *)
(* import views.admin.inventory.listings.InventoryViewFactory *)
(* import views.admin.inventory.listings.InventoryViewSearchInterface *)

class inventoryHelper ((propertiesHashMap : java_hash_map), pageContext) =
  object (self)
    inherit TagHelper.tagHelper ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable basicItemData : BasicItemData.basicItemData = (Obj.magic 0)
    method basicItemData = basicItemData
    method set_basicItemData value' = basicItemData <- value'
    val mutable weblisketSession : WeblisketSession.weblisketSession = (Obj.magic 0)
    method weblisketSession = weblisketSession
    method set_weblisketSession value' = weblisketSession <- value'
    val mutable response : Obj.t = Obj.repr 0
    method response : 'r. 'r = Obj.magic response
    method set_response : 'v. 'v -> unit = fun value' -> response <- Obj.repr value'
    val mutable request : Obj.t = Obj.repr 0
    method request : 'r. 'r = Obj.magic request
    method set_request : 'v. 'v -> unit = fun value' -> request <- Obj.repr value'
    val mutable streetAddress : StreetAddress.streetAddress = (Obj.magic 0)
    method streetAddress = streetAddress
    method set_streetAddress value' = streetAddress <- value'
    val mutable id : string = ""
    method id = id
    method set_id value' = id <- value'
    val mutable searchRequest : SearchRequest.searchRequest = (Obj.magic 0)
    method searchRequest = searchRequest
    method set_searchRequest value' = searchRequest <- value'
    
    

    method getFormData () : unit =
        begin
        id <- ((Obj.magic request)#getParameter (basicItemData#iD))
        end [@@warning "-7"]
    

    method viewSummary () : string =
        begin
        (try
            let inventoryViewSearchInterface : Obj.t ref = ref ((Obj.repr (InventoryViewFactory.getInstance (searchRequest)))) in ();
            let result : string ref = ref (((Obj.magic !inventoryViewSearchInterface)#getProduct (id))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF ("Successfull Inventory View Summary", self, "viewSummary()"))
            end;
            !result
        with e -> begin
            let error : string ref = ref ("Failed to View Summary") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "viewSummary()", e))
            end;
            ((((!error ^ "<br>") ^ "Exception: ") ^ java_string_of (Obj.repr (e))) ^ "<br>")
        end)
        end [@@warning "-7"]
    

    method search () : string =
        try
        begin
        (try
            let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
            let keywords : string ref = ref ((Obj.magic (((searchRequest#getParams ())#get ())#get (basicItemData#kEYWORDS)))) in ();
            if ((!keywords = (Obj.magic 0)) || ((String.compare !keywords (!stringUtil#eMPTY_STRING)) == 0)) then begin
                raise (Java_return (Obj.repr ("Please enter a keyword in the search field above the Search button.")))
            end;
            let inventoryViewSearchInterface : Obj.t ref = ref ((Obj.repr (InventoryViewFactory.getInstance (searchRequest)))) in ();
            let result : string ref = ref (((Obj.magic !inventoryViewSearchInterface)#searchSingleDynamicPage ())) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF ("Successful Inventory Dynamic Search", self, "searchSingleDynamicPage()"))
            end;
            !result
        with e -> begin
            let error : string ref = ref ("Failed to search Inventory by keyword") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "searchSingleDynamicPage()", e))
            end;
            ((((!error ^ "<br>") ^ "Exception: ") ^ java_string_of (Obj.repr (e))) ^ "<br>")
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        basicItemData <- ((BasicItemData.getInstance ()) :> BasicItemData.basicItemData);
        weblisketSession <- ((Obj.magic 0) :> WeblisketSession.weblisketSession);
        ();
        ();
        streetAddress <- ((Obj.magic 0) :> StreetAddress.streetAddress);
        id <- "";
        searchRequest <- ((Obj.magic 0) :> SearchRequest.searchRequest);
        ();
        response <- Obj.repr ((Obj.magic (pageContext#getResponse ())));
        request <- Obj.repr ((Obj.magic (pageContext#getRequest ())));
        let storeName : string ref = ref ((Obj.magic (propertiesHashMap#get ((StoreFrontData.getInstance ())#nAME)))) in ();
        let xslFile : string ref = ref ((Obj.magic (propertiesHashMap#get ((TransformInfoData.getInstance ())#tEMPLATEFILENAME)))) in ();
        if (!storeName <> (Obj.magic 0)) then begin
            let storeFrontInterface : StoreFrontInterface.storeFrontInterface ref = ref (((StoreFrontFactory.getInstance (!storeName)) :> StoreFrontInterface.storeFrontInterface)) in ();
            let contentType : string ref = ref (((AcceptableResponseGenerator.getInstance ())#get ((Obj.magic request)))) in ();
            let searchParams : SearchParams.searchParams ref = ref (((new SearchParams.searchParams ((Obj.magic request))) :> SearchParams.searchParams)) in ();
            searchRequest <- (new SearchRequest.searchRequest (!storeFrontInterface, !searchParams, !xslFile, !contentType, propertiesHashMap, pageContext))
        end;
        (self#getFormData ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "InventoryHelper" (fun arguments -> Obj.repr (new inventoryHelper (Obj.obj arguments)))


