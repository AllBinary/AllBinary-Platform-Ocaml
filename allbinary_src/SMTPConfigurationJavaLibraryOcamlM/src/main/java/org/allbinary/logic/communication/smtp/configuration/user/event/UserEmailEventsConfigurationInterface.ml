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
(* import java.util.HashMap *)
(* import org.allbinary.business.user.UserInterface *)
(* import org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface *)
(* import org.allbinary.logic.communication.smtp.event.UserEmailEventNameData *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)

class virtual userEmailEventsConfigurationInterface =
  object
    method virtual getEventConfigurationHashMap : unit -> java_hash_map
    method virtual addUserEmailEventConfiguration : 'any1 . 'any1 -> unit
    method virtual getEventListener : 'any1 'any2 'any3 . 'any1 * 'any2 * 'any3 -> UserEmailEventListenerInterface.userEmailEventListenerInterface
  end


