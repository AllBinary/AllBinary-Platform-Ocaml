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
(* package org.allbinary.data.tables.user.commerce.money.payment *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class paymentEntityFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method getPaymentEntityInstance () : PaymentEntity.paymentEntity =
        begin
        (try
            ((new PaymentEntity.paymentEntity ()) :> PaymentEntity.paymentEntity)
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eNTITYFACTORYERROR)) then begin
                ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#gET_INSTANCE, e))
            end;
            ((Obj.magic 0) :> PaymentEntity.paymentEntity)
        end)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "PaymentEntityFactory" (fun arguments -> Obj.repr (new paymentEntityFactory (Obj.obj arguments)))

let instance = (new paymentEntityFactory ())
let get_instance () = instance
let () = java_register_static "PaymentEntityFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PaymentEntityFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


