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
(* package org.allbinary.business.user.commerce.money.payment.gateway *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class paymentGatewayView ((paymentGatewayInterface_arg : PaymentGatewayInterface.paymentGatewayInterface)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable paymentGatewayInterface : PaymentGatewayInterface.paymentGatewayInterface = (Obj.magic 0)
    method paymentGatewayInterface = paymentGatewayInterface
    method set_paymentGatewayInterface value' = paymentGatewayInterface <- value'
    
    

    method getPaymentGatewayInterface () : PaymentGatewayInterface.paymentGatewayInterface =
        begin
        (paymentGatewayInterface :> PaymentGatewayInterface.paymentGatewayInterface)
        end
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        (!hashMap :> java_hash_map)
        end
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "toXmlNode"))
            end;
            let hashMap : java_hash_map ref = ref ((((new PaymentGatewayMapping.paymentGatewayMapping (paymentGatewayInterface))#toHashMap ()) :> java_hash_map)) in ();
            ignore (!hashMap#putAll ((self#toHashMap ())));
            let paymentGatewayNode : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNodeWithValueNodes ((Obj.magic document), (java_string_of (Obj.repr (PaymentGatewayData.get_nAME ()))), !hashMap)))) in ();
            (Obj.magic ((Obj.magic !paymentGatewayNode)))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#xSLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "toXmlNode", e))
            end;
            raise e
        end)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        paymentGatewayInterface <- paymentGatewayInterface_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "PaymentGatewayView" (fun arguments -> Obj.repr (new paymentGatewayView (Obj.obj arguments)))


