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
(* package org.allbinary.logic.system.os *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.java.character.CharacterSet *)

class virtual operatingSystemInterface =
  object
    method virtual getName : unit -> string
    method virtual getVersion : unit -> string
    method virtual getArch : unit -> string
    method virtual getCharacterSet : unit -> CharacterSet.characterSet
    method virtual isOverScan : unit -> bool
    method virtual getOverScanXPercent : unit -> int
    method virtual getOverScanYPercent : unit -> int
    method virtual isScalable : unit -> bool
    method virtual isAutoHide : unit -> bool
    method virtual toString : unit -> string
  end


