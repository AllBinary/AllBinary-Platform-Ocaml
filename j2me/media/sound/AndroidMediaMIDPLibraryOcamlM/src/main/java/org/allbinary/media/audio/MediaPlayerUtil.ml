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
(* import android.media.MediaPlayer *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class mediaPlayerUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    

    method waitForMediaPlayer : 'any1. 'any1 -> unit = fun (mediaPlayer) ->
        let mediaPlayer = Obj.repr mediaPlayer in
        begin
        let mESSAGE : string ref = ref ("Not Stopped Waiting") in ();
        let mETHOD_NAME : string ref = ref ("wait") in ();
        let index : int ref = ref (0) in ();
        while (((Obj.magic mediaPlayer)#isPlaying ()) && (!index < 50)) do
            ignore ((Obj.magic logUtil)#putF (!mESSAGE, self, !mETHOD_NAME));
            ignore (Unix.sleepf (Float.of_int (100) /. 1000.0));
            index := !index + 1
        done
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "MediaPlayerUtil" (fun arguments -> Obj.repr (new mediaPlayerUtil (Obj.obj arguments)))

let instance = (new mediaPlayerUtil ())
let get_instance () = instance
let () = java_register_static "MediaPlayerUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "MediaPlayerUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


