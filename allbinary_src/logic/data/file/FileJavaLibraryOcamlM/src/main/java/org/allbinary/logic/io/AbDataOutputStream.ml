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
(* package org.allbinary.logic.io *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.DataOutputStream *)
(* import java.io.OutputStream *)

class abDataOutputStream (out) =
  object
    inherit java_data_output_stream (Obj.magic (out))
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "AbDataOutputStream" (fun arguments -> Obj.repr (new abDataOutputStream (Obj.obj arguments)))


