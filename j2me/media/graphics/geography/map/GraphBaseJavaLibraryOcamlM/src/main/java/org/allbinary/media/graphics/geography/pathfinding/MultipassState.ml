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
(* package org.allbinary.media.graphics.geography.pathfinding *)

open Allbinary_java [@@warning "-33"]

class multipassState () =
  object
    val mutable step : int = 0
    method step = step
    method set_step value' = step <- value'
    val mutable iteration : int = 0
    method iteration = iteration
    method set_iteration value' = iteration <- value'
    val mutable iteration2 : int = 0
    method iteration2 = iteration2
    method set_iteration2 value' = iteration2 <- value'

    initializer
      begin
        step <- 0;
        iteration <- 0;
        iteration2 <- 0;
        ()
      end
  end
let () = java_register_constructor "MultipassState" (fun arguments -> Obj.repr (new multipassState (Obj.obj arguments)))


