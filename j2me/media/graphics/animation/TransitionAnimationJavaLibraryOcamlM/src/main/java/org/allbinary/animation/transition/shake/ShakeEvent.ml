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
(* package org.allbinary.animation.transition.shake *)

open Allbinary_java [@@warning "-33"]

class shakeEvent () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ShakeEvent" (fun arguments -> Obj.repr (new shakeEvent (Obj.obj arguments)))


