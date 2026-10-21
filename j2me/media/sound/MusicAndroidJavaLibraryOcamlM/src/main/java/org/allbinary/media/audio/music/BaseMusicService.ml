(* Generated Code Do Not Modify *)
(* package org.allbinary.media.audio.music *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import android.app.Service *)
(* import android.content.Intent *)
(* import android.media.MediaPlayer *)
(* import android.os.IBinder *)
(* import org.allbinary.android.NullAndroidCanvas *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStateStrings *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.thread.ARunnable *)

class baseMusicService () =
  object (self)
    inherit Service.service ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable commonStateStrings : CommonStateStrings.commonStateStrings = (Obj.magic 0)
    method commonStateStrings = commonStateStrings
    method set_commonStateStrings value' = commonStateStrings <- value'
    val mutable aLREADY_PLAYING : string = ""
    method aLREADY_PLAYING = aLREADY_PLAYING
    method set_aLREADY_PLAYING value' = aLREADY_PLAYING <- value'
    val mutable wAITING_FOR_MUSIC_TO_END : string = ""
    method wAITING_FOR_MUSIC_TO_END = wAITING_FOR_MUSIC_TO_END
    method set_wAITING_FOR_MUSIC_TO_END value' = wAITING_FOR_MUSIC_TO_END <- value'
    val mutable player : Obj.t = Obj.repr 0
    method player : 'r. 'r = Obj.magic player
    method set_player : 'v. 'v -> unit = fun value' -> player <- Obj.repr value'
    val mutable songId : int = 0
    method songId = songId
    method set_songId value' = songId <- value'
    val mutable leftVolume : int = 0
    method leftVolume = leftVolume
    method set_leftVolume value' = leftVolume <- value'
    val mutable rightVolume : int = 0
    method rightVolume = rightVolume
    method set_rightVolume value' = rightVolume <- value'
    

    method onBind : 'any1 'return. 'any1 -> 'return = fun (_intent) ->
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStateStrings#bIND));
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-7-20"]
    

    method onCreate () : unit =
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStateStrings#cREATE))
        end [@@warning "-7"]
    

    method onDestroy () : unit =
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStateStrings#dESTROY));
        if ((Obj.repr (Obj.magic player)) != (Obj.repr (NullAndroidCanvas.get_nULL_MEDIA_PLAYER ()))) then begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStateStrings#pAUSE));
            ignore ((Obj.magic player)#stop ());
            ignore ((Obj.magic player)#reset ());
            ignore ((Obj.magic player)#release ())
        end
        end [@@warning "-7"]
    

    method pause () : unit =
        begin
        if ((Obj.repr (Obj.magic player)) != (Obj.repr (NullAndroidCanvas.get_nULL_MEDIA_PLAYER ()))) then begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStateStrings#pAUSE));
            ignore ((Obj.magic player)#pause ())
        end
        end [@@warning "-7"]
    

    method resume () : unit =
        begin
        if (((Obj.repr (Obj.magic player)) != (Obj.repr (NullAndroidCanvas.get_nULL_MEDIA_PLAYER ()))) && (not ((Obj.magic player)#isPlaying ()))) then begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStateStrings#rESUME));
            ignore ((Obj.magic player)#start ())
        end
        end [@@warning "-7"]
    

    method start () : unit =
        begin
        player <- Obj.repr ((MediaPlayer.create (self, songId)));
        ignore ((Obj.magic player)#setVolume ((((float_of_int (leftVolume))) /. 100.0), (((float_of_int (rightVolume))) /. 100.0)));
        ignore ((Obj.magic player)#setLooping (false));
        ignore ((Obj.magic player)#start ())
        end [@@warning "-7"]
    

    method onStart : 'any1. 'any1 * int -> unit = fun (intent, (_startid : int)) ->
        let intent = Obj.repr intent in
        begin
        (self#onStartCommandIntent ((Obj.magic intent)));
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStateStrings#sTART))
        end [@@warning "-7-20"]
    

    method onStartCommand : 'any1. 'any1 * int * int -> int = fun (intent, (_flags : int), (_startId : int)) ->
        let intent = Obj.repr intent in
        begin
        (self#onStartCommandIntent ((Obj.magic intent)));
        (Service.get_sTART_STICKY ())
        end [@@warning "-7-20"]
    

    method onStartCommandIntent : 'any1. 'any1 -> unit = fun (intent) ->
        let intent = Obj.repr intent in
        try
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStateStrings#oN_START_COMMAND));
        let musicStrings : MusicStrings.musicStrings ref = ref (((MusicStrings.getInstance ()) :> MusicStrings.musicStrings)) in ();
        if ((Obj.magic intent) != (Obj.magic 0)) then begin
            let command : int ref = ref (((Obj.magic intent)#getIntExtra (commonStateStrings#oN_START_COMMAND, (-1)))) in ();
            ignore ((Obj.magic logUtil)#putF (((CommonLabels.getInstance ())#cOMMAND_LABEL + !command), self, commonStateStrings#oN_START_COMMAND));
            if (!command = 1) then begin
                (self#pause ());
                raise (Java_return (Obj.repr (())))
            end else if (!command = 2) then begin
                (self#resume ());
                raise (Java_return (Obj.repr (())))
            end else begin
                songId <- ((Obj.magic intent)#getIntExtra (!musicStrings#sONG_EXTRA, (-1)));
                leftVolume <- ((Obj.magic intent)#getIntExtra (!musicStrings#lEFT_VOLUME, (-1)));
                rightVolume <- ((Obj.magic intent)#getIntExtra (!musicStrings#rIGHT_VOLUME, (-1)))
            end
        end else begin
            raise (Failure ("Started service without intent"))
        end;
        if (songId <> (-1)) then begin
            ignore (Gc.full_major ());
            if (((Obj.repr (Obj.magic player)) != (Obj.repr (NullAndroidCanvas.get_nULL_MEDIA_PLAYER ()))) && ((Obj.magic player)#isPlaying ())) then begin
                let player_arg : Obj.t ref = ref ((Obj.repr (Obj.magic player))) in ();
                ignore ((Obj.magic logUtil)#putF (aLREADY_PLAYING, self, commonStateStrings#oN_START_COMMAND));
                (* Java nested class MusicRunnable: move it to its own module *) ();
                let runnable : java_runnable ref = ref (((new MusicRunnable.musicRunnable (self)) :> java_runnable)) in ();
                let thread : java_thread ref = ref (((Obj.obj (java_new "Thread" (Obj.repr (!runnable)))) :> java_thread)) in ();
                ignore (!thread#start ());
                raise (Java_return (Obj.repr (())))
            end;
            (self#start ())
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        commonStateStrings <- ((CommonStateStrings.getInstance ()) :> CommonStateStrings.commonStateStrings);
        aLREADY_PLAYING <- "This is one song per music service";
        wAITING_FOR_MUSIC_TO_END <- "Waiting for music to end";
        player <- (Obj.repr (NullAndroidCanvas.get_nULL_MEDIA_PLAYER ()));
        songId <- (-1);
        leftVolume <- (-1);
        rightVolume <- (-1);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "BaseMusicService" (fun arguments -> Obj.repr (new baseMusicService (Obj.obj arguments)))


