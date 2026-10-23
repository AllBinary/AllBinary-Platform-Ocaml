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
(* import org.allbinary.thread.ARunnable *)
(* import java.io.ByteArrayInputStream *)
(* import java.io.InputStream *)
(* import javax.microedition.media.Control *)
(* import javax.microedition.media.MediaException *)
(* import javax.microedition.media.PlayerListener *)
(* import javax.sound.sampled.AudioInputStream *)
(* import javax.sound.sampled.AudioSystem *)
(* import javax.sound.sampled.Clip *)
(* import javax.sound.sampled.FloatControl *)
(* import javax.sound.sampled.LineEvent *)
(* import javax.sound.sampled.LineListener *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.thread.MusicThreadPool *)

class pCClipWavPlayer (inputStream) =
  object (self)
    inherit BasicPlayer.basicPlayer () as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable audioInputStream : Obj.t = Obj.repr 0
    method audioInputStream : 'r. 'r = Obj.magic audioInputStream
    method set_audioInputStream : 'v. 'v -> unit = fun value' -> audioInputStream <- Obj.repr value'
    val mutable clip : Obj.t = Obj.repr 0
    method clip : 'r. 'r = Obj.magic clip
    method set_clip : 'v. 'v -> unit = fun value' -> clip <- Obj.repr value'
    
    

    method close () : unit =
        begin
        ignore ((MusicThreadPool.getInstance ())#runTask ((object (self)
            inherit ARunnable.aRunnable () as super
            

            method run () : unit =
                begin
                (try
                    (self#close2 ())
                with e -> begin
                    ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (commonStrings#eXCEPTION, self, commonStrings#pROCESS, e))))
                end)
                end
        end)))
        end [@@warning "-7"]
    

    method close2 () : unit =
        begin
        ignore ((Obj.magic clip)#drain ());
        ignore ((Obj.magic clip)#flush ());
        ignore ((Obj.magic clip)#close ())
        end [@@warning "-7"]
    

    method getContentType () : string =
        begin
        (StringUtil.getInstance ())#eMPTY_STRING
        end [@@warning "-7"]
    

    method start () : unit =
        begin
        ignore ((MusicThreadPool.getInstance ())#runTask ((object (self)
            inherit ARunnable.aRunnable () as super
            

            method run () : unit =
                begin
                (try
                    (self#start2 ())
                with e -> begin
                    ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (commonStrings#eXCEPTION, self, commonStrings#pROCESS, e))))
                end)
                end
        end)))
        end [@@warning "-7"]
    

    method start2 () : unit =
        begin
        ignore ((Obj.magic clip)#setFramePosition (0));
        ignore ((Obj.magic clip)#loop ((self#getLoopCount ())));
        ignore ((Obj.magic clip)#start ());
        ignore (super#start ())
        end [@@warning "-7"]
    

    method create : 'any1 'return. 'any1 -> 'return = fun (audioInputStream_arg) ->
        let audioInputStream_arg = Obj.repr audioInputStream_arg in
        begin
        let clip_arg : Obj.t ref = ref ((Obj.repr (AudioSystem.getClip ()))) in ();
        ignore ((Obj.magic !clip_arg)#addLineListener (self));
        ignore ((Obj.magic !clip_arg)#open_ ((Obj.magic audioInputStream_arg)));
        (Obj.magic ((Obj.magic !clip_arg)))
        end [@@warning "-7-20"]
    

    method stop () : unit =
        begin
        ignore ((MusicThreadPool.getInstance ())#runTask ((object (self)
            inherit ARunnable.aRunnable () as super
            

            method run () : unit =
                begin
                (try
                    (self#stop2 ())
                with e -> begin
                    ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (commonStrings#eXCEPTION, self, commonStrings#pROCESS, e))))
                end)
                end
        end)))
        end [@@warning "-7"]
    

    method stop2 () : unit =
        begin
        ignore ((Obj.magic clip)#stop ());
        ignore (super#stop ())
        end [@@warning "-7"]
    

    method getControl : 'return. string -> 'return = fun ((_controlType : string)) ->
        begin
        (Obj.magic ((new NullControl.nullControl ())))
        end [@@warning "-7"]
    

    method getControls : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Array.make (0) (Obj.magic 0))))
        end [@@warning "-7"]
    

    method setVolume ((leftVolume : int), (_rightVolume : int)) : unit =
        begin
        (self#setVolumeF ((((float_of_int (leftVolume))) /. 100.0)))
        end [@@warning "-7"]
    

    method getVolume () : float =
        begin
        let masterGainFloatControl : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic clip)#getControl ((FloatControl.get_type_ ())#mASTER_GAIN))))) in ();
        (java_to_float (Obj.repr ((Float.pow (10.) ((((Obj.magic !masterGainFloatControl)#getValue ()) /. 20.))))))
        end [@@warning "-7"]
    

    method setVolumeF ((volume : float)) : unit =
        begin
        if ((volume < 0.) || (volume > 1.)) then begin
            raise (Failure (("Volume: " ^ java_string_of (Obj.repr (volume)))))
        end;
        let masterGainFloatControl : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic clip)#getControl ((FloatControl.get_type_ ())#mASTER_GAIN))))) in ();
        ignore ((Obj.magic !masterGainFloatControl)#setValue ((20. *. (java_to_float (Obj.repr ((Float.log10 (volume))))))))
        end [@@warning "-7"]
    

    method getDuration () : int =
        begin
        (((Obj.magic clip)#getMicrosecondLength ()) / 1000)
        end [@@warning "-7"]
    

    method update : 'any1. 'any1 -> unit = fun (event) ->
        let event = Obj.repr event in
        begin
        if (((Obj.magic event)#getType ())#equals ((LineEvent.get_type_ ())#sTOP)) then begin
            let size : int ref = ref (((self#listenersList)#size ())) in ();
            for _index = 0 to !size - 1 do
                let listener : Obj.t ref = ref ((Obj.repr (Obj.magic ((self#listenersList)#get (!size))))) in ();
                ignore ((Obj.magic !listener)#playerUpdate (self, (Obj.magic (java_call_static "PlayerListener.get_eND_OF_MEDIA" (Obj.repr ()))), (Obj.magic 0)))
            done
        end
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        let audioInputStream_arg : Obj.t ref = ref ((Obj.repr (new AudioInputStream.audioInputStream ((new ByteArrayInputStream.byteArrayInputStream ((NullUtil.getInstance ())#nULL_BYTE_ARRAY)), (NullAudioFormat.get_nULL_AUDIO_FORMAT ()), 0)))) in ();
        let clip_arg : Obj.t ref = ref ((Obj.repr (new NullClip.nullClip ()))) in ();
        (try
            audioInputStream_arg := Obj.repr ((AudioSystem.getAudioInputStream (inputStream)));
            clip_arg := Obj.repr ((self#create ((Obj.magic !audioInputStream_arg))));
            if ((Obj.magic !clip_arg) == (Obj.magic 0)) then begin
                ignore ((Obj.magic logUtil)#put ("Clip was null", self, (self#commonStrings)#cONSTRUCTOR, (Failure ("Exception"))));
                raise (Failure ("RuntimeException"))
            end
        with e -> begin
            ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#commonStrings)#cONSTRUCTOR, e))
        end);
        audioInputStream <- Obj.repr ((Obj.magic !audioInputStream_arg));
        clip <- Obj.repr ((Obj.magic !clip_arg))
      end
  end [@@warning "-20"]
let () = java_register_constructor "PCClipWavPlayer" (fun arguments -> Obj.repr (new pCClipWavPlayer (Obj.obj arguments)))


