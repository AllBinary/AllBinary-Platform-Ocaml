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
(* package org.allbinary.input.motion.button *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.GameKey *)
(* import org.allbinary.game.input.GameKeyEventSourceInterface *)
(* import org.allbinary.game.input.Input *)
(* import org.allbinary.game.input.InputFactory *)
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.game.input.event.GameKeyEventFactory *)
(* import org.allbinary.game.input.mapping.InputToGameKeyMapping *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class touchButtonInput ((id : int), (name : string)) =
  object (self)
    inherit Input.input (id, name)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable gameKeyEventFactory : GameKeyEventFactory.gameKeyEventFactory = (Obj.magic 0)
    method gameKeyEventFactory = gameKeyEventFactory
    method set_gameKeyEventFactory value' = gameKeyEventFactory <- value'
    val mutable tOUCH_BUTTON_SOURCE_ID : int = 0
    method tOUCH_BUTTON_SOURCE_ID = tOUCH_BUTTON_SOURCE_ID
    method set_tOUCH_BUTTON_SOURCE_ID value' = tOUCH_BUTTON_SOURCE_ID <- value'
    val mutable gameKeyEvent : GameKeyEvent.gameKeyEvent = (Obj.magic 0)
    method gameKeyEvent = gameKeyEvent
    method set_gameKeyEvent value' = gameKeyEvent <- value'
    
    

    method update : 'any1. 'any1 -> unit = fun (inputToGameKeyMapping) ->
        let inputToGameKeyMapping = Obj.repr inputToGameKeyMapping in
        begin
        (try
            let gameKey : GameKey.gameKey ref = ref ((((Obj.magic inputToGameKeyMapping)#getInstance ((self#getId ()))) :> GameKey.gameKey)) in ();
            gameKeyEvent <- (gameKeyEventFactory#getInstanceForInput (self, !gameKey))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#uPDATE, e))
        end)
        end [@@warning "-7-20"]
    

    method getSourceId () : int =
        begin
        tOUCH_BUTTON_SOURCE_ID
        end [@@warning "-7"]
    

    method getGameKeyEvent () : GameKeyEvent.gameKeyEvent =
        begin
        (gameKeyEvent :> GameKeyEvent.gameKeyEvent)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        gameKeyEventFactory <- ((GameKeyEventFactory.getInstance ()) :> GameKeyEventFactory.gameKeyEventFactory);
        tOUCH_BUTTON_SOURCE_ID <- gameKeyEventFactory#tOUCH_BUTTON_SOURCE_ID;
        gameKeyEvent <- ((GameKeyEvent.get_nONE ()) :> GameKeyEvent.gameKeyEvent);
        ();
        (* super(...) is the inherit clause *) ();
        let inputFactory : InputFactory.inputFactory ref = ref (((InputFactory.getInstance ()) :> InputFactory.inputFactory)) in ();
        ignore (!inputFactory#add ((self#getId ()), self))
      end
  end [@@warning "-20"]
let () = java_register_constructor "TouchButtonInput" (fun arguments -> Obj.repr (new touchButtonInput (Obj.obj arguments)))


