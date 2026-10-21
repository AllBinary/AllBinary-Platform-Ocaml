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
(* package org.allbinary.game.score *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Command *)
(* import org.allbinary.logic.string.StringUtil *)

class highScoreCommands () =
  object
    val mutable dISPLAY : Obj.t = Obj.repr 0
    method dISPLAY : 'r. 'r = Obj.magic dISPLAY
    method set_dISPLAY : 'v. 'v -> unit = fun value' -> dISPLAY <- Obj.repr value'
    val mutable pERSONAL : Obj.t = Obj.repr 0
    method pERSONAL : 'r. 'r = Obj.magic pERSONAL
    method set_pERSONAL : 'v. 'v -> unit = fun value' -> pERSONAL <- Obj.repr value'
    val mutable wORLD : Obj.t = Obj.repr 0
    method wORLD : 'r. 'r = Obj.magic wORLD
    method set_wORLD : 'v. 'v -> unit = fun value' -> wORLD <- Obj.repr value'

    initializer
      begin
        dISPLAY <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Scores", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 1)))));
        pERSONAL <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Personal", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 1)))));
        wORLD <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("World", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 1)))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "HighScoreCommands" (fun arguments -> Obj.repr (new highScoreCommands (Obj.obj arguments)))

let instance = (new highScoreCommands ())
let get_instance () = instance
let () = java_register_static "HighScoreCommands.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "HighScoreCommands.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


