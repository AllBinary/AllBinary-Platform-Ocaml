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
(* package org.allbinary.animation *)

open Allbinary_java [@@warning "-33"]

class animationBehaviorFactory () =
  object
    

    method getOrCreateInstance () : AnimationBehavior.animationBehavior =
        begin
        ((AnimationBehavior.getInstance ()) :> AnimationBehavior.animationBehavior)
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "AnimationBehaviorFactory" (fun arguments -> Obj.repr (new animationBehaviorFactory (Obj.obj arguments)))

let instance = (new animationBehaviorFactory ())
let get_instance () = instance
let () = java_register_static "AnimationBehaviorFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AnimationBehaviorFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


