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
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.logic.string.StringUtil *)

class nullPlayerGameInputComposite () =
  object
    

    method getName () : string =
        begin
        (StringUtil.getInstance ())#eMPTY_STRING
        end
    

    method processInput : 'any1. 'any1 -> unit = fun (_layerManager) ->
        begin
        ()
        end [@@warning "-20"]
    

    method initInputProcessors () : unit =
        begin
        ()
        end
    

    method getPlayerGameInput () : PlayerGameInput.playerGameInput =
        begin
        ((NoPlayerGameInput.getInstance ()) :> PlayerGameInput.playerGameInput)
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullPlayerGameInputComposite" (fun arguments -> Obj.repr (new nullPlayerGameInputComposite (Obj.obj arguments)))

let nULL_PLAYER_GAME_INPUT_COMPOSITE = (new nullPlayerGameInputComposite ())
let get_nULL_PLAYER_GAME_INPUT_COMPOSITE () = nULL_PLAYER_GAME_INPUT_COMPOSITE
let () = java_register_static "NullPlayerGameInputComposite.get_nULL_PLAYER_GAME_INPUT_COMPOSITE" (fun _ -> Obj.repr (get_nULL_PLAYER_GAME_INPUT_COMPOSITE ()))


