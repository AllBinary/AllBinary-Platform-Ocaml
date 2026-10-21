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
(* package org.allbinary.logic.util.event.handler *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventListenerInterface *)

class virtual basicEventHandlerInterface =
  object
    method virtual addListenerInterface : 'any1 . 'any1 -> unit
    method virtual fireEvent : 'any1 . 'any1 -> unit
    method virtual removeAllListeners : unit -> unit
    method virtual removeListener : 'any1 . 'any1 -> unit
  end


