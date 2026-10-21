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
(* package org.allbinary.game.configuration.persistance *)

open Allbinary_java [@@warning "-33"]

class gameDifficultyFactory () =
  object
    val mutable level : int = 0
    method level = level
    method set_level value' = level <- value'
    

    method setLevel ((level_arg : int)) : unit =
        begin
        level <- level_arg
        end
    

    method getLevel () : int =
        begin
        level
        end

    initializer
      begin
        level <- 0;
        ()
      end
  end
let () = java_register_constructor "GameDifficultyFactory" (fun arguments -> Obj.repr (new gameDifficultyFactory (Obj.obj arguments)))

let instance = (new gameDifficultyFactory ())
let get_instance () = instance
let () = java_register_static "GameDifficultyFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GameDifficultyFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


