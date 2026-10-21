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
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.StdUtil *)

class basicPaymentTypeUtil () =
  object
    val mutable paymentTypeVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method paymentTypeVector = paymentTypeVector
    method set_paymentTypeVector value' = paymentTypeVector <- value'
    
    

    method add : 'any1. 'any1 -> unit = fun (paymentType) ->
        let paymentType = Obj.repr paymentType in
        begin
        ignore (paymentTypeVector#add ((Obj.magic paymentType)))
        end [@@warning "-20"]
    

    method get : 'return. string -> 'return = fun ((paymentTypeString : string)) ->
        try
        begin
        let size : int ref = ref ((paymentTypeVector#size ())) in ();
        for i = 0 to !size - 1 do
            let paymentType : Obj.t ref = ref ((Obj.repr (Obj.magic (paymentTypeVector#get (i))))) in ();
            if ((((Obj.magic !paymentType)#getName ())#compareTo (paymentTypeString)) == 0) then begin
                raise (Java_return (Obj.repr ((Obj.magic !paymentType))))
            end
        done;
        raise (Failure (("Unknown PaymentType: " ^ paymentTypeString)))
        end
        with Java_return value -> Obj.obj value
    

    method isContain : 'any1. 'any1 -> bool = fun (paymentType) ->
        let paymentType = Obj.repr paymentType in
        begin
        (paymentTypeVector#contains ((Obj.magic paymentType)))
        end [@@warning "-20"]
    

    method difference : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (a_PaymentTypeVector) ->
        let a_PaymentTypeVector = Obj.repr a_PaymentTypeVector in
        begin
        let diff : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((paymentTypeVector#size ())) in ();
        for i = 0 to !size - 1 do
            let paymentType : Obj.t ref = ref ((Obj.repr (Obj.magic (paymentTypeVector#get (i))))) in ();
            if (not ((Obj.magic a_PaymentTypeVector)#contains ((Obj.magic !paymentType)))) then begin
                ignore (!diff#add ((Obj.magic !paymentType)))
            end
        done;
        (!diff :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]

    initializer
      begin
        paymentTypeVector <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ()
      end
  end
let () = java_register_constructor "BasicPaymentTypeUtil" (fun arguments -> Obj.repr (new basicPaymentTypeUtil (Obj.obj arguments)))

let instance = (new basicPaymentTypeUtil ())
let get_instance () = instance
let () = java_register_static "BasicPaymentTypeUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "BasicPaymentTypeUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))

let () =
        begin
        ()
        end


