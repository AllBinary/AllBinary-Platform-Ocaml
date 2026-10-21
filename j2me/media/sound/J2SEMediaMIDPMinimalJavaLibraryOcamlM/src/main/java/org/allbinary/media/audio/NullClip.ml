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
(* import java.io.IOException *)
(* import javax.sound.sampled.AudioFormat *)
(* import javax.sound.sampled.AudioInputStream *)
(* import javax.sound.sampled.BooleanControl *)
(* import javax.sound.sampled.Clip *)
(* import javax.sound.sampled.Control *)
(* import javax.sound.sampled.Control.Type *)
(* import javax.sound.sampled.Line.Info *)
(* import javax.sound.sampled.LineListener *)
(* import javax.sound.sampled.LineUnavailableException *)

let nULL_CONTROL : NullJ2SEControl.nullJ2SEControl = ((new NullJ2SEControl.nullJ2SEControl ((BooleanControl.get_type_ ())#mUTE)) :> NullJ2SEControl.nullJ2SEControl)
let get_nULL_CONTROL () = nULL_CONTROL
let () = java_register_static "NullClip.get_nULL_CONTROL" (fun _ -> Obj.repr (get_nULL_CONTROL ()))
class nullClip () =
  object (self)
    

    method open_ : 'any1. 'any1 * int array * int * int -> unit = fun (_format, (_data : int array), (_offset : int), (_bufferSize : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    (* Java overload open(AudioInputStream) is not converted: OCaml has one method per name *)
    

    method getFrameLength () : int =
        begin
        0
        end
    

    method getMicrosecondLength () : int =
        begin
        0
        end
    

    method setFramePosition ((_frames : int)) : unit =
        begin
        ()
        end
    

    method setMicrosecondPosition ((_microseconds : int)) : unit =
        begin
        ()
        end
    

    method setLoopPoints ((_start : int), (_end_ : int)) : unit =
        begin
        ()
        end
    

    method loop ((_count : int)) : unit =
        begin
        ()
        end
    

    method drain () : unit =
        begin
        ()
        end
    

    method flush () : unit =
        begin
        ()
        end
    

    method start () : unit =
        begin
        ()
        end
    

    method stop () : unit =
        begin
        ()
        end
    

    method isRunning () : bool =
        begin
        false
        end
    

    method isActive () : bool =
        begin
        false
        end
    

    method getFormat : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((NullAudioFormat.get_nULL_AUDIO_FORMAT ())))
        end
    

    method getBufferSize () : int =
        begin
        0
        end
    

    method available () : int =
        begin
        0
        end
    

    method getFramePosition () : int =
        begin
        0
        end
    

    method getLongFramePosition () : int =
        begin
        0
        end
    

    method getMicrosecondPosition () : int =
        begin
        0
        end
    

    method getLevel () : float =
        begin
        0.0
        end
    

    method getLineInfo : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((new Info.info ((java_get_class (Obj.repr self)), (NullAudioFormat.get_nULL_AUDIO_FORMAT ())))))
        end
    

    (* Java overload open() is not converted: OCaml has one method per name *)
    

    method close () : unit =
        begin
        ()
        end
    

    method isOpen () : bool =
        begin
        false
        end
    

    method getControls : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Array.make (0) (Obj.magic 0))))
        end
    

    method isControlSupported : 'any1. 'any1 -> bool = fun (_control) ->
        begin
        false
        end [@@warning "-20"]
    

    method getControl : 'any1 'return. 'any1 -> 'return = fun (_control) ->
        begin
        (Obj.magic (nULL_CONTROL))
        end [@@warning "-20"]
    

    method addLineListener : 'any1. 'any1 -> unit = fun (_listener) ->
        begin
        ()
        end [@@warning "-20"]
    

    method removeLineListener : 'any1. 'any1 -> unit = fun (_listener) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullClip" (fun arguments -> Obj.repr (new nullClip (Obj.obj arguments)))


