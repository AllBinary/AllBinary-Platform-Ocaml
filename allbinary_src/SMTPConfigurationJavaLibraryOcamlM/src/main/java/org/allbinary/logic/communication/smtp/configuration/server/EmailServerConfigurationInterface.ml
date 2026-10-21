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
(* package org.allbinary.logic.communication.smtp.configuration.server *)

open Allbinary_java [@@warning "-33"]

class virtual emailServerConfigurationInterface =
  object
    method virtual setSmtpServer : string -> unit
    method virtual getSmtpServer : unit -> string
    method virtual getAccountName : unit -> string
    method virtual setAccountName : string -> unit
    method virtual getPassword : unit -> string
    method virtual setPassword : string -> unit
    method virtual log : unit -> unit
    method virtual toString : unit -> string
  end


