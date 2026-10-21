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
(* import org.allbinary.business.user.commerce.inventory.order.OrderData *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderHistoryData *)
(* import org.allbinary.business.user.commerce.shipping.ShippingMethodData *)
(* import org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class orderItemsRequestHelper ((_hashMap : java_hash_map), pageContext) =
  object (self)
    inherit TagHelper.tagHelper ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable request : Obj.t = Obj.repr 0
    method request : 'r. 'r = Obj.magic request
    method set_request : 'v. 'v -> unit = fun value' -> request <- Obj.repr value'
    val mutable id : string = ""
    method id = id
    method set_id value' = id <- value'
    val mutable groupId : string = ""
    method groupId = groupId
    method set_groupId value' = groupId <- value'
    val mutable status : string = ""
    method status = status
    method set_status value' = status <- value'
    
    

    method getFormData () : unit =
        begin
        id <- ((Obj.magic request)#getParameter ((OrderData.get_iD ())));
        groupId <- ((Obj.magic request)#getParameter ((ShippingMethodData.get_gROUP ())));
        status <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_sTATUS ())))
        end [@@warning "-7"]
    

    method setOrderStatus ((newStatus : string)) : string =
        let newStatus = ref newStatus in
        begin
        (try
            if (!newStatus = (Obj.magic 0)) then begin
                newStatus := status
            end;
            let success : string ref = ref (("Status successfully set to: " ^ !newStatus)) in ();
            ignore ((OrderItemsEntityFactory.getInstance ())#setStatus (id, groupId, !newStatus));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "setOrderStatus(newStatus)"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to view order table") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "setOrderStatus(newStatus)", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    (* Java overload setOrderStatus() is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        id <- "";
        groupId <- "";
        status <- "";
        ();
        request <- Obj.repr ((Obj.magic (pageContext#getRequest ())));
        (self#getFormData ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "OrderItemsRequestHelper" (fun arguments -> Obj.repr (new orderItemsRequestHelper (Obj.obj arguments)))


