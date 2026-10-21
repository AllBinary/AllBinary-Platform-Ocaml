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

class virtual keyInterface =
  object
    method virtual keyPressed : int -> unit
    method virtual keyReleased : int -> unit
    method virtual keyPressedByDevice : int * int -> unit
    method virtual keyReleasedByDevice : int * int -> unit
  end


