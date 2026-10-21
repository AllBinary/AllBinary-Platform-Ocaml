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
(* package org.allbinary.logic.communication.ftp.configuration *)

open Allbinary_java [@@warning "-33"]

class virtual ftpConfigurationInterface =
  object
    method virtual getServer : unit -> string
    method virtual getPath : unit -> string
    method virtual getUserName : unit -> string
    method virtual getPassword : unit -> string
    method virtual setServer : string -> unit
    method virtual setPath : string -> unit
    method virtual setUserName : string -> unit
    method virtual setPassword : string -> unit
  end


