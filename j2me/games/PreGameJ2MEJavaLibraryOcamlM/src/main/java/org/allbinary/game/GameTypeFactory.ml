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
(* package org.allbinary.game *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.string.StringUtil *)

class gameTypeFactory () =
  object
    val mutable nULL_GAME_TYPE_ARRAY : GameType.gameType array = (Obj.magic 0)
    method nULL_GAME_TYPE_ARRAY = nULL_GAME_TYPE_ARRAY
    method set_nULL_GAME_TYPE_ARRAY value' = nULL_GAME_TYPE_ARRAY <- value'
    val mutable nONE : GameType.gameType = (Obj.magic 0)
    method nONE = nONE
    method set_nONE value' = nONE <- value'
    val mutable sINGLE_PLAYER : GameType.gameType = (Obj.magic 0)
    method sINGLE_PLAYER = sINGLE_PLAYER
    method set_sINGLE_PLAYER value' = sINGLE_PLAYER <- value'
    val mutable mULTI_PLAYER : GameType.gameType = (Obj.magic 0)
    method mULTI_PLAYER = mULTI_PLAYER
    method set_mULTI_PLAYER value' = mULTI_PLAYER <- value'
    val mutable bOT : GameType.gameType = (Obj.magic 0)
    method bOT = bOT
    method set_bOT value' = bOT <- value'

    initializer
      begin
        nULL_GAME_TYPE_ARRAY <- (Array.make (0) (Obj.magic 0));
        nONE <- ((new GameType.gameType ((StringUtil.getInstance ())#nULL_STRING)) :> GameType.gameType);
        sINGLE_PLAYER <- ((new GameType.gameType ("Single Player")) :> GameType.gameType);
        mULTI_PLAYER <- ((new GameType.gameType ("Multi Player")) :> GameType.gameType);
        bOT <- ((new GameType.gameType ("Artificial Player")) :> GameType.gameType);
        ()
      end
  end
let () = java_register_constructor "GameTypeFactory" (fun arguments -> Obj.repr (new gameTypeFactory (Obj.obj arguments)))

let instance = (new gameTypeFactory ())
let get_instance () = instance
let () = java_register_static "GameTypeFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GameTypeFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


