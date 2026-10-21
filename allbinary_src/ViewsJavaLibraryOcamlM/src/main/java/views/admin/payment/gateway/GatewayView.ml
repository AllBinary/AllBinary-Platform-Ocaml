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
(* import org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface *)
(* import org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil *)
(* import org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)

class gatewayView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit PaymentGatewayViewAbstract.paymentGatewayViewAbstract (transformInfoInterface) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method getFormData : 'any1. 'any1 -> unit = fun (request) ->
        let request = Obj.repr request in
        begin
        ignore (super#getFormData ((Obj.magic request)));
        if ((StringValidationUtil.getInstance ())#isEmpty (((self#getPaymentGatewayPrimaryKey ())#getName ()))) then begin
            ignore ((self#getPaymentGatewayPrimaryKey ())#setName (((self#getWeblisketSession ())#getPaymentMethod ())))
        end
        end [@@warning "-7-20"]
    

    method view () : string =
        begin
        (try
            let paymentGatewayInterface : PaymentGatewayInterface.paymentGatewayInterface ref = ref ((((PaymentGatewayEntityFactory.getInstance ())#getPaymentGatewayInterface (((self#getPaymentGatewayPrimaryKey ())#getStoreName ()), ((BasicPaymentTypeUtil.getInstance ())#get (((self#getPaymentGatewayPrimaryKey ())#getName ()))))) :> PaymentGatewayInterface.paymentGatewayInterface)) in ();
            ((new PaymentGatewayComponent.paymentGatewayComponent ((self#getTransformInfoInterface ()), !paymentGatewayInterface))#view ())
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "edit()", e))
            end;
            raise e
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "GatewayView" (fun arguments -> Obj.repr (new gatewayView (Obj.obj arguments)))


