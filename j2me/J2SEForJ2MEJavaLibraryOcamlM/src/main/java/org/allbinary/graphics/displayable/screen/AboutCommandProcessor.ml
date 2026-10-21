(*

  AllBinary Open License Version 1
  Copyright (c) 2022 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
  
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.displayable.screen *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)
(* import javax.microedition.lcdui.Command *)
(* import javax.microedition.lcdui.CommandListener *)

class aboutCommandProcessor () =
  object
    

    method process : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (midletCommandListener, command, canvas) ->
        let midletCommandListener = Obj.repr midletCommandListener in
        let command = Obj.repr command in
        let canvas = Obj.repr canvas in
        begin
        ignore ((Obj.magic midletCommandListener)#commandAction ((Obj.magic command), (Obj.magic canvas)))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "AboutCommandProcessor" (fun arguments -> Obj.repr (new aboutCommandProcessor (Obj.obj arguments)))

let instance = (new aboutCommandProcessor ())
let get_instance () = instance
let () = java_register_static "AboutCommandProcessor.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AboutCommandProcessor.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


