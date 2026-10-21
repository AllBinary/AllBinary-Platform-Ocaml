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
(* package org.allbinary.business.advertisement.affiliate.sales *)

open Allbinary_java [@@warning "-33"]

class affiliateSales () =
  object
    
    

    method isValid () : bool =
        begin
        true
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "AffiliateSales" (fun arguments -> Obj.repr (new affiliateSales (Obj.obj arguments)))


