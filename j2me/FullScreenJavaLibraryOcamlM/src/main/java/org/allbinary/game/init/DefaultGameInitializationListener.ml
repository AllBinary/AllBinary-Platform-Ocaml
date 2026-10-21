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
(* package org.allbinary.game.init *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.game.configuration.event.GameInitializedEvent *)
(* import org.allbinary.game.configuration.event.GameInitializedEventHandler *)
(* import org.allbinary.game.configuration.event.GameInitializedListenerInterface *)
(* import org.allbinary.game.resource.FeatureResourceInitializationUtil *)
(* import org.allbinary.graphics.threed.SWTJOGLProcessor *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventStrings *)

class defaultGameInitializationListener () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable swtJOGLProcessor : Obj.t = Obj.repr 0
    method swtJOGLProcessor : 'r. 'r = Obj.magic swtJOGLProcessor
    method set_swtJOGLProcessor : 'v. 'v -> unit = fun value' -> swtJOGLProcessor <- Obj.repr value'
    val mutable firstTime : bool = false
    method firstTime = firstTime
    method set_firstTime value' = firstTime <- value'
    
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, self))
        end [@@warning "-20"]
    

    method onGameInitialized : 'any1. 'any1 -> unit = fun (gameInitializedEvent) ->
        let gameInitializedEvent = Obj.repr gameInitializedEvent in
        begin
        let oN_GAME_INITIALIZED : string ref = ref ("onGameInitialized") in ();
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        (try
            ignore ((Obj.magic logUtil)#putF (!commonStrings#sTART, self, !oN_GAME_INITIALIZED));
            while (not ((Obj.magic swtJOGLProcessor)#isHolderCreated ())) do
                ignore ((Obj.magic logUtil)#putF (!commonStrings#uPDATE, self, !oN_GAME_INITIALIZED));
                ignore (Unix.sleepf (Float.of_int (20) /. 1000.0))
            done;
            ignore ((FeatureResourceInitializationUtil.getInstance ())#init (((Obj.magic gameInitializedEvent)#getLevel ())));
            if firstTime then begin
                firstTime <- false
            end else begin
                ignore ((Obj.magic swtJOGLProcessor)#onSurfaceChanged ())
            end
        with e -> begin
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !oN_GAME_INITIALIZED, e))
        end)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        swtJOGLProcessor <- (Obj.repr (Obj.magic (java_call_static "SWTJOGLProcessor.getInstance" (Obj.repr ()))));
        firstTime <- true;
        ();
        let gameInitializedEventHandler : GameInitializedEventHandler.gameInitializedEventHandler ref = ref (((GameInitializedEventHandler.getInstance ()) :> GameInitializedEventHandler.gameInitializedEventHandler)) in ();
        ignore (!gameInitializedEventHandler#removeAllListeners ());
        ignore (!gameInitializedEventHandler#addListenerInterface ((Obj.magic self)))
      end
  end [@@warning "-20"]
let () = java_register_constructor "DefaultGameInitializationListener" (fun arguments -> Obj.repr (new defaultGameInitializationListener (Obj.obj arguments)))


