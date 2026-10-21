(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.score *)

open Allbinary_java [@@warning "-33"]

class virtual highScoresHelperBaseInterface =
  object
    inherit HighScoresResultsListener.highScoresResultsListener
    method virtual setSelectedHighScores : 'any1 . 'any1 -> unit
    method virtual getHighScoresArray : 'return . unit -> 'return
    method virtual getSelectedHighScores : 'return . unit -> 'return
  end


