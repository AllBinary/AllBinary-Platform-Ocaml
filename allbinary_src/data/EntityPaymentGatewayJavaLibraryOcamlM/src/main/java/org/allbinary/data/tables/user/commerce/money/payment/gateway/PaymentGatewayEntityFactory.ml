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
(* package org.allbinary.data.tables.user.commerce.money.payment.gateway *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)


let getInstance () : PaymentGatewayEntity.paymentGatewayEntity =
        begin
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        (try
            ((new PaymentGatewayEntity.paymentGatewayEntity ()) :> PaymentGatewayEntity.paymentGatewayEntity)
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eNTITYFACTORYERROR)) then begin
                ignore ((Obj.magic !logUtil)#put (!commonStrings#eXCEPTION, "PaymentGatewayEntityFactory", !commonStrings#gET_INSTANCE, e))
            end;
            raise e
        end)
        end

let () = java_register_static "PaymentGatewayEntityFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class paymentGatewayEntityFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "PaymentGatewayEntityFactory" (fun arguments -> Obj.repr (new paymentGatewayEntityFactory (Obj.obj arguments)))


