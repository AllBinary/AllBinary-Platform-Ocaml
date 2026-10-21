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
(* package views.admin.payment.gateways *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData *)
(* import org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData *)
(* import org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType *)
(* import org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import views.business.context.modules.storefront.HttpStoreComponentView *)

class paymentGatewaysView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface), (gatewayVector : BasicArrayList.basicArrayList)) =
  object (self)
    inherit HttpStoreComponentView.httpStoreComponentView (transformInfoInterface) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable paymentGatewayVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method paymentGatewayVector = paymentGatewayVector
    method set_paymentGatewayVector value' = paymentGatewayVector <- value'
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        (try
            let storeName : string ref = ref (((self#getTransformInfoInterface ())#getStoreName ())) in ();
            let paymentGatewaysNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((PaymentGatewaysData.get_nAME ()))))) in ();
            let size : int ref = ref ((paymentGatewayVector#size ())) in ();
            for index = 0 to !size - 1 do
                let paymentType : BasicPaymentType.basicPaymentType ref = ref (((Obj.magic (paymentGatewayVector#get (index))) :> BasicPaymentType.basicPaymentType)) in ();
                let hashMap : java_hash_map ref = ref (((!paymentType#toHashMap ()) :> java_hash_map)) in ();
                ignore (!hashMap#put ((EntryData.getInstance ())#dEFAULT, ((((PaymentTypeUtil.getInstance ())#getDefault (!storeName))#getBasicPaymentType ())#getName ())));
                let paymentGatewayNode : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNodeWithValueNodes ((Obj.magic document), (java_string_of (Obj.repr (PaymentGatewayData.get_nAME ()))), !hashMap)))) in ();
                ignore ((Obj.magic !paymentGatewaysNode)#appendChild ((Obj.magic !paymentGatewayNode)))
            done;
            (Obj.magic ((Obj.magic !paymentGatewaysNode)))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#xSLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, "toXmlNode", e))
            end;
            raise e
        end)
        end [@@warning "-7-20"]
    

    method addDomNodeInterfaces () : unit =
        begin
        ignore (self#addDomNodeInterface ((Obj.magic self)))
        end [@@warning "-7"]
    

    method view () : string =
        begin
        (try
            (self#addDomNodeInterfaces ());
            (super#view ())
        with e -> begin
            let error : string ref = ref ("Failed to view payment gateways") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "view()", e))
            end;
            !error
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        (* super(...) is the inherit clause *) ();
        paymentGatewayVector <- gatewayVector
      end
  end [@@warning "-20"]
let () = java_register_constructor "PaymentGatewaysView" (fun arguments -> Obj.repr (new paymentGatewaysView (Obj.obj arguments)))


