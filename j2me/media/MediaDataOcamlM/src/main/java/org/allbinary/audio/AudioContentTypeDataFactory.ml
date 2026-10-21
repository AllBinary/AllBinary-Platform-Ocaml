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
(* package org.allbinary.audio *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class audioContentTypeDataFactory () =
  object
    val mutable mIME_AUDIO_TONE : AudioContentTypeData.audioContentTypeData = (Obj.magic 0)
    method mIME_AUDIO_TONE = mIME_AUDIO_TONE
    method set_mIME_AUDIO_TONE value' = mIME_AUDIO_TONE <- value'
    val mutable mIME_AUDIO_AMR : AudioContentTypeData.audioContentTypeData = (Obj.magic 0)
    method mIME_AUDIO_AMR = mIME_AUDIO_AMR
    method set_mIME_AUDIO_AMR value' = mIME_AUDIO_AMR <- value'
    val mutable mIME_AUDIO_AMR_WB : AudioContentTypeData.audioContentTypeData = (Obj.magic 0)
    method mIME_AUDIO_AMR_WB = mIME_AUDIO_AMR_WB
    method set_mIME_AUDIO_AMR_WB value' = mIME_AUDIO_AMR_WB <- value'
    val mutable mIME_AUDIO_WAV : AudioContentTypeData.audioContentTypeData = (Obj.magic 0)
    method mIME_AUDIO_WAV = mIME_AUDIO_WAV
    method set_mIME_AUDIO_WAV value' = mIME_AUDIO_WAV <- value'
    val mutable mIME_AUDIO_MIDI : AudioContentTypeData.audioContentTypeData = (Obj.magic 0)
    method mIME_AUDIO_MIDI = mIME_AUDIO_MIDI
    method set_mIME_AUDIO_MIDI value' = mIME_AUDIO_MIDI <- value'
    val mutable mIME_AUDIO_SP_MIDI : AudioContentTypeData.audioContentTypeData = (Obj.magic 0)
    method mIME_AUDIO_SP_MIDI = mIME_AUDIO_SP_MIDI
    method set_mIME_AUDIO_SP_MIDI value' = mIME_AUDIO_SP_MIDI <- value'
    

    initializer
      begin
        mIME_AUDIO_TONE <- ((new AudioContentTypeData.audioContentTypeData ("audio/x-tone-seq")) :> AudioContentTypeData.audioContentTypeData);
        mIME_AUDIO_AMR <- ((new AudioContentTypeData.audioContentTypeData ("audio/amr")) :> AudioContentTypeData.audioContentTypeData);
        mIME_AUDIO_AMR_WB <- ((new AudioContentTypeData.audioContentTypeData ("audio/amr-wb")) :> AudioContentTypeData.audioContentTypeData);
        mIME_AUDIO_WAV <- ((new AudioContentTypeData.audioContentTypeData ("audio/x-wav")) :> AudioContentTypeData.audioContentTypeData);
        mIME_AUDIO_MIDI <- ((new AudioContentTypeData.audioContentTypeData ("audio/midi")) :> AudioContentTypeData.audioContentTypeData);
        mIME_AUDIO_SP_MIDI <- ((new AudioContentTypeData.audioContentTypeData ("audio/sp-midi")) :> AudioContentTypeData.audioContentTypeData);
        ();
        ()
      end
  end
let () = java_register_constructor "AudioContentTypeDataFactory" (fun arguments -> Obj.repr (new audioContentTypeDataFactory (Obj.obj arguments)))

let instance = (new audioContentTypeDataFactory ())
let get_instance () = instance
let () = java_register_static "AudioContentTypeDataFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AudioContentTypeDataFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


