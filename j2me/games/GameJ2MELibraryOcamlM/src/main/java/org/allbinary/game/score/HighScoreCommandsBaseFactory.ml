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
(* import org.allbinary.J2MEUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class highScoreCommandsBaseFactory (hIGH_SCORE_COMMANDS_arg) =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable hIGH_SCORE_COMMANDS : Obj.t = Obj.repr 0
    method hIGH_SCORE_COMMANDS : 'r. 'r = Obj.magic hIGH_SCORE_COMMANDS
    method set_hIGH_SCORE_COMMANDS : 'v. 'v -> unit = fun value' -> hIGH_SCORE_COMMANDS <- Obj.repr value'
    
    

    method isHighScoreCommand : 'any1. 'any1 -> bool = fun (command) ->
        let command = Obj.repr command in
        try
        begin
        for index = ((Array.length (Obj.magic hIGH_SCORE_COMMANDS)) - 1) downto 0 do
            if ((Obj.repr (Obj.magic command)) == (Obj.repr (Obj.magic hIGH_SCORE_COMMANDS).(index))) then begin
                raise (Java_return (Obj.repr (true)))
            end
        done;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method getIndex : 'any1. 'any1 -> int = fun (command) ->
        let command = Obj.repr command in
        try
        begin
        for index = ((Array.length (Obj.magic hIGH_SCORE_COMMANDS)) - 1) downto 0 do
            if ((Obj.repr (Obj.magic command)) == (Obj.repr (Obj.magic hIGH_SCORE_COMMANDS).(index))) then begin
                raise (Java_return (Obj.repr (index)))
            end
        done;
        raise (Failure ("No Such Command"))
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        hIGH_SCORE_COMMANDS <- Obj.repr (hIGH_SCORE_COMMANDS_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "HighScoreCommandsBaseFactory" (fun arguments -> Obj.repr (new highScoreCommandsBaseFactory (Obj.obj arguments)))


