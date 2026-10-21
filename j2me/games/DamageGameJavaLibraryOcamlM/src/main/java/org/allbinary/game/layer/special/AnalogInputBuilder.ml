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
(* package org.allbinary.game.layer.special *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)
(* import org.allbinary.game.input.GameInputProcessor *)

class analogInputBuilder () =
  object
    

    method disable : 'any2. GameInputProcessor.gameInputProcessor array * 'any2 -> unit = fun ((inputProcessorArray : GameInputProcessor.gameInputProcessor array), collidableDestroyableDamageableLayer) ->
        let collidableDestroyableDamageableLayer = Obj.repr collidableDestroyableDamageableLayer in
        begin
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_uP" (Obj.repr ())))) <- ((new SpecialUpGameInputProcessor.specialUpGameInputProcessor ((Obj.magic collidableDestroyableDamageableLayer))) :> GameInputProcessor.gameInputProcessor);
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_dOWN" (Obj.repr ())))) <- ((new SpecialDownGameInputProcessor.specialDownGameInputProcessor ((Obj.magic collidableDestroyableDamageableLayer))) :> GameInputProcessor.gameInputProcessor);
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())))) <- ((new SpecialRightGameInputProcessor.specialRightGameInputProcessor ((Obj.magic collidableDestroyableDamageableLayer))) :> GameInputProcessor.gameInputProcessor);
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())))) <- ((new SpecialLeftGameInputProcessor.specialLeftGameInputProcessor ((Obj.magic collidableDestroyableDamageableLayer))) :> GameInputProcessor.gameInputProcessor);
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM0" (Obj.repr ())))) <- ((new Special1GameInputProcessor.special1GameInputProcessor ((Obj.magic collidableDestroyableDamageableLayer))) :> GameInputProcessor.gameInputProcessor);
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM5" (Obj.repr ())))) <- ((new Special3GameInputProcessor.special3GameInputProcessor ((Obj.magic collidableDestroyableDamageableLayer))) :> GameInputProcessor.gameInputProcessor)
        end [@@warning "-20"]
    

    method enable : 'any2. GameInputProcessor.gameInputProcessor array * 'any2 -> unit = fun ((inputProcessorArray : GameInputProcessor.gameInputProcessor array), collidableDestroyableDamageableLayer) ->
        let collidableDestroyableDamageableLayer = Obj.repr collidableDestroyableDamageableLayer in
        begin
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_uP" (Obj.repr ())))) <- ((new SpecialAnalogUpGameInputProcessor.specialAnalogUpGameInputProcessor ((Obj.magic collidableDestroyableDamageableLayer))) :> GameInputProcessor.gameInputProcessor);
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_dOWN" (Obj.repr ())))) <- ((new SpecialAnalogDownGameInputProcessor.specialAnalogDownGameInputProcessor ((Obj.magic collidableDestroyableDamageableLayer))) :> GameInputProcessor.gameInputProcessor);
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())))) <- ((new SpecialAnalogRightGameInputProcessor.specialAnalogRightGameInputProcessor ((Obj.magic collidableDestroyableDamageableLayer))) :> GameInputProcessor.gameInputProcessor);
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())))) <- ((new SpecialAnalogLeftGameInputProcessor.specialAnalogLeftGameInputProcessor ((Obj.magic collidableDestroyableDamageableLayer))) :> GameInputProcessor.gameInputProcessor);
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM0" (Obj.repr ())))) <- ((new SpecialAnalogLeftTriggerGameInputProcessor.specialAnalogLeftTriggerGameInputProcessor ((Obj.magic collidableDestroyableDamageableLayer))) :> GameInputProcessor.gameInputProcessor);
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM5" (Obj.repr ())))) <- ((new SpecialAnalogRightTriggerGameInputProcessor.specialAnalogRightTriggerGameInputProcessor ((Obj.magic collidableDestroyableDamageableLayer))) :> GameInputProcessor.gameInputProcessor)
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "AnalogInputBuilder" (fun arguments -> Obj.repr (new analogInputBuilder (Obj.obj arguments)))

let instance = (new analogInputBuilder ())
let get_instance () = instance
let () = java_register_static "AnalogInputBuilder.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AnalogInputBuilder.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


