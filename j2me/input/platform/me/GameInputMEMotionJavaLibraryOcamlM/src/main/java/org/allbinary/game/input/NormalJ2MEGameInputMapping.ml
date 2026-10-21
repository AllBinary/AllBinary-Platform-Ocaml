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
(* import org.allbinary.game.input.mapping.InputToGameKeyMapping *)

class normalJ2MEGameInputMapping () =
  object
    inherit J2MEGameInputMapping.j2MEGameInputMapping ()
    

    method getDefault () : InputToGameKeyMapping.inputToGameKeyMapping =
        begin
        (((new NormalJ2MEDefaultGameInputMapping.normalJ2MEDefaultGameInputMapping ())#getInputMapping ()) :> InputToGameKeyMapping.inputToGameKeyMapping)
        end [@@warning "-7"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NormalJ2MEGameInputMapping" (fun arguments -> Obj.repr (new normalJ2MEGameInputMapping (Obj.obj arguments)))


