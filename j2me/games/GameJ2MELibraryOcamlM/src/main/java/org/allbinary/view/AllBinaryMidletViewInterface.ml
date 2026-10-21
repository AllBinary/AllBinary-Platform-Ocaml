(* Generated Code Do Not Modify *)
(* package org.allbinary.view *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.configuration.event.GameInitializedListenerInterface *)
(* import org.allbinary.game.midlet.DemoGameMidletEventListener *)
(* import org.allbinary.midlet.MidletCompositeInterface *)

class virtual allBinaryMidletViewInterface =
  object
    inherit MidletCompositeInterface.midletCompositeInterface
    inherit DemoGameMidletEventListener.demoGameMidletEventListener
    inherit GameInitializedListenerInterface.gameInitializedListenerInterface
    method virtual onResume : unit -> unit
    method virtual onPause : unit -> unit
    method virtual onDestroy : unit -> unit
  end


