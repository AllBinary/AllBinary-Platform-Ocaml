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
(* package org.allbinary.game.displayable.canvas *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)

class gameRunnable () =
  object
    val mutable wAIT : int = 0
    method wAIT = wAIT
    method set_wAIT value' = wAIT <- value'
    val mutable fAST : int = 0
    method fAST = fAST
    method set_fAST value' = fAST <- value'
    val mutable waitInMillis : int = 0
    method waitInMillis = waitInMillis
    method set_waitInMillis value' = waitInMillis <- value'
    
    

    method run () : unit =
        begin
        ignore ((DisplayInfoSingleton.getInstance ())#process ())
        end
    

    method processLoopSleep () : unit =
        begin
        ignore (Unix.sleepf (Float.of_int (waitInMillis) /. 1000.0))
        end

    initializer
      begin
        wAIT <- 240;
        fAST <- 60;
        waitInMillis <- wAIT;
        ();
        ()
      end
  end
let () = java_register_constructor "GameRunnable" (fun arguments -> Obj.repr (new gameRunnable (Obj.obj arguments)))


