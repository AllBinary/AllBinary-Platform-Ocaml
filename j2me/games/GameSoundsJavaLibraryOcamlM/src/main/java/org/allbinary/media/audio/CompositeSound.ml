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
(* package org.allbinary.media.audio *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class compositeSound ((resource : string)) =
  object (self)
    inherit Sound.sound (resource)
    
    

    method init () : unit =
        begin
        ignore (self#setPlayerP ((Obj.obj (java_new "PlayerComposite" (Obj.repr ((Obj.magic (java_call_static "AllBinaryMediaManager.createPlayer" (Obj.repr ((self#getResource ()))))), 570))))))
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "CompositeSound" (fun arguments -> Obj.repr (new compositeSound (Obj.obj arguments)))


