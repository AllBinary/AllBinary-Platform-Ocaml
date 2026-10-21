(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]

class virtual rTSInterface =
  object
    method virtual isSelfUpgradeable : unit -> bool
    method virtual isCompleted : unit -> bool
    method virtual getPercentComplete : unit -> int
    method virtual getLevel : unit -> int
    method virtual getMaxLevel : unit -> int
    method virtual getCost : unit -> int
    method virtual downgrade : unit -> unit
    method virtual getDowngradeCost : unit -> int
    method virtual isDowngradeable : unit -> bool
    method virtual getUpgradeCost : unit -> int
    method virtual isUpgradeable : unit -> bool
    method virtual upgrade : unit -> unit
  end


