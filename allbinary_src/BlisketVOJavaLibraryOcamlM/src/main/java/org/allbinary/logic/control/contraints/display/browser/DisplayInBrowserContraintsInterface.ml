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
(* package org.allbinary.logic.control.contraints.display.browser *)

open Allbinary_java [@@warning "-33"]

class virtual displayInBrowserContraintsInterface =
  object
    method virtual isMountable : unit -> bool
    method virtual isFrameable : unit -> bool
    method virtual isQuickFrameable : unit -> bool
    method virtual setMountable : bool -> unit
    method virtual setFrameable : bool -> unit
    method virtual setQuickFrameable : bool -> unit
    method virtual setMountedLink : string -> unit
    method virtual getMountedLink : unit -> string
  end


