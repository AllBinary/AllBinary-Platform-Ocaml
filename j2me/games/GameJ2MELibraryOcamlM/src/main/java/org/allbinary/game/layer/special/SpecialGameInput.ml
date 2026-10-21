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
(* package org.allbinary.game.layer.special *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.layer.AllBinaryLayerManager *)

class specialGameInput () =
  object
    

    method up () : unit =
        begin
        ()
        end
    

    method down () : unit =
        begin
        ()
        end
    

    method right () : unit =
        begin
        ()
        end
    

    method left () : unit =
        begin
        ()
        end
    

    method strafeLeft () : unit =
        begin
        ()
        end
    

    method strafeRight () : unit =
        begin
        ()
        end
    

    method fire : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_layerManager, _gameKeyEvent) ->
        begin
        ()
        end [@@warning "-20"]
    

    method special1 : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_layerManager, _gameKeyEvent) ->
        begin
        ()
        end [@@warning "-20"]
    

    method special2 : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_layerManager, _gameKeyEvent) ->
        begin
        ()
        end [@@warning "-20"]
    

    method special3 : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_layerManager, _gameKeyEvent) ->
        begin
        ()
        end [@@warning "-20"]
    

    method special4 : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_layerManager, _gameKeyEvent) ->
        begin
        ()
        end [@@warning "-20"]
    

    method special5 : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_layerManager, _gameKeyEvent) ->
        begin
        ()
        end [@@warning "-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-20"]
    

    method paintThreed : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "SpecialGameInput" (fun arguments -> Obj.repr (new specialGameInput (Obj.obj arguments)))


