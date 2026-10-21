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
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.layer.AllBinaryLayerManager *)

class gameInputProcessor () =
  object
    
    

    method processEvent : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_allbinaryLayerManager, _gameKeyEvent) ->
        begin
        ()
        end [@@warning "-20"]
    

    method processReleasedEvent : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_allbinaryLayerManager, _gameKeyEvent) ->
        begin
        ()
        end [@@warning "-20"]
    

    method processAnalog : 'any1 'any2. 'any1 * 'any2 * int -> unit = fun (_allbinaryLayerManager, _gameKeyEvent, (_analogValue : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method process : 'any1. 'any1 * int -> unit = fun (_allbinaryLayerManager, (_keyAsInteger : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method processReleased : 'any1. 'any1 * int -> unit = fun (_allbinaryLayerManager, (_keyAsInteger : int)) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "GameInputProcessor" (fun arguments -> Obj.repr (new gameInputProcessor (Obj.obj arguments)))

let instance = (new gameInputProcessor ())
let get_instance () = instance
let () = java_register_static "GameInputProcessor.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GameInputProcessor.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


