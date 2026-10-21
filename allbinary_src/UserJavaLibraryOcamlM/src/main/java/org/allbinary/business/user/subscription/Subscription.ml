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
(* package org.allbinary.business.user.subscription *)

open Allbinary_java [@@warning "-33"]

class subscription () =
  object
    
    

    method isSubscribed () : bool =
        begin
        true
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "Subscription" (fun arguments -> Obj.repr (new subscription (Obj.obj arguments)))


