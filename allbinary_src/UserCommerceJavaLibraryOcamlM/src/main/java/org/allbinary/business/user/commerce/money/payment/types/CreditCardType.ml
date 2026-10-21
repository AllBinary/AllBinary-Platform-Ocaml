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

let mAXLEN : int = 19
let get_mAXLEN () = mAXLEN
let () = java_register_static "CreditCardType.get_mAXLEN" (fun _ -> Obj.repr (get_mAXLEN ()))
class creditCardType ((cardType : string)) =
  object
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    
    

    method toString () : string =
        begin
        name
        end

    initializer
      begin
        ();
        ();
        name <- cardType
      end
  end
let () = java_register_constructor "CreditCardType" (fun arguments -> Obj.repr (new creditCardType (Obj.obj arguments)))


