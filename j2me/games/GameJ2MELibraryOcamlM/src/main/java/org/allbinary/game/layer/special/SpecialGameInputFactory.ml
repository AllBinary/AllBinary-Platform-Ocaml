(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer.special *)

open Allbinary_java [@@warning "-33"]

let nO_SPECIAL_GAME_INPUT : SpecialGameInput.specialGameInput = ((new SpecialGameInput.specialGameInput ()) :> SpecialGameInput.specialGameInput)
let get_nO_SPECIAL_GAME_INPUT () = nO_SPECIAL_GAME_INPUT
let () = java_register_static "SpecialGameInputFactory.get_nO_SPECIAL_GAME_INPUT" (fun _ -> Obj.repr (get_nO_SPECIAL_GAME_INPUT ()))
class specialGameInputFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "SpecialGameInputFactory" (fun arguments -> Obj.repr (new specialGameInputFactory (Obj.obj arguments)))


