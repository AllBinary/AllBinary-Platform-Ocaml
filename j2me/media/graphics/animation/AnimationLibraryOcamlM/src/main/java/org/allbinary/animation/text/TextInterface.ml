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
(* package org.allbinary.animation.text *)

open Allbinary_java [@@warning "-33"]

class virtual textInterface =
  object
    method virtual setTextWithOnMeasure : 'any2 . string * 'any2 -> unit
    method virtual getText : unit -> string
    method virtual setText : string -> unit
    method virtual getFontHeight : unit -> int
    method virtual getWidth : unit -> int
  end


