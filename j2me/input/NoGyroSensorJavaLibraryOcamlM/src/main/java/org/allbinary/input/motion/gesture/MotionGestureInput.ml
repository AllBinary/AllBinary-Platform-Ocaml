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
(* package org.allbinary.input.motion.gesture *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.input.Input *)
(* import org.allbinary.game.input.InputFactory *)

class motionGestureInput ((id : int), (name : string)) =
  object (self)
    inherit Input.input (id, name)
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        let inputFactory : InputFactory.inputFactory ref = ref (((InputFactory.getInstance ()) :> InputFactory.inputFactory)) in ();
        ignore (!inputFactory#add ((self#getId ()), self))
      end
  end
let () = java_register_constructor "MotionGestureInput" (fun arguments -> Obj.repr (new motionGestureInput (Obj.obj arguments)))


