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

class tenderTypeFactory () =
  object
    val mutable cREDITCARD : TenderType.tenderType = (Obj.magic 0)
    method cREDITCARD = cREDITCARD
    method set_cREDITCARD value' = cREDITCARD <- value'
    val mutable cHECK : TenderType.tenderType = (Obj.magic 0)
    method cHECK = cHECK
    method set_cHECK value' = cHECK <- value'
    val mutable aCH : TenderType.tenderType = (Obj.magic 0)
    method aCH = aCH
    method set_aCH value' = aCH <- value'

    initializer
      begin
        cREDITCARD <- ((new TenderType.tenderType ("Credit Card")) :> TenderType.tenderType);
        cHECK <- ((new TenderType.tenderType ("Check")) :> TenderType.tenderType);
        aCH <- ((new TenderType.tenderType ("Ach")) :> TenderType.tenderType);
        ()
      end
  end
let () = java_register_constructor "TenderTypeFactory" (fun arguments -> Obj.repr (new tenderTypeFactory (Obj.obj arguments)))

let instance = (new tenderTypeFactory ())
let get_instance () = instance
let () = java_register_static "TenderTypeFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TenderTypeFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


