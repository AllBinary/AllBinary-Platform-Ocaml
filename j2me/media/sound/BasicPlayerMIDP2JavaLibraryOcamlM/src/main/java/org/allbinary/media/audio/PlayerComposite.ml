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
(* package org.allbinary.media.audio *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.media.Control *)
(* import javax.microedition.media.Controllable *)
(* import javax.microedition.media.MediaException *)
(* import javax.microedition.media.Player *)
(* import javax.microedition.media.PlayerListener *)
(* import javax.microedition.media.TimeBase *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.time.GameTickTimeDelayHelper *)
(* import org.allbinary.time.GameTickTimeDelayHelperFactory *)
(* import org.allbinary.time.TimeDelayHelper *)

class playerComposite (player_arg, (repeatTime : int)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable player : Obj.t = Obj.repr 0
    method player : 'r. 'r = Obj.magic player
    method set_player : 'v. 'v -> unit = fun value' -> player <- Obj.repr value'
    val mutable timeElapsedHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method timeElapsedHelper = timeElapsedHelper
    method set_timeElapsedHelper value' = timeElapsedHelper <- value'
    val mutable gameTickTimeDelayHelper : GameTickTimeDelayHelper.gameTickTimeDelayHelper = (Obj.magic 0)
    method gameTickTimeDelayHelper = gameTickTimeDelayHelper
    method set_gameTickTimeDelayHelper value' = gameTickTimeDelayHelper <- value'
    
    

    method addPlayerListener : 'any1. 'any1 -> unit = fun (playerListener) ->
        let playerListener = Obj.repr playerListener in
        begin
        ignore ((Obj.magic player)#addPlayerListener ((Obj.magic playerListener)))
        end [@@warning "-20"]
    

    method removePlayerListener : 'any1. 'any1 -> unit = fun (playerListener) ->
        let playerListener = Obj.repr playerListener in
        begin
        ignore ((Obj.magic player)#removePlayerListener ((Obj.magic playerListener)))
        end [@@warning "-20"]
    

    method close () : unit =
        begin
        ignore ((Obj.magic player)#close ())
        end
    

    method deallocate () : unit =
        begin
        ignore ((Obj.magic player)#deallocate ())
        end
    

    method getContentType () : string =
        begin
        ((Obj.magic player)#getContentType ())
        end
    

    method getDuration () : int =
        begin
        ((Obj.magic player)#getDuration ())
        end
    

    method getMediaTime () : int =
        begin
        ((Obj.magic player)#getMediaTime ())
        end
    

    method getTimeBase : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((((Obj.magic (Obj.magic player)))#getTimeBase ())))
        end
    

    method setTimeBase : 'any1. 'any1 -> unit = fun (timeBase) ->
        let timeBase = Obj.repr timeBase in
        begin
        ignore (((Obj.magic (Obj.magic player)))#setTimeBase ((Obj.magic timeBase)))
        end [@@warning "-20"]
    

    method prefetch () : unit =
        begin
        (try
            ignore ((Obj.magic player)#prefetch ())
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "prefetch", e))
        end)
        end
    

    method realize () : unit =
        begin
        (try
            ignore ((Obj.magic player)#realize ())
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "realize", e))
        end)
        end
    

    method getState () : int =
        begin
        ((Obj.magic player)#getState ())
        end
    

    method setLoopCount ((count : int)) : unit =
        begin
        ignore ((Obj.magic player)#setLoopCount (count))
        end
    

    method setMediaTime ((now : int)) : int =
        begin
        (try
            ((Obj.magic player)#setMediaTime (now))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "setMediaTime", e));
            (-1)
        end)
        end
    

    method start () : unit =
        begin
        (try
            if (timeElapsedHelper#isTime (gameTickTimeDelayHelper#startTime)) then begin
                ignore ((Obj.magic player)#start ())
            end
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#sTART_METHOD_NAME, e))
        end)
        end
    

    method stop () : unit =
        begin
        (try
            ignore ((Obj.magic player)#stop ())
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "stop", e))
        end)
        end
    

    method getControl : 'return. string -> 'return = fun ((controlType : string)) ->
        begin
        (Obj.magic (((Obj.magic player)#getControl (controlType))))
        end
    

    method getControls : 'return. unit -> 'return = fun () ->
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method setVolume ((leftVolume : int), (rightVolume : int)) : unit =
        begin
        let controllable2 : Controllable2.controllable2 ref = ref ((((Obj.magic (Obj.magic player))) :> Controllable2.controllable2)) in ();
        ignore (!controllable2#setVolume (leftVolume, rightVolume))
        end
    

    method getPlayerP : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic player)))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        timeElapsedHelper <- ((new TimeDelayHelper.timeDelayHelper (0)) :> TimeDelayHelper.timeDelayHelper);
        gameTickTimeDelayHelper <- ((GameTickTimeDelayHelperFactory.getInstance ()) :> GameTickTimeDelayHelper.gameTickTimeDelayHelper);
        ();
        player <- Obj.repr (player_arg);
        timeElapsedHelper#set_delay (repeatTime)
      end
  end [@@warning "-20"]
let () = java_register_constructor "PlayerComposite" (fun arguments -> Obj.repr (new playerComposite (Obj.obj arguments)))


