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
(* import org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface *)
(* import org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface *)
(* import org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType *)
(* import org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import views.business.context.modules.storefront.HttpStoreComponentView *)

class paymentGatewayComponent ((transformInfoInterface : TransformInfoInterface.transformInfoInterface), (paymentGatewayInterface_arg : PaymentGatewayInterface.paymentGatewayInterface)) =
  object (self)
    inherit HttpStoreComponentView.httpStoreComponentView (transformInfoInterface) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable paymentGatewayInterface : PaymentGatewayInterface.paymentGatewayInterface = (Obj.magic 0)
    method paymentGatewayInterface = paymentGatewayInterface
    method set_paymentGatewayInterface value' = paymentGatewayInterface <- value'
    
    

    method addDomNodeInterfaces () : unit =
        begin
        let paymentType : BasicPaymentType.basicPaymentType ref = ref ((((BasicPaymentTypeUtil.getInstance ())#get ((paymentGatewayInterface#getName ()))) :> BasicPaymentType.basicPaymentType)) in ();
        let paymentGatewayDomNodeFactoryInterface : PaymentGatewayDomNodeFactoryInterface.paymentGatewayDomNodeFactoryInterface ref = ref (((!paymentType#getPaymentGatewayDomNodeFactoryInterface ()) :> PaymentGatewayDomNodeFactoryInterface.paymentGatewayDomNodeFactoryInterface)) in ();
        let domNodeInterface : DomNodeInterface.domNodeInterface ref = ref (((Obj.magic (!paymentGatewayDomNodeFactoryInterface#getInstance (paymentGatewayInterface))) :> DomNodeInterface.domNodeInterface)) in ();
        ignore (self#addDomNodeInterface (!domNodeInterface))
        end [@@warning "-7"]
    

    method view () : string =
        begin
        (try
            (self#addDomNodeInterfaces ());
            (super#view ())
        with e -> begin
            let error : string ref = ref ("Failed to view payment gateway") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "view()", e))
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
        paymentGatewayInterface <- paymentGatewayInterface_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "PaymentGatewayComponent" (fun arguments -> Obj.repr (new paymentGatewayComponent (Obj.obj arguments)))


