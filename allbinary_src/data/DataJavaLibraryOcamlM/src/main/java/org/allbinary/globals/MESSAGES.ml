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
(* package org.allbinary.globals *)

open Allbinary_java [@@warning "-33"]

let cONTACTADMIN : string ref = ref ("Please contact the administrator.")
let get_cONTACTADMIN () = !cONTACTADMIN
let set_cONTACTADMIN value' = cONTACTADMIN := value'
let () = java_register_static "MESSAGES.get_cONTACTADMIN" (fun _ -> Obj.repr (get_cONTACTADMIN ()))
class mESSAGES () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "MESSAGES" (fun arguments -> Obj.repr (new mESSAGES (Obj.obj arguments)))


