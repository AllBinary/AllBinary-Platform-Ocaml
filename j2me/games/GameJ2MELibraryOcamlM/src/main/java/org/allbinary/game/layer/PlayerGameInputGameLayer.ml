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
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.input.PlayerGameInput *)
(* import org.allbinary.game.input.PlayerGameInputCompositeInterface *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.displayable.CanvasStrings *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.view.StaticViewPosition *)

class playerGameInputGameLayer ((playerInputId : int)) =
  object (self)
    inherit AllBinaryGameLayer.allBinaryGameLayer ((StringUtil.getInstance ())#eMPTY_STRING, (Obj.obj (java_new "Rectangle" (Obj.repr ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#zERO_ZERO, 0, 0)))), (new StaticViewPosition.staticViewPosition (0, 0, 0)))
    val mutable playerGameInput : PlayerGameInput.playerGameInput = (Obj.magic 0)
    method playerGameInput = playerGameInput
    method set_playerGameInput value' = playerGameInput <- value'
    
    

    method getPlayerGameInput () : PlayerGameInput.playerGameInput =
        begin
        (playerGameInput :> PlayerGameInput.playerGameInput)
        end [@@warning "-7"]
    

    method initInputProcessors () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method processInput : 'any1. 'any1 -> unit = fun (_myManager) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        playerGameInput <- (new PlayerGameInput.playerGameInput ((self#getGameKeyEventList ()), (new BasicArrayListD.basicArrayListD ()), playerInputId));
        let canvasStrings : CanvasStrings.canvasStrings ref = ref (((CanvasStrings.getInstance ()) :> CanvasStrings.canvasStrings)) in ();
        ignore ((self#logUtil)#putF ("Danger Danger Danger: Should Not Be Called Except For Testing Input", self, !canvasStrings#pAINT))
      end
  end
let () = java_register_constructor "PlayerGameInputGameLayer" (fun arguments -> Obj.repr (new playerGameInputGameLayer (Obj.obj arguments)))


