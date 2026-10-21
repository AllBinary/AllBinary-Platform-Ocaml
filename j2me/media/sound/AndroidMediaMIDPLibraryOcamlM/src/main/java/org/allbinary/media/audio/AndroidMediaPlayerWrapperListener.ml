(* Generated Code Do Not Modify *)
(* package org.allbinary.media.audio *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.media.PlayerListener *)
(* import android.media.MediaPlayer *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)

class androidMediaPlayerWrapperListener ((androidMediaPlayerWrapper_arg : AndroidMediaPlayerWrapper.androidMediaPlayerWrapper)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable androidMediaPlayerWrapper : AndroidMediaPlayerWrapper.androidMediaPlayerWrapper = (Obj.magic 0)
    method androidMediaPlayerWrapper = androidMediaPlayerWrapper
    method set_androidMediaPlayerWrapper value' = androidMediaPlayerWrapper <- value'
    val mutable mOnBufferingUpdateListener : Obj.t = Obj.repr 0
    method mOnBufferingUpdateListener : 'r. 'r = Obj.magic mOnBufferingUpdateListener
    method set_mOnBufferingUpdateListener : 'v. 'v -> unit = fun value' -> mOnBufferingUpdateListener <- Obj.repr value'
    val mutable mOnPreparedListener : Obj.t = Obj.repr 0
    method mOnPreparedListener : 'r. 'r = Obj.magic mOnPreparedListener
    method set_mOnPreparedListener : 'v. 'v -> unit = fun value' -> mOnPreparedListener <- Obj.repr value'
    val mutable mOnErrorListener : Obj.t = Obj.repr 0
    method mOnErrorListener : 'r. 'r = Obj.magic mOnErrorListener
    method set_mOnErrorListener : 'v. 'v -> unit = fun value' -> mOnErrorListener <- Obj.repr value'
    val mutable mOnCompletionListener : Obj.t = Obj.repr 0
    method mOnCompletionListener : 'r. 'r = Obj.magic mOnCompletionListener
    method set_mOnCompletionListener : 'v. 'v -> unit = fun value' -> mOnCompletionListener <- Obj.repr value'
    

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        androidMediaPlayerWrapper <- ((AndroidMediaPlayerWrapper.get_nULL_ANDROID_MEDIA_PLAYER_WRAPPER ()) :> AndroidMediaPlayerWrapper.androidMediaPlayerWrapper);
        mOnBufferingUpdateListener <- (Obj.repr (new AndroidMediaPlayerOnBufferingUpdateListener.androidMediaPlayerOnBufferingUpdateListener (self)));
        mOnPreparedListener <- (Obj.repr (new AndroidMediaPlayerOnPreparedListener.androidMediaPlayerOnPreparedListener (self)));
        mOnErrorListener <- (Obj.repr (new AndroidMediaPlayerOnErrorListener.androidMediaPlayerOnErrorListener (self)));
        mOnCompletionListener <- (Obj.repr (new AndroidMediaPlayerOnCompletionListener.androidMediaPlayerOnCompletionListener (self)));
        ();
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#cONSTRUCTOR));
            androidMediaPlayerWrapper <- androidMediaPlayerWrapper_arg;
            let mediaPlayer : Obj.t ref = ref ((Obj.repr (androidMediaPlayerWrapper_arg#getMediaPlayer ()))) in ();
            ignore ((Obj.magic !mediaPlayer)#setOnCompletionListener ((Obj.magic mOnCompletionListener)));
            ignore ((Obj.magic !mediaPlayer)#setOnBufferingUpdateListener ((Obj.magic mOnBufferingUpdateListener)));
            ignore ((Obj.magic !mediaPlayer)#setOnPreparedListener ((Obj.magic mOnPreparedListener)));
            ignore ((Obj.magic !mediaPlayer)#setOnErrorListener ((Obj.magic mOnErrorListener)))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#cONSTRUCTOR, e))
        end)
      end
  end [@@warning "-20"]
let () = java_register_constructor "AndroidMediaPlayerWrapperListener" (fun arguments -> Obj.repr (new androidMediaPlayerWrapperListener (Obj.obj arguments)))


