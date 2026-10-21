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
(* package org.allbinary.business.user.commerce.money.tax.components *)

open Allbinary_java [@@warning "-33"]

let nAME : string = "TAX_NAME"
let get_nAME () = nAME
let () = java_register_static "TaxData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let rATE : string = "TAX_RATE"
let get_rATE () = rATE
let () = java_register_static "TaxData.get_rATE" (fun _ -> Obj.repr (get_rATE ()))
class taxData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "TaxData" (fun arguments -> Obj.repr (new taxData (Obj.obj arguments)))


