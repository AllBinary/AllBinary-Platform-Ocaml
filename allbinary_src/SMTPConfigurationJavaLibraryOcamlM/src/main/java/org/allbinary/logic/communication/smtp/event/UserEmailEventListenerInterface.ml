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
(* package org.allbinary.logic.communication.smtp.event *)

open Allbinary_java [@@warning "-33"]
(* import java.util.EventListener *)

class virtual userEmailEventListenerInterface =
  object
    method virtual onEmailSendRequest : 'any1 . 'any1 -> unit
  end


