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
(* import javax.servlet.http.HttpServletRequest *)
(* import org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType *)
(* import org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.http.request.RequestParams *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class paymentGatewayInterfaceFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method getInstance : 'any1. 'any1 -> PaymentGatewayInterface.paymentGatewayInterface = fun (httpServletRequest) ->
        let httpServletRequest = Obj.repr httpServletRequest in
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#pAYMENT)) then begin
                ignore ((Obj.magic logUtil)#putF ("Getting", self, !commonStrings#gET_INSTANCE))
            end;
            ((self#getInstance (((new RequestParams.requestParams ((Obj.magic httpServletRequest)))#toHashMap ()))) :> PaymentGatewayInterface.paymentGatewayInterface)
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#pAYMENTERROR)) then begin
                ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, "getInstance(HttpServletRequest)", e))
            end;
            raise e
        end)
        end [@@warning "-20"]
    

    (* Java overload getInstance(BasicPaymentType) is not converted: OCaml has one method per name *)
    

    (* Java overload getInstance(HashMap) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "PaymentGatewayInterfaceFactory" (fun arguments -> Obj.repr (new paymentGatewayInterfaceFactory (Obj.obj arguments)))


