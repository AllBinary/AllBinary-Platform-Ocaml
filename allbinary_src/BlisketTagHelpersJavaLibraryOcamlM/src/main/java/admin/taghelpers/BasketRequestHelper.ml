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
(* import org.allbinary.business.context.modules.storefront.StoreFront *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.user.commerce.inventory.basket.BasketData *)
(* import org.allbinary.business.user.commerce.inventory.basket.BasketInterface *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemData *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSession *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class basketRequestHelper ((propertiesHashMap_arg : java_hash_map), pageContext_arg) =
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
    val mutable storeFrontInterface : StoreFrontInterface.storeFrontInterface = (Obj.magic 0)
    method storeFrontInterface = storeFrontInterface
    method set_storeFrontInterface value' = storeFrontInterface <- value'
    val mutable propertiesHashMap : java_hash_map = (Obj.magic 0)
    method propertiesHashMap = propertiesHashMap
    method set_propertiesHashMap value' = propertiesHashMap <- value'
    val mutable pageContext : Obj.t = Obj.repr 0
    method pageContext : 'r. 'r = Obj.magic pageContext
    method set_pageContext : 'v. 'v -> unit = fun value' -> pageContext <- Obj.repr value'
    val mutable request : Obj.t = Obj.repr 0
    method request : 'r. 'r = Obj.magic request
    method set_request : 'v. 'v -> unit = fun value' -> request <- Obj.repr value'
    val mutable id : string = ""
    method id = id
    method set_id value' = id <- value'
    val mutable num : string = ""
    method num = num
    method set_num value' = num <- value'
    val mutable mAX : int = 0
    method mAX = mAX
    method set_mAX value' = mAX <- value'
    
    

    method getFormData () : unit =
        begin
        id <- ((Obj.magic request)#getParameter (basicItemData#iD));
        num <- ((Obj.magic request)#getParameter ((BasketData.get_iTEMTOTALINBASKET ())))
        end [@@warning "-7"]
    

    method addItemToBasket () : bool =
        try
        begin
        (try
            if ((id <> (Obj.magic 0)) && (num <> (Obj.magic 0))) then begin
                let basket : BasketInterface.basketInterface ref = ref ((((weblisketSession#getOrder ())#getBasket ()) :> BasketInterface.basketInterface)) in ();
                if ((((InventoryEntityFactory.getInstance ())#getInventoryEntityInstance ())#getItem (id)) == (Obj.magic 0)) then begin
                    raise (Java_return (Obj.repr (false)))
                end;
                ignore (!basket#addItem (id, num))
            end;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF ("Successfully added item to Basket", self, "addItemToBasket()"))
            end;
            true
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "addItemToBasket()", e))
            end;
            false
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method removeItemFromBasket () : bool =
        begin
        (try
            if (id <> (Obj.magic 0)) then begin
                let basket : BasketInterface.basketInterface ref = ref ((((weblisketSession#getOrder ())#getBasket ()) :> BasketInterface.basketInterface)) in ();
                ignore (!basket#removeItem (id))
            end;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF ("Successfully removed item from Basket", self, "removeItemFromBasket()"))
            end;
            true
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "removeItemFromBasket()", e))
            end;
            false
        end)
        end [@@warning "-7"]
    

    method adjustBasket () : bool =
        begin
        (try
            let basket : BasketInterface.basketInterface ref = ref ((((weblisketSession#getOrder ())#getBasket ()) :> BasketInterface.basketInterface)) in ();
            if ((id <> (Obj.magic 0)) && (num <> (Obj.magic 0))) then begin
                ignore (!basket#adjustItem (id, num))
            end;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF ("Successfull Adjusted Basket", self, "adjustBasket()"))
            end;
            true
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "adjustBasket()", e))
            end;
            false
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        basicItemData <- ((BasicItemData.getInstance ()) :> BasicItemData.basicItemData);
        ();
        storeFrontInterface <- ((Obj.magic 0) :> StoreFrontInterface.storeFrontInterface);
        ();
        ();
        ();
        id <- "";
        num <- "";
        mAX <- 200;
        ();
        propertiesHashMap <- propertiesHashMap_arg;
        pageContext <- Obj.repr (pageContext_arg);
        request <- Obj.repr ((Obj.magic (pageContext_arg#getRequest ())));
        let storeName : string ref = ref ((Obj.magic (propertiesHashMap_arg#get ((StoreFrontData.getInstance ())#nAME)))) in ();
        if (!storeName <> (Obj.magic 0)) then begin
            storeFrontInterface <- (StoreFrontFactory.getInstance (!storeName))
        end else begin
            storeFrontInterface <- (new StoreFront.storeFront ())
        end;
        weblisketSession <- (new WeblisketSession.weblisketSession (propertiesHashMap_arg, pageContext_arg));
        (self#getFormData ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasketRequestHelper" (fun arguments -> Obj.repr (new basketRequestHelper (Obj.obj arguments)))


