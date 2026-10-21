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
(* package org.allbinary.game.midlet *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)

class demoGameMidletEvent ((anyType : Obj.t), (demoGameMidletState_arg : DemoGameMidletState.demoGameMidletState)) =
  object (self)
    inherit AllBinaryEventObject.allBinaryEventObject (anyType)
    val mutable demoGameMidletState : DemoGameMidletState.demoGameMidletState = (Obj.magic 0)
    method demoGameMidletState = demoGameMidletState
    method set_demoGameMidletState value' = demoGameMidletState <- value'
    
    

    method init : 'any1. 'any1 -> unit = fun (anyType) ->
        let anyType = Obj.repr anyType in
        begin
        ignore (self#setSource (anyType))
        end [@@warning "-7"]
    

    method setDemoGameMidletState : 'any1. 'any1 -> unit = fun (demoGameMidletState_arg) ->
        let demoGameMidletState_arg = Obj.repr demoGameMidletState_arg in
        begin
        demoGameMidletState <- (Obj.magic demoGameMidletState_arg)
        end [@@warning "-7-20"]
    

    method getDemoGameMidletState () : DemoGameMidletState.demoGameMidletState =
        begin
        (demoGameMidletState :> DemoGameMidletState.demoGameMidletState)
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        demoGameMidletState <- demoGameMidletState_arg
      end
  end
let () = java_register_constructor "DemoGameMidletEvent" (fun arguments -> Obj.repr (new demoGameMidletEvent (Obj.obj arguments)))


