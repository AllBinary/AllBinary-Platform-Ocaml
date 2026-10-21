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


let getInstanceMaxLevel : 'any1. 'any1 * int -> GameInfo.gameInfo = fun (gameInfo, (maxLevel : int)) ->
        let gameInfo = Obj.repr gameInfo in
        begin
        ((new GameInfo.gameInfo (((Obj.magic gameInfo)#getGameType ()), ((Obj.magic gameInfo)#getGameMode ()), ((Obj.magic gameInfo)#getPlayerType ()), maxLevel, ((Obj.magic gameInfo)#getCurrentLevel ()))) :> GameInfo.gameInfo)
        end [@@warning "-20"]

and getInstance : 'any1. 'any1 -> GameInfo.gameInfo = fun (gameInfo) ->
        let gameInfo = Obj.repr gameInfo in
        begin
        ((new GameInfo.gameInfo (((Obj.magic gameInfo)#getGameType ()), ((Obj.magic gameInfo)#getGameMode ()), ((Obj.magic gameInfo)#getPlayerType ()), ((Obj.magic gameInfo)#getHighestLevel ()), ((Obj.magic gameInfo)#getCurrentLevel ()))) :> GameInfo.gameInfo)
        end [@@warning "-20"]

let () = java_register_static "GameInfoCopyFactory.getInstanceMaxLevel" (fun arguments -> Obj.repr (getInstanceMaxLevel (Obj.obj arguments)))
let () = java_register_static "GameInfoCopyFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class gameInfoCopyFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "GameInfoCopyFactory" (fun arguments -> Obj.repr (new gameInfoCopyFactory (Obj.obj arguments)))


