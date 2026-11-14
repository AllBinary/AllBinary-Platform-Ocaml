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
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.mapping.InputToGameKeyMapping *)

class motionJ2MEGameInputMapping () =
  object
    inherit J2MEGameInputMapping.j2MEGameInputMapping ()
    

    method getDefault : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (((new MotionJ2MEDefaultGameInputMapping.motionJ2MEDefaultGameInputMapping ())#getInputMapping ())))
        end [@@warning "-7"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "MotionJ2MEGameInputMapping" (fun arguments -> Obj.repr (new motionJ2MEGameInputMapping (Obj.obj arguments)))


