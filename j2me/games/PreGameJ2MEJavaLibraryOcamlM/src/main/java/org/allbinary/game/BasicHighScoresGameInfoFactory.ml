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

class basicHighScoresGameInfoFactory () =
  object
    val mutable mULTI_PLAYER_SERVER : GameInfo.gameInfo = (Obj.magic 0)
    method mULTI_PLAYER_SERVER = mULTI_PLAYER_SERVER
    method set_mULTI_PLAYER_SERVER value' = mULTI_PLAYER_SERVER <- value'
    val mutable sINGLE_PLAYER_SERVER : GameInfo.gameInfo = (Obj.magic 0)
    method sINGLE_PLAYER_SERVER = sINGLE_PLAYER_SERVER
    method set_sINGLE_PLAYER_SERVER value' = sINGLE_PLAYER_SERVER <- value'

    initializer
      begin
        mULTI_PLAYER_SERVER <- ((new GameInfo.gameInfo ((GameTypeFactory.getInstance ())#mULTI_PLAYER, (GameMode.get_sERVER ()), (PlayerTypesFactory.getInstance ())#pLAYER_TYPE_ONE, 0, 0)) :> GameInfo.gameInfo);
        sINGLE_PLAYER_SERVER <- ((new GameInfo.gameInfo ((GameTypeFactory.getInstance ())#sINGLE_PLAYER, (GameMode.get_sERVER ()), (PlayerTypesFactory.getInstance ())#pLAYER_TYPE_ONE, 0, 0)) :> GameInfo.gameInfo);
        ()
      end
  end
let () = java_register_constructor "BasicHighScoresGameInfoFactory" (fun arguments -> Obj.repr (new basicHighScoresGameInfoFactory (Obj.obj arguments)))

let sINGLETON = (new basicHighScoresGameInfoFactory ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "BasicHighScoresGameInfoFactory.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "BasicHighScoresGameInfoFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


