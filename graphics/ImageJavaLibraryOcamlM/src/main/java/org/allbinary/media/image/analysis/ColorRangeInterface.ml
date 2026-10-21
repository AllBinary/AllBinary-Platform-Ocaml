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
(* package org.allbinary.media.image.analysis *)

open Allbinary_java [@@warning "-33"]
(* import java.awt *)

class virtual colorRangeInterface =
  object
    method virtual getMinRed : unit -> int
    method virtual setMinRed : int -> unit
    method virtual getMaxRed : unit -> int
    method virtual setMaxRed : int -> unit
    method virtual getMinGreen : unit -> int
    method virtual setMinGreen : int -> unit
    method virtual getMaxGreen : unit -> int
    method virtual setMaxGreen : int -> unit
    method virtual getMinBlue : unit -> int
    method virtual setMinBlue : int -> unit
    method virtual getMaxBlue : unit -> int
    method virtual setMaxBlue : int -> unit
    method virtual isInRange : 'any1 . 'any1 -> bool
  end


