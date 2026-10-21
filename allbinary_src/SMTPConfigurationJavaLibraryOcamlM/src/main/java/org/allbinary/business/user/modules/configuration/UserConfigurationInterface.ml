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
(* package org.allbinary.business.user.modules.configuration *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.business.time.created.TimeCreated *)
(* import org.allbinary.business.time.modified.TimeLastModified *)
(* import org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface *)

class virtual userConfigurationInterface =
  object
    method virtual getUserEmailConfigurationInterface : 'return . unit -> 'return
    method virtual setUserEmailConfigurationInterface : 'any1 . 'any1 -> unit
    method virtual getTimeCreated : unit -> TimeCreated.timeCreated
    method virtual getTimeLastModified : unit -> TimeLastModified.timeLastModified
    method virtual setTimeCreated : 'any1 . 'any1 -> unit
    method virtual setTimeLastModified : 'any1 . 'any1 -> unit
  end


