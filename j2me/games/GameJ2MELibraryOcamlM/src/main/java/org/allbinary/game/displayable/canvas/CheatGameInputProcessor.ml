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
(* package org.allbinary.game.displayable.canvas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.GameKeyFactory *)
(* import org.allbinary.game.input.PlayerGameInput *)
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.game.input.event.GameKeyEventUtil *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.layer.special.SpecialGameInputFactory *)
(* import org.allbinary.game.layer.special.SpecialGameInputInterface *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

let inputProcessor : SpecialGameInputInterface.specialGameInputInterface ref = ref (((SpecialGameInputFactory.get_nO_SPECIAL_GAME_INPUT ()) :> SpecialGameInputInterface.specialGameInputInterface))
let get_inputProcessor () = !inputProcessor
let set_inputProcessor value' = inputProcessor := value'
let () = java_register_static "CheatGameInputProcessor.get_inputProcessor" (fun _ -> Obj.repr (get_inputProcessor ()))
class cheatGameInputProcessor (gameCanvas_arg) =
  object (self)
    inherit PlayerGameInput.playerGameInput ((new BasicArrayListD.basicArrayListD ()), (new BasicArrayListD.basicArrayListD ()), (-1))
    val mutable pROCESS_GAME : string = ""
    method pROCESS_GAME = pROCESS_GAME
    method set_pROCESS_GAME value' = pROCESS_GAME <- value'
    val mutable gameCanvas : Obj.t = Obj.repr 0
    method gameCanvas : 'r. 'r = Obj.magic gameCanvas
    method set_gameCanvas : 'v. 'v -> unit = fun value' -> gameCanvas <- Obj.repr value'
    val mutable gameKeyFactory : GameKeyFactory.gameKeyFactory = (Obj.magic 0)
    method gameKeyFactory = gameKeyFactory
    method set_gameKeyFactory value' = gameKeyFactory <- value'
    
    

    method update () : unit =
        begin
        (try
            let gameLayerManager : AllBinaryGameLayerManager.allBinaryGameLayerManager ref = ref ((((Obj.magic gameCanvas)#getLayerManager ()) :> AllBinaryGameLayerManager.allBinaryGameLayerManager)) in ();
            let list : BasicArrayList.basicArrayList ref = ref (((self#getGameKeyEventList ()) :> BasicArrayList.basicArrayList)) in ();
            let size : int ref = ref ((!list#size ())) in ();
            for index = 0 to !size - 1 do
                let anyType : Obj.t ref = ref ((Obj.repr !list#objectArray.(index))) in ();
                let key : int ref = ref ((GameKeyEventUtil.getKey (!anyType))) in ();
                if (!key = (gameKeyFactory#lEVEL_DOWN#getId ())) then begin
                    ignore (!inputProcessor#strafeLeft ());
                    raise Java_break
                end else if (!key = (gameKeyFactory#lEVEL_UP#getId ())) then begin
                    ignore (!inputProcessor#strafeRight ());
                    raise Java_break
                end;
                if (!key = (gameKeyFactory#lEFT#getId ())) then begin
                    ignore (!inputProcessor#left ());
                    raise Java_break
                end else if (!key = (gameKeyFactory#rIGHT#getId ())) then begin
                    ignore (!inputProcessor#right ());
                    raise Java_break
                end else if (!key = (gameKeyFactory#uP#getId ())) then begin
                    ignore (!inputProcessor#up ());
                    raise Java_break
                end else if (!key = (gameKeyFactory#dOWN#getId ())) then begin
                    ignore (!inputProcessor#down ());
                    raise Java_break
                end else if (!key = (gameKeyFactory#kEY_NUM1#getId ())) then begin
                    ignore (!inputProcessor#special1 (!gameLayerManager, (GameKeyEvent.get_nONE ())));
                    raise Java_break
                end else if (!key = (gameKeyFactory#kEY_NUM3#getId ())) then begin
                    ignore (!inputProcessor#special2 (!gameLayerManager, (GameKeyEvent.get_nONE ())));
                    raise Java_break
                end
            done;
            ignore (!list#clear ())
        with e -> begin
            ignore (logUtil#put (commonStrings#eXCEPTION, self, commonStrings#uPDATE, e))
        end)
        end [@@warning "-7"]

    initializer
      begin
        pROCESS_GAME <- "processGame";
        ();
        gameKeyFactory <- ((GameKeyFactory.getInstance ()) :> GameKeyFactory.gameKeyFactory);
        ();
        (* super(...) is the inherit clause *) ();
        gameCanvas <- Obj.repr (gameCanvas_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "CheatGameInputProcessor" (fun arguments -> Obj.repr (new cheatGameInputProcessor (Obj.obj arguments)))


