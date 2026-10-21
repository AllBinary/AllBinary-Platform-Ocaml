(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
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
(* import javax.sound.sampled.AudioFormat *)

let nULL_AUDIO_FORMAT : Obj.t = (Obj.repr (new AudioFormat.audioFormat ((AudioFormat.get_encoding ())#pCM_UNSIGNED, 0.0, 0, 0, 0, 0.0, false)))
let get_nULL_AUDIO_FORMAT () = Obj.magic nULL_AUDIO_FORMAT
let () = java_register_static "NullAudioFormat.get_nULL_AUDIO_FORMAT" (fun _ -> Obj.repr (get_nULL_AUDIO_FORMAT ()))
class nullAudioFormat () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullAudioFormat" (fun arguments -> Obj.repr (new nullAudioFormat (Obj.obj arguments)))


