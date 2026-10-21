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
(* package org.allbinary.game.input.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]


let getKey : 'any1. 'any1 -> int = fun (anyType) ->
        let anyType = Obj.repr anyType in
        begin
        let gameKeyEvent : GameKeyEvent.gameKeyEvent ref = ref (((Obj.magic anyType) :> GameKeyEvent.gameKeyEvent)) in ();
        (!gameKeyEvent#getKey ())
        end

let () = java_register_static "GameKeyEventUtil.getKey" (fun arguments -> Obj.repr (getKey (Obj.obj arguments)))
class gameKeyEventUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "GameKeyEventUtil" (fun arguments -> Obj.repr (new gameKeyEventUtil (Obj.obj arguments)))


