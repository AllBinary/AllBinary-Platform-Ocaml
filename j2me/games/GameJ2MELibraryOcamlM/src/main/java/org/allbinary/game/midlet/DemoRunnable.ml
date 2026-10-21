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
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory *)
(* import org.allbinary.graphics.displayable.command.MyCommandsFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)

class demoRunnable (demoGameMidlet_arg) =
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
    val mutable startDemoGameMidletEvent : DemoGameMidletEvent.demoGameMidletEvent = (Obj.magic 0)
    method startDemoGameMidletEvent = startDemoGameMidletEvent
    method set_startDemoGameMidletEvent value' = startDemoGameMidletEvent <- value'
    
    

    method run () : unit =
        begin
        (try
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ((CommonLabels.getInstance ())#sTART_LABEL))#append ("GameCanvasRunnableInterface")))), self, commonStrings#rUN));
            ignore ((Obj.magic demoGameMidlet)#commandAction ((MyCommandsFactory.getInstance ())#sET_DISPLAYABLE, (ProgressCanvasFactory.getInstance ())));
            ignore ((Obj.magic demoGameMidlet)#setGameCanvasRunnableInterface (((Obj.magic demoGameMidlet)#createDemoGameCanvasRunnableInterface ())));
            ignore ((Obj.magic demoGameMidlet)#demoSetup ());
            ignore ((DemoGameMidletEventHandler.getInstance ())#fireEvent (startDemoGameMidletEvent));
            ignore ((Obj.magic demoGameMidlet)#startGameCanvasRunnableInterface ());
            ignore ((Obj.magic demoGameMidlet)#postDemoSetup ());
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
        demoGameMidlet <- Obj.repr (demoGameMidlet_arg);
        startDemoGameMidletEvent <- (new DemoGameMidletEvent.demoGameMidletEvent ((Obj.magic demoGameMidlet), (DemoGameMidletStateFactory.getInstance ())#sTART_DEMO))
      end
  end [@@warning "-20"]
let () = java_register_constructor "DemoRunnable" (fun arguments -> Obj.repr (new demoRunnable (Obj.obj arguments)))


