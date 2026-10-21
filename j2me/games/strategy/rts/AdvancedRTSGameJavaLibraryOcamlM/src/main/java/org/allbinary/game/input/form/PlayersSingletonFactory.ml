(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.input.form *)

open Allbinary_java [@@warning "-33"]

let total : int ref = ref (0)
let get_total () = !total
let set_total value' = total := value'
let () = java_register_static "PlayersSingletonFactory.get_total" (fun _ -> Obj.repr (get_total ()))
class playersSingletonFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "PlayersSingletonFactory" (fun arguments -> Obj.repr (new playersSingletonFactory (Obj.obj arguments)))


