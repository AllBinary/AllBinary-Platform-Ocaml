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
(* package org.allbinary.game.score *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.GameInfo *)

class virtual highScoresFactoryInterface =
  object
    method virtual fetchHighScores : 'any1 'any2 . 'any1 * 'any2 -> unit
    method virtual fetchHighScoresPreload : 'any1 'any2 . 'any1 * 'any2 * bool -> unit
    method virtual createHighScoresHelper : unit -> HighScoresHelperBaseInterface.highScoresHelperBaseInterface
  end


