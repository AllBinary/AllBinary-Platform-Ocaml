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
[@@@warning "-20"]
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.game.input.event.GameKeyEventListenerInterface *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.util.BasicArrayList *)

class playerGameInput ((gameKeyEventList : BasicArrayList.basicArrayList), (removalGameKeyEventList : BasicArrayList.basicArrayList), (playerInputId_arg : int)) =
  object (self)
    inherit GameInput.gameInput (gameKeyEventList, removalGameKeyEventList)
    val mutable gameInputStrings : GameInputStrings.gameInputStrings = (Obj.magic 0)
    method gameInputStrings = gameInputStrings
    method set_gameInputStrings value' = gameInputStrings <- value'
    val mutable playerInputId : int = 0
    method playerInputId = playerInputId
    method set_playerInputId value' = playerInputId <- value'
    
    

    method onPressGameKeyEvent : 'any1. 'any1 -> unit = fun (gameKeyEvent) ->
        let gameKeyEvent = Obj.repr gameKeyEvent in
        begin
        ignore (self#add ((Obj.magic gameKeyEvent)));
        ignore (self#addForRemoval ((Obj.magic gameKeyEvent)))
        end [@@warning "-7-20"]
    

    method onDownGameKeyEvent : 'any1. 'any1 -> unit = fun (gameKeyEvent) ->
        let gameKeyEvent = Obj.repr gameKeyEvent in
        begin
        ignore (self#add ((Obj.magic gameKeyEvent)))
        end [@@warning "-7-20"]
    

    method onDownKeyEvent : 'any1. 'any1 -> unit = fun (gameKeyEvent) ->
        let gameKeyEvent = Obj.repr gameKeyEvent in
        begin
        ignore (self#add ((Obj.magic gameKeyEvent)));
        ignore (self#addForRemoval ((Obj.magic gameKeyEvent)))
        end [@@warning "-7-20"]
    

    method onDownKey ((gameKeyEvent : int)) : unit =
        begin
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ((CommonLabels.getInstance ())#sTART_LABEL))#append ((java_string_of (Obj.repr gameKeyEvent)))))), self, gameInputStrings#oN_DOWN_GAME_KEY))))
        end [@@warning "-7"]
    

    method onUpGameKeyEvent : 'any1. 'any1 -> unit = fun (gameKeyEvent) ->
        let gameKeyEvent = Obj.repr gameKeyEvent in
        begin
        ignore (self#addForRemoval ((Obj.magic gameKeyEvent)))
        end [@@warning "-7-20"]
    

    method onUpKeyEvent ((_gameKeyEvent : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, self))
        end [@@warning "-7-20"]
    

    method getPlayerInputId () : int =
        begin
        playerInputId
        end [@@warning "-7"]

    initializer
      begin
        gameInputStrings <- ((GameInputStrings.getInstance ()) :> GameInputStrings.gameInputStrings);
        ();
        ();
        (* super(...) is the inherit clause *) ();
        playerInputId <- playerInputId_arg
      end
  end
let () = java_register_constructor "PlayerGameInput" (fun arguments -> Obj.repr (new playerGameInput (Obj.obj arguments)))


