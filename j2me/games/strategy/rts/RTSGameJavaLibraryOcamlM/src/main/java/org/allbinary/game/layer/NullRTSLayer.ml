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
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud *)
(* import org.allbinary.game.combat.destroy.event.DestroyedEvent *)
(* import org.allbinary.game.input.PlayerGameInput *)
(* import org.allbinary.game.input.form.NullRTSFormInputFactory *)
(* import org.allbinary.game.input.form.RTSFormInput *)
(* import org.allbinary.game.layer.capital.Capital *)
(* import org.allbinary.graphics.form.ScrollSelectionForm *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.media.audio.Sound *)

class nullRTSLayer () =
  object
    inherit NullPathFindingLayer.nullPathFindingLayer ()
    

    method getName () : string =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]
    

    method processInput : 'any1. 'any1 -> unit = fun (_layerManager) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7-20"]
    

    method initInputProcessors () : unit =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]
    

    method getGameNotificationHud () : GameNotificationHud.gameNotificationHud =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]
    

    method getCurrentScrollSelectionForm () : ScrollSelectionForm.scrollSelectionForm =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]
    

    method setCurrentScrollSelectionForm : 'any1. 'any1 -> unit = fun (_currentScrollSelectionForm) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7-20"]
    

    method getBuildingScrollSelectionForm () : ScrollSelectionForm.scrollSelectionForm =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]
    

    method getPlayerGameInput () : PlayerGameInput.playerGameInput =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7-20"]
    

    method onDestroyed : 'any1. 'any1 -> unit = fun (_destroyedEvent) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7-20"]
    

    method processTick : 'any1. 'any1 -> unit = fun (_allBinaryLayerManager) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7-20"]
    

    method getCapital () : Capital.capital =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]
    

    method getRTSFormInput () : RTSFormInput.rTSFormInput =
        begin
        ((NullRTSFormInputFactory.getInstance ()) :> RTSFormInput.rTSFormInput)
        end [@@warning "-7"]
    

    method add : 'any1. 'any1 -> unit = fun (_sound) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7-20"]
    

    method getPlayerOwnedRTSLayers () : PlayerOwnedRTSLayers.playerOwnedRTSLayers =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]
    

    method implmentsArtificialIntelligenceCompositeInterface () : bool =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullRTSLayer" (fun arguments -> Obj.repr (new nullRTSLayer (Obj.obj arguments)))

let nULL_RTS_LAYER = (new nullRTSLayer ())
let get_nULL_RTS_LAYER () = nULL_RTS_LAYER
let () = java_register_static "NullRTSLayer.get_nULL_RTS_LAYER" (fun _ -> Obj.repr (get_nULL_RTS_LAYER ()))


