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
(* package org.allbinary.game.health *)

open Allbinary_java [@@warning "-33"]

class nullHealthListener () =
  object
    

    method onHealthChange () : unit =
        begin
        ()
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullHealthListener" (fun arguments -> Obj.repr (new nullHealthListener (Obj.obj arguments)))

let nULL_HEALTH_LISTENER = (new nullHealthListener ())
let get_nULL_HEALTH_LISTENER () = nULL_HEALTH_LISTENER
let () = java_register_static "NullHealthListener.get_nULL_HEALTH_LISTENER" (fun _ -> Obj.repr (get_nULL_HEALTH_LISTENER ()))


