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
(* package org.allbinary.business.user.commerce.money.payment.types *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData *)
(* import org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface *)
(* import org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface *)
(* import org.allbinary.logic.StdUtil *)

class paymentType ((basicPaymentType_arg : BasicPaymentType.basicPaymentType)) =
  object (self)
    val mutable basicPaymentType : BasicPaymentType.basicPaymentType = (Obj.magic 0)
    method basicPaymentType = basicPaymentType
    method set_basicPaymentType value' = basicPaymentType <- value'
    val mutable paymentTransactionInterfaceFactoryInterface : PaymentTransactionInterfaceFactoryInterface.paymentTransactionInterfaceFactoryInterface = (Obj.magic 0)
    method paymentTransactionInterfaceFactoryInterface = paymentTransactionInterfaceFactoryInterface
    method set_paymentTransactionInterfaceFactoryInterface value' = paymentTransactionInterfaceFactoryInterface <- value'
    val mutable paymentProcessorInterfaceFactoryInterface : PaymentProcessorInterfaceFactoryInterface.paymentProcessorInterfaceFactoryInterface = (Obj.magic 0)
    method paymentProcessorInterfaceFactoryInterface = paymentProcessorInterfaceFactoryInterface
    method set_paymentProcessorInterfaceFactoryInterface value' = paymentProcessorInterfaceFactoryInterface <- value'
    
    
    

    method getPaymentTransactionInterfaceFactoryInterface () : PaymentTransactionInterfaceFactoryInterface.paymentTransactionInterfaceFactoryInterface =
        begin
        if (paymentTransactionInterfaceFactoryInterface == (Obj.magic 0)) then begin
            raise (Failure ("PaymentTransactionInterfaceFactoryInterface is Null"))
        end;
        (paymentTransactionInterfaceFactoryInterface :> PaymentTransactionInterfaceFactoryInterface.paymentTransactionInterfaceFactoryInterface)
        end
    

    method getPaymentProcessorInterfaceFactoryInterface () : PaymentProcessorInterfaceFactoryInterface.paymentProcessorInterfaceFactoryInterface =
        begin
        if (paymentProcessorInterfaceFactoryInterface == (Obj.magic 0)) then begin
            raise (Failure ("PaymentProcessorInterfaceFactoryInterface is Null"))
        end;
        (paymentProcessorInterfaceFactoryInterface :> PaymentProcessorInterfaceFactoryInterface.paymentProcessorInterfaceFactoryInterface)
        end
    

    method toVector () : BasicArrayList.basicArrayList =
        begin
        let vector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!vector#addAllList (((self#getBasicPaymentType ())#toVector ())));
        if (paymentTransactionInterfaceFactoryInterface != (Obj.magic 0)) then begin
            ignore (!vector#add ((java_get_class (Obj.repr paymentTransactionInterfaceFactoryInterface))))
        end;
        if (paymentProcessorInterfaceFactoryInterface != (Obj.magic 0)) then begin
            ignore (!vector#add ((java_get_class (Obj.repr paymentProcessorInterfaceFactoryInterface))))
        end;
        (!vector :> BasicArrayList.basicArrayList)
        end
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#putAll (((self#getBasicPaymentType ())#toHashMap ())));
        if (paymentTransactionInterfaceFactoryInterface != (Obj.magic 0)) then begin
            ignore (!hashMap#put ((java_string_of (Obj.repr (PaymentGatewayData.get_pAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE ()))), (java_get_class (Obj.repr paymentTransactionInterfaceFactoryInterface))))
        end;
        if (paymentProcessorInterfaceFactoryInterface != (Obj.magic 0)) then begin
            ignore (!hashMap#put ((java_string_of (Obj.repr (PaymentGatewayData.get_pAYMENTPROCESSORINTERFACEFACTORYINTERFACE ()))), (java_get_class (Obj.repr paymentProcessorInterfaceFactoryInterface))))
        end;
        (!hashMap :> java_hash_map)
        end
    

    method getBasicPaymentType () : BasicPaymentType.basicPaymentType =
        begin
        (basicPaymentType :> BasicPaymentType.basicPaymentType)
        end

    initializer
      begin
        ();
        ();
        ();
        ();
        basicPaymentType <- basicPaymentType_arg;
        paymentTransactionInterfaceFactoryInterface <- (Obj.magic 0);
        paymentProcessorInterfaceFactoryInterface <- (Obj.magic 0);
        ignore ((PaymentTypeUtil.getInstance ())#add (self))
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "PaymentType" (fun arguments -> Obj.repr (new paymentType (Obj.obj arguments)))


