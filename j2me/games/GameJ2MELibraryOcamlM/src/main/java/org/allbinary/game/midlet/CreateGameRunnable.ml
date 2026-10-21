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
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory *)
(* import org.allbinary.graphics.displayable.command.MyCommandsFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.ABHashtable *)

class createGameRunnable (demoGameMidlet_arg, hashtable_arg) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable demoGameMidlet : Obj.t = Obj.repr 0
    method demoGameMidlet : 'r. 'r = Obj.magic demoGameMidlet
    method set_demoGameMidlet : 'v. 'v -> unit = fun value' -> demoGameMidlet <- Obj.repr value'
    val mutable hashtable : Obj.t = Obj.repr 0
    method hashtable : 'r. 'r = Obj.magic hashtable
    method set_hashtable : 'v. 'v -> unit = fun value' -> hashtable <- Obj.repr value'
    val mutable startGameMidletEvent : DemoGameMidletEvent.demoGameMidletEvent = (Obj.magic 0)
    method startGameMidletEvent = startGameMidletEvent
    method set_startGameMidletEvent value' = startGameMidletEvent <- value'
    
    

    method run () : unit =
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART_RUNNABLE, self, commonStrings#rUN));
            let progressCanvas : ProgressCanvas.progressCanvas ref = ref (((ProgressCanvasFactory.getInstance ()) :> ProgressCanvas.progressCanvas)) in ();
            ignore ((Obj.magic demoGameMidlet)#commandAction ((MyCommandsFactory.getInstance ())#sET_DISPLAYABLE, !progressCanvas));
            ignore ((Obj.magic demoGameMidlet)#stopGameCanvasRunnableInterface ());
            ignore ((Obj.magic demoGameMidlet)#setGameCanvasRunnableInterface (((Obj.magic demoGameMidlet)#createGameCanvasRunnableInterface ())));
            ignore (((Obj.magic demoGameMidlet)#getGameCanvasRunnableInterface ())#setLoadStateHashtable ((Obj.magic hashtable)));
            ignore ((Obj.magic demoGameMidlet)#startGameCanvasRunnableInterface ());
            ignore ((DemoGameMidletEventHandler.getInstance ())#fireEvent (startGameMidletEvent));
            ignore ((Obj.magic logUtil)#putF (commonStrings#eND_RUNNABLE, self, commonStrings#rUN))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#rUN, e))
        end)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        ();
        ();
        demoGameMidlet <- Obj.repr (demoGameMidlet_arg);
        hashtable <- Obj.repr (hashtable_arg);
        startGameMidletEvent <- (new DemoGameMidletEvent.demoGameMidletEvent (self, (DemoGameMidletStateFactory.getInstance ())#sTART_GAME))
      end
  end [@@warning "-20"]
let () = java_register_constructor "CreateGameRunnable" (fun arguments -> Obj.repr (new createGameRunnable (Obj.obj arguments)))


