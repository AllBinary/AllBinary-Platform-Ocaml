(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.util *)

open Allbinary_java [@@warning "-33"]


let toString ((ch : char)) : string =
        begin
        (java_string_of (Obj.repr (ch)))
        end

let () = java_register_static "ABCharacter.toString" (fun arguments -> Obj.repr (toString (Obj.obj arguments)))
class aBCharacter () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ABCharacter" (fun arguments -> Obj.repr (new aBCharacter (Obj.obj arguments)))


