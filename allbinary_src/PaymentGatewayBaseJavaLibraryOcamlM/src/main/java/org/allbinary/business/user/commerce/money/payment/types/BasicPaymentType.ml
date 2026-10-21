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
(* import org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface *)
(* import org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.string.regex.replace.Replace *)
(* import org.allbinary.string.CommonSeps *)

class basicPaymentType ((paymentMethod : string)) =
  object (self)
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable value : string = ""
    method value = value
    method set_value value' = value <- value'
    val mutable paymentGatewayInterfaceFactoryInterface : PaymentGatewayInterfaceFactoryInterface.paymentGatewayInterfaceFactoryInterface = (Obj.magic 0)
    method paymentGatewayInterfaceFactoryInterface = paymentGatewayInterfaceFactoryInterface
    method set_paymentGatewayInterfaceFactoryInterface value' = paymentGatewayInterfaceFactoryInterface <- value'
    val mutable paymentGatewayDomNodeFactoryInterface : PaymentGatewayDomNodeFactoryInterface.paymentGatewayDomNodeFactoryInterface = (Obj.magic 0)
    method paymentGatewayDomNodeFactoryInterface = paymentGatewayDomNodeFactoryInterface
    method set_paymentGatewayDomNodeFactoryInterface value' = paymentGatewayDomNodeFactoryInterface <- value'
    
    
    

    method init ((paymentMethod : string)) : unit =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        let uNDERSCORE : string ref = ref ("_") in ();
        ignore (!hashMap#put ((CommonSeps.getInstance ())#sPACE, !uNDERSCORE));
        ignore (!hashMap#put ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#eXTENSION_SEP, !uNDERSCORE));
        ignore (!hashMap#put ("-", !uNDERSCORE));
        let replace : Replace.replace ref = ref (((new Replace.replace (!hashMap)) :> Replace.replace)) in ();
        name <- (!replace#all (paymentMethod));
        value <- paymentMethod;
        ignore ((Obj.magic (java_call_static "BasicPaymentTypeUtil.getInstance" (Obj.repr ())))#add (self))
        end
    

    method getName () : string =
        begin
        name
        end
    

    method getValue () : string =
        begin
        value
        end
    

    method getPaymentGatewayInterfaceFactoryInterface () : PaymentGatewayInterfaceFactoryInterface.paymentGatewayInterfaceFactoryInterface =
        begin
        if (paymentGatewayInterfaceFactoryInterface == (Obj.magic 0)) then begin
            raise (Failure ("PaymentGatewayInterfaceFactoryInterface is Null"))
        end;
        (paymentGatewayInterfaceFactoryInterface :> PaymentGatewayInterfaceFactoryInterface.paymentGatewayInterfaceFactoryInterface)
        end
    

    method getPaymentGatewayDomNodeFactoryInterface () : PaymentGatewayDomNodeFactoryInterface.paymentGatewayDomNodeFactoryInterface =
        begin
        if (paymentGatewayDomNodeFactoryInterface == (Obj.magic 0)) then begin
            raise (Failure ("PaymentGatewayDomNodeFactoryInterface is Null"))
        end;
        (paymentGatewayDomNodeFactoryInterface :> PaymentGatewayDomNodeFactoryInterface.paymentGatewayDomNodeFactoryInterface)
        end
    

    method getKey () : Obj.t =
        begin
        (Obj.repr ((self#getName ())))
        end
    

    method toVector () : BasicArrayList.basicArrayList =
        begin
        let vector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!vector#add (name));
        ignore (!vector#add (value));
        (!vector :> BasicArrayList.basicArrayList)
        end
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put ((java_string_of (Obj.repr (PaymentGatewayData.get_nAME ()))), name));
        ignore (!hashMap#put ((java_string_of (Obj.repr (PaymentGatewayData.get_vALUE ()))), value));
        (!hashMap :> java_hash_map)
        end
    

    method toString () : string =
        begin
        name
        end

    initializer
      begin
        name <- "";
        value <- "";
        ();
        ();
        ();
        (self#init (paymentMethod))
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "BasicPaymentType" (fun arguments -> Obj.repr (new basicPaymentType (Obj.obj arguments)))


