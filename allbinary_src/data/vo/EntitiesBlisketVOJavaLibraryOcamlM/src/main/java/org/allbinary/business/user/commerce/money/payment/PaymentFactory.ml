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
(* package org.allbinary.business.user.commerce.money.payment *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.servlet.ServletRequest *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)


let getInstance : 'any1. 'any1 -> PaymentInterface.paymentInterface = fun (request) ->
        let request = Obj.repr request in
        begin
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        (try
            ((Obj.magic (new Payment.payment ((Obj.magic request)))) :> PaymentInterface.paymentInterface)
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#fACTORYERROR)) then begin
                ignore ((Obj.magic !logUtil)#put (!commonStrings#eXCEPTION, "PaymentFactory", !commonStrings#gET_INSTANCE, e))
            end;
            ((Obj.magic 0) :> PaymentInterface.paymentInterface)
        end)
        end [@@warning "-20"]

let () = java_register_static "PaymentFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class paymentFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "PaymentFactory" (fun arguments -> Obj.repr (new paymentFactory (Obj.obj arguments)))


