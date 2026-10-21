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
(* package org.allbinary.logic.communication.smtp.configuration.user.event *)

open Allbinary_java [@@warning "-33"]

class virtual userEmailEventConfigurationInterface =
  object
    method virtual getName : unit -> string
    method virtual setName : string -> unit
    method virtual getEventListenerClassPath : unit -> string
    method virtual setEventListenerClassPath : string -> unit
    method virtual log : unit -> string
  end


