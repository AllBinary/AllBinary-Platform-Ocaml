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
(* package org.allbinary.business.user.commerce.shipping *)

open Allbinary_java [@@warning "-33"]

let dESCRIPTION : string = "SHIPPINGMETHOD_DESCRIPTION"
let get_dESCRIPTION () = dESCRIPTION
let () = java_register_static "ShippingMethodData.get_dESCRIPTION" (fun _ -> Obj.repr (get_dESCRIPTION ()))
let dEFAULT : string = "SHIPPINGMETHOD_DEFAULT"
let get_dEFAULT () = dEFAULT
let () = java_register_static "ShippingMethodData.get_dEFAULT" (fun _ -> Obj.repr (get_dEFAULT ()))
let nAME : string = "SHIPPINGMETHOD_NAME"
let get_nAME () = nAME
let () = java_register_static "ShippingMethodData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let gROUP : string = "SHIPPINGMETHOD_GROUP"
let get_gROUP () = gROUP
let () = java_register_static "ShippingMethodData.get_gROUP" (fun _ -> Obj.repr (get_gROUP ()))
let cOST : string = "SHIPPINGMETHOD_COST"
let get_cOST () = cOST
let () = java_register_static "ShippingMethodData.get_cOST" (fun _ -> Obj.repr (get_cOST ()))
class shippingMethodData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ShippingMethodData" (fun arguments -> Obj.repr (new shippingMethodData (Obj.obj arguments)))


