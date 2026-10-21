(* Generated Code Do Not Modify *)
(* package org.allbinary.game.configuration.feature *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)
(* import org.allbinary.game.commands.GameCommandsFactory *)

class multiPlayerGameFeatureFactory () =
  object
    
    

    method addCommands : 'any1. 'any1 -> unit = fun (anyType) ->
        let anyType = Obj.repr anyType in
        begin
        let gameCommandsFactory : GameCommandsFactory.gameCommandsFactory ref = ref (((GameCommandsFactory.getInstance ()) :> GameCommandsFactory.gameCommandsFactory)) in ();
        let canvas : Obj.t ref = ref ((Obj.repr (Obj.magic anyType))) in ();
        ignore ((Obj.magic !canvas)#addCommand (!gameCommandsFactory#qUIT_COMMAND))
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "MultiPlayerGameFeatureFactory" (fun arguments -> Obj.repr (new multiPlayerGameFeatureFactory (Obj.obj arguments)))

let instance = (new multiPlayerGameFeatureFactory ())
let get_instance () = instance
let () = java_register_static "MultiPlayerGameFeatureFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "MultiPlayerGameFeatureFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


