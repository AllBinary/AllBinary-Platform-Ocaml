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

class demoGameMidletStateFactory () =
  object
    val mutable nONE : DemoGameMidletState.demoGameMidletState = (Obj.magic 0)
    method nONE = nONE
    method set_nONE value' = nONE <- value'
    val mutable sTART_DEMO : DemoGameMidletState.demoGameMidletState = (Obj.magic 0)
    method sTART_DEMO = sTART_DEMO
    method set_sTART_DEMO value' = sTART_DEMO <- value'
    val mutable sTART_GAME : DemoGameMidletState.demoGameMidletState = (Obj.magic 0)
    method sTART_GAME = sTART_GAME
    method set_sTART_GAME value' = sTART_GAME <- value'
    val mutable sTART_INPUT_MAPPING : DemoGameMidletState.demoGameMidletState = (Obj.magic 0)
    method sTART_INPUT_MAPPING = sTART_INPUT_MAPPING
    method set_sTART_INPUT_MAPPING value' = sTART_INPUT_MAPPING <- value'
    

    initializer
      begin
        nONE <- ((new DemoGameMidletState.demoGameMidletState ()) :> DemoGameMidletState.demoGameMidletState);
        sTART_DEMO <- ((new DemoGameMidletState.demoGameMidletState ()) :> DemoGameMidletState.demoGameMidletState);
        sTART_GAME <- ((new DemoGameMidletState.demoGameMidletState ()) :> DemoGameMidletState.demoGameMidletState);
        sTART_INPUT_MAPPING <- ((new DemoGameMidletState.demoGameMidletState ()) :> DemoGameMidletState.demoGameMidletState);
        ();
        ()
      end
  end
let () = java_register_constructor "DemoGameMidletStateFactory" (fun arguments -> Obj.repr (new demoGameMidletStateFactory (Obj.obj arguments)))

let sTATE = ref ((new demoGameMidletStateFactory ()))
let get_sTATE () = !sTATE
let set_sTATE value' = sTATE := value'
let () = java_register_static "DemoGameMidletStateFactory.get_sTATE" (fun _ -> Obj.repr (get_sTATE ()))

let getInstance () =
        begin
        !sTATE
        end
let () = java_register_static "DemoGameMidletStateFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


