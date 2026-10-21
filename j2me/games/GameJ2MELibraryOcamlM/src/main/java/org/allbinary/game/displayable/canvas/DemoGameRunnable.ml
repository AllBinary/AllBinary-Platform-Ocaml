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
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.time.GameTickTimeDelayHelper *)
(* import org.allbinary.time.GameTickTimeDelayHelperFactory *)

class demoGameRunnable (demoCanvas_arg) =
  object (self)
    inherit GameRunnable.gameRunnable ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable demoCanvas : Obj.t = Obj.repr 0
    method demoCanvas : 'r. 'r = Obj.magic demoCanvas
    method set_demoCanvas : 'v. 'v -> unit = fun value' -> demoCanvas <- Obj.repr value'
    val mutable gameTickTimeDelayHelper : GameTickTimeDelayHelper.gameTickTimeDelayHelper = (Obj.magic 0)
    method gameTickTimeDelayHelper = gameTickTimeDelayHelper
    method set_gameTickTimeDelayHelper value' = gameTickTimeDelayHelper <- value'
    
    

    method run () : unit =
        begin
        (try
            ignore (((Obj.magic demoCanvas)#getLoopTimeHelperP ())#setStartTime ((gameTickTimeDelayHelper#setStartTime ())));
            ignore ((Obj.magic demoCanvas)#processGame ())
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#rUN, e))
        end)
        end [@@warning "-7"]
    

    method processLoopSleep () : unit =
        begin
        ignore ((Obj.magic demoCanvas)#processLoopSleep ())
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        gameTickTimeDelayHelper <- ((GameTickTimeDelayHelperFactory.getInstance ()) :> GameTickTimeDelayHelper.gameTickTimeDelayHelper);
        ();
        demoCanvas <- Obj.repr (demoCanvas_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "DemoGameRunnable" (fun arguments -> Obj.repr (new demoGameRunnable (Obj.obj arguments)))


