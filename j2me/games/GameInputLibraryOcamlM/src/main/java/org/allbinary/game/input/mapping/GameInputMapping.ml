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
(* package org.allbinary.game.input.mapping *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.GameKey *)
(* import org.allbinary.logic.string.StringUtil *)

class gameInputMapping ((name_arg : string), (gameKey_arg : GameKey.gameKey)) =
  object (self)
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable gameKey : GameKey.gameKey = (Obj.magic 0)
    method gameKey = gameKey
    method set_gameKey value' = gameKey <- value'
    
    

    method setGameKey : 'any1. 'any1 -> unit = fun (gameKey_arg) ->
        let gameKey_arg = Obj.repr gameKey_arg in
        begin
        gameKey <- (Obj.magic gameKey_arg)
        end [@@warning "-20"]
    

    method getGameKey () : GameKey.gameKey =
        begin
        (gameKey :> GameKey.gameKey)
        end
    

    method setName ((name_arg : string)) : unit =
        begin
        name <- name_arg
        end
    

    method getName () : string =
        begin
        name
        end

    initializer
      begin
        name <- (StringUtil.getInstance ())#eMPTY_STRING;
        gameKey <- ((GameKey.get_nULL_GAME_KEY ()) :> GameKey.gameKey);
        ();
        (self#setName (name_arg));
        (self#setGameKey (gameKey_arg))
      end
  end
let () = java_register_constructor "GameInputMapping" (fun arguments -> Obj.repr (new gameInputMapping (Obj.obj arguments)))


