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
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.user.quoterequest.QuoteRequest *)
(* import org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSession *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class quoteRequestHelper ((hashMap : java_hash_map), pageContext) =
  object (self)
    inherit ModifyTable.modifyTable ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable weblisketSession : WeblisketSession.weblisketSession = (Obj.magic 0)
    method weblisketSession = weblisketSession
    method set_weblisketSession value' = weblisketSession <- value'
    val mutable storeFrontInterface : StoreFrontInterface.storeFrontInterface = (Obj.magic 0)
    method storeFrontInterface = storeFrontInterface
    method set_storeFrontInterface value' = storeFrontInterface <- value'
    val mutable quoteRequest : QuoteRequest.quoteRequest = (Obj.magic 0)
    method quoteRequest = quoteRequest
    method set_quoteRequest value' = quoteRequest <- value'
    
    

    method isValid () : bool =
        begin
        (quoteRequest#isValid ())
        end [@@warning "-7"]
    

    method validationInfo () : string =
        begin
        (quoteRequest#validationInfo ())
        end [@@warning "-7"]
    

    method insert () : string =
        begin
        (try
            let values : BasicArrayList.basicArrayList ref = ref (((quoteRequest#toVector ()) :> BasicArrayList.basicArrayList)) in ();
            ignore (((QuoteRequestEntityFactory.getInstance ())#getQuoteRequestEntityInstance ())#insert (!values));
            let success : string ref = ref ("New QuoteRequest Successfully added to the QuoteRequest Table") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "add()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to add QuoteRequest") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "add()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method update () : string =
        begin
        (try
            let values : java_hash_map ref = ref (((quoteRequest#toHashMap ()) :> java_hash_map)) in ();
            ignore (((QuoteRequestEntityFactory.getInstance ())#getQuoteRequestEntityInstance ())#update ((quoteRequest#getUserName ()), !values));
            let success : string ref = ref ("New QuoteRequest Successfully updated") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "update()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to update QuoteRequest") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "update()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method delete () : string =
        begin
        commonStrings#nOT_IMPLEMENTED
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        storeFrontInterface <- ((Obj.magic 0) :> StoreFrontInterface.storeFrontInterface);
        ();
        ();
        let request : Obj.t ref = ref ((Obj.repr (Obj.magic (pageContext#getRequest ())))) in ();
        weblisketSession <- (new WeblisketSession.weblisketSession (hashMap, pageContext));
        quoteRequest <- (new QuoteRequest.quoteRequest ((weblisketSession#getUserName ()), (Obj.magic !request)));
        let storeName : string ref = ref ((Obj.magic (hashMap#get ((StoreFrontData.getInstance ())#nAME)))) in ();
        if (!storeName <> (Obj.magic 0)) then begin
            storeFrontInterface <- (StoreFrontFactory.getInstance (!storeName))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "QuoteRequestHelper" (fun arguments -> Obj.repr (new quoteRequestHelper (Obj.obj arguments)))


