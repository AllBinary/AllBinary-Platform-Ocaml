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
(* package org.allbinary.input.event *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)

class virtualKeyboardEvent ((anyType : Obj.t)) =
  object
    inherit AllBinaryEventObject.allBinaryEventObject (anyType)
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "VirtualKeyboardEvent" (fun arguments -> Obj.repr (new virtualKeyboardEvent (Obj.obj arguments)))


