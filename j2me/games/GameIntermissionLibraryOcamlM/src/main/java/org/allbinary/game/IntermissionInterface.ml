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
(* import org.allbinary.time.TimeDelayHelper *)

class virtual intermissionInterface =
  object
    method virtual getTimeDelayHelper : unit -> TimeDelayHelper.timeDelayHelper
    method virtual isEnabled : unit -> bool
    method virtual setEnabled : bool -> unit
    method virtual setListener : 'any1 . 'any1 -> unit
  end


