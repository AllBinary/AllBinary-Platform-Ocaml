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
(* package views.admin.payment.gateway *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.servlet.http.HttpServletRequest *)
(* import org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData *)
(* import org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)

class paymentGatewayViewAbstract ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit TransformInfoHttpComposite.transformInfoHttpComposite (transformInfoInterface)
    val mutable paymentGatewayPrimaryKey : PaymentGatewayPrimaryKey.paymentGatewayPrimaryKey = (Obj.magic 0)
    method paymentGatewayPrimaryKey = paymentGatewayPrimaryKey
    method set_paymentGatewayPrimaryKey value' = paymentGatewayPrimaryKey <- value'
    
    

    method getFormData : 'any1. 'any1 -> unit = fun (request) ->
        let request = Obj.repr request in
        begin
        let storeName : string ref = ref (((self#getWeblisketSession ())#getStoreName ())) in ();
        let gatewayName : string ref = ref (((Obj.magic request)#getParameter ((java_string_of (Obj.repr (PaymentGatewayData.get_nAME ())))))) in ();
        (self#setPaymentGatewayPrimaryKey ((new PaymentGatewayPrimaryKey.paymentGatewayPrimaryKey (!storeName, !gatewayName))))
        end [@@warning "-7-20"]
    

    method getPaymentGatewayPrimaryKey () : PaymentGatewayPrimaryKey.paymentGatewayPrimaryKey =
        begin
        (paymentGatewayPrimaryKey :> PaymentGatewayPrimaryKey.paymentGatewayPrimaryKey)
        end [@@warning "-7"]
    

    method setPaymentGatewayPrimaryKey : 'any1. 'any1 -> unit = fun (paymentGatewayPrimaryKey_arg) ->
        let paymentGatewayPrimaryKey_arg = Obj.repr paymentGatewayPrimaryKey_arg in
        begin
        paymentGatewayPrimaryKey <- (Obj.magic paymentGatewayPrimaryKey_arg)
        end [@@warning "-7-20"]

    initializer
      begin
        paymentGatewayPrimaryKey <- ((Obj.magic 0) :> PaymentGatewayPrimaryKey.paymentGatewayPrimaryKey);
        ();
        (* super(...) is the inherit clause *) ();
        (self#getFormData ((Obj.magic ((self#getPageContext ())#getRequest ()))))
      end
  end
let () = java_register_constructor "PaymentGatewayViewAbstract" (fun arguments -> Obj.repr (new paymentGatewayViewAbstract (Obj.obj arguments)))


