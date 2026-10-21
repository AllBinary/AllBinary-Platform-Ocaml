(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.displayable.canvas *)

open Allbinary_java [@@warning "-33"]

class nullWaitGameRunnable () =
  object
    inherit GameRunnable.gameRunnable ()

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullWaitGameRunnable" (fun arguments -> Obj.repr (new nullWaitGameRunnable (Obj.obj arguments)))

let instance : GameRunnable.gameRunnable = ((new nullWaitGameRunnable ()) :> GameRunnable.gameRunnable)
let get_instance () = instance
let () = java_register_static "NullWaitGameRunnable.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () : GameRunnable.gameRunnable =
        begin
        (instance :> GameRunnable.gameRunnable)
        end
let () = java_register_static "NullWaitGameRunnable.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


