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
(* package org.allbinary.canvas *)

open Allbinary_java [@@warning "-33"]

class virtual fullScreenInterface =
  object
    method virtual isFullScreenMode : unit -> bool
    method virtual setFullScreenMode : bool -> unit
    method virtual stopWaiting : unit -> unit
    method virtual waitOnNotify : int -> unit
  end


