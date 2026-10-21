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
(* import org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.time.GameTickTimeDelayHelper *)
(* import org.allbinary.time.GameTickTimeDelayHelperFactory *)

class gameFrameRunnable ((allBinaryGameCanvas_arg : AllBinaryGameCanvas.allBinaryGameCanvas)) =
  object (self)
    inherit GameRunnable.gameRunnable ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable gameTickDisplayInfoSingleton : GameTickDisplayInfoSingleton.gameTickDisplayInfoSingleton = (Obj.magic 0)
    method gameTickDisplayInfoSingleton = gameTickDisplayInfoSingleton
    method set_gameTickDisplayInfoSingleton value' = gameTickDisplayInfoSingleton <- value'
    val mutable allBinaryGameCanvas : AllBinaryGameCanvas.allBinaryGameCanvas = (Obj.magic 0)
    method allBinaryGameCanvas = allBinaryGameCanvas
    method set_allBinaryGameCanvas value' = allBinaryGameCanvas <- value'
    val mutable gameTickTimeDelayHelper : GameTickTimeDelayHelper.gameTickTimeDelayHelper = (Obj.magic 0)
    method gameTickTimeDelayHelper = gameTickTimeDelayHelper
    method set_gameTickTimeDelayHelper value' = gameTickTimeDelayHelper <- value'
    
    

    method run () : unit =
        begin
        (try
            let allBinaryGameCanvas_arg : AllBinaryGameCanvas.allBinaryGameCanvas ref = ref ((allBinaryGameCanvas :> AllBinaryGameCanvas.allBinaryGameCanvas)) in ();
            ignore ((!allBinaryGameCanvas_arg#getLoopTimeHelperP ())#setStartTime ((gameTickTimeDelayHelper#setStartTime ())));
            ignore (gameTickDisplayInfoSingleton#update ());
            ignore (!allBinaryGameCanvas_arg#processGame ());
            if ((not (!allBinaryGameCanvas_arg#isRunning ())) || (!allBinaryGameCanvas_arg#isPaused ())) then begin
                ignore (!allBinaryGameCanvas_arg#notifyDonePainting ())
            end
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#rUN, e))
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        gameTickDisplayInfoSingleton <- ((GameTickDisplayInfoSingleton.getInstance ()) :> GameTickDisplayInfoSingleton.gameTickDisplayInfoSingleton);
        ();
        gameTickTimeDelayHelper <- ((GameTickTimeDelayHelperFactory.getInstance ()) :> GameTickTimeDelayHelper.gameTickTimeDelayHelper);
        ();
        allBinaryGameCanvas <- allBinaryGameCanvas_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameFrameRunnable" (fun arguments -> Obj.repr (new gameFrameRunnable (Obj.obj arguments)))


