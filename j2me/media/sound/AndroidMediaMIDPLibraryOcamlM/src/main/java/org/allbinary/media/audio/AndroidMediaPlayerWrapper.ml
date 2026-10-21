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
(* import javax.microedition.media.MediaException *)
(* import javax.microedition.media.Player *)
(* import javax.microedition.media.PlayerListener *)
(* import android.media.MediaPlayer *)
(* import org.allbinary.android.NullAndroidCanvas *)
(* import org.allbinary.data.resource.ResourceUtil *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)

class androidMediaPlayerWrapper ((resource : string)) =
  object (self)
    inherit BasicPlayer.basicPlayer () as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable mediaPlayer : Obj.t = Obj.repr 0
    method mediaPlayer : 'r. 'r = Obj.magic mediaPlayer
    method set_mediaPlayer : 'v. 'v -> unit = fun value' -> mediaPlayer <- Obj.repr value'
    
    

    method setLoopCount ((count : int)) : unit =
        begin
        ignore (super#setLoopCount (count));
        if (((Obj.repr (Obj.magic mediaPlayer)) != (Obj.repr (NullAndroidCanvas.get_nULL_MEDIA_PLAYER ()))) && ((Obj.magic mediaPlayer) != (Obj.magic 0))) then begin
            if (count = 0) then begin
                ignore ((Obj.magic mediaPlayer)#setLooping (false))
            end else begin
                ()
            end
        end
        end [@@warning "-7"]
    

    method addPlayerListener : 'any1. 'any1 -> unit = fun (playerListener) ->
        let playerListener = Obj.repr playerListener in
        begin
        ignore (super#addPlayerListener ((Obj.magic playerListener)))
        end [@@warning "-7-20"]
    

    method removePlayerListener : 'any1. 'any1 -> unit = fun (playerListener) ->
        let playerListener = Obj.repr playerListener in
        begin
        ignore (super#removePlayerListener ((Obj.magic playerListener)))
        end [@@warning "-7-20"]
    

    method getState () : int =
        try
        begin
        if ((Obj.magic mediaPlayer)#isPlaying ()) then begin
            raise (Java_return (Obj.repr ((Obj.magic (java_call_static "Player.get_sTARTED" (Obj.repr ()))))))
        end else begin
            raise (Java_return (Obj.repr ((Obj.magic (java_call_static "Player.get_pREFETCHED" (Obj.repr ()))))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method close () : unit =
        begin
        (try
            ignore ((Obj.magic mediaPlayer)#release ());
            mediaPlayer <- Obj.repr ((NullAndroidCanvas.get_nULL_MEDIA_PLAYER ()))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#cLOSE, e))
        end)
        end [@@warning "-7"]
    

    method start () : unit =
        begin
        (try
            if ((Obj.magic mediaPlayer)#isPlaying ()) then begin
                ignore ((Obj.magic mediaPlayer)#pause ());
                ignore ((Obj.magic mediaPlayer)#seekTo (0))
            end;
            ignore ((Obj.magic mediaPlayer)#start ());
            ignore (super#start ())
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#sTART_METHOD_NAME, e))
        end)
        end [@@warning "-7"]
    

    method stop () : unit =
        begin
        (try
            ignore ((Obj.magic mediaPlayer)#stop ());
            ignore ((Obj.magic mediaPlayer)#prepare ());
            ignore (super#stop ())
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "stop", e))
        end)
        end [@@warning "-7"]
    

    method update ((event : string)) : unit =
        begin
        ignore ((Obj.magic logUtil)#putF (("LineEvent: " ^ event), self, commonStrings#uPDATE));
        let size : int ref = ref ((listenersList#size ())) in ();
        for index = 0 to !size - 1 do
            let listener : Obj.t ref = ref ((Obj.repr (Obj.magic listenersList#objectArray.(index)))) in ();
            ignore ((Obj.magic !listener)#playerUpdate (self, event, (NullUtil.getInstance ())#nULL_OBJECT))
        done
        end [@@warning "-7"]
    

    method setVolume ((leftVolume : int), (rightVolume : int)) : unit =
        begin
        ignore ((Obj.magic mediaPlayer)#setVolume ((((float_of_int (leftVolume))) /. 100.0), (((float_of_int (rightVolume))) /. 100.0)))
        end [@@warning "-7"]
    

    method getDuration () : int =
        begin
        (java_to_int (Obj.repr (((Obj.magic mediaPlayer)#getDuration ()))))
        end [@@warning "-7"]
    

    method setMediaPlayer : 'any1. 'any1 -> unit = fun (mediaPlayer_arg) ->
        let mediaPlayer_arg = Obj.repr mediaPlayer_arg in
        begin
        mediaPlayer <- Obj.repr ((Obj.magic mediaPlayer_arg))
        end [@@warning "-7-20"]
    

    method getMediaPlayer : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic mediaPlayer)))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        mediaPlayer <- (Obj.repr (NullAndroidCanvas.get_nULL_MEDIA_PLAYER ()));
        ();
        (try
            if (resource = (StringUtil.getInstance ())#eMPTY_STRING) then begin
                ()
            end else begin
                let resourceUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "ResourceUtil.getInstance" (Obj.repr ()))))) in ();
                let mediaPlayer_arg : Obj.t ref = ref ((Obj.repr (MediaPlayer.create (((Obj.magic !resourceUtil)#getContext ()), (((Obj.magic !resourceUtil)#getResourceId (resource))#intValue ()))))) in ();
                if ((Obj.magic !mediaPlayer_arg) == (Obj.magic 0)) then begin
                    raise (Failure ((java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append ("Failed to create media player for: "))#append (resource))#append (" with id: "))#append ((java_string_of (Obj.repr ((Obj.magic !resourceUtil)#getResourceId (resource))))))))))
                end;
                (self#setMediaPlayer ((Obj.magic !mediaPlayer_arg)));
                ignore ((Obj.magic mediaPlayer)#setLooping (false))
            end
        with e -> begin
            ignore ((Obj.magic logUtil)#put ((java_string_of (Obj.repr (commonStrings#eXCEPTION_LABEL)) ^ resource), self, commonStrings#cONSTRUCTOR, e));
            raise e
        end)
      end
  end [@@warning "-20"]
let () = java_register_constructor "AndroidMediaPlayerWrapper" (fun arguments -> Obj.repr (new androidMediaPlayerWrapper (Obj.obj arguments)))

let nULL_ANDROID_MEDIA_PLAYER_WRAPPER = (createPlayerWrapper ())
let get_nULL_ANDROID_MEDIA_PLAYER_WRAPPER () = nULL_ANDROID_MEDIA_PLAYER_WRAPPER
let () = java_register_static "AndroidMediaPlayerWrapper.get_nULL_ANDROID_MEDIA_PLAYER_WRAPPER" (fun _ -> Obj.repr (get_nULL_ANDROID_MEDIA_PLAYER_WRAPPER ()))

let createPlayerWrapper () =
        begin
        (try
            (new androidMediaPlayerWrapper ((StringUtil.getInstance ())#eMPTY_STRING))
        with e -> begin
            raise (Failure ("RuntimeException"))
        end)
        end
let () = java_register_static "AndroidMediaPlayerWrapper.createPlayerWrapper" (fun arguments -> Obj.repr (createPlayerWrapper (Obj.obj arguments)))


