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
(* package org.allbinary.business.init.db *)

open Allbinary_java [@@warning "-33"]

class virtual databaseConnectionInfoInterface =
  object
    method virtual getUrl : unit -> string
    method virtual getJdbcDriver : unit -> string
    method virtual getName : unit -> string
    method virtual getUserName : unit -> string
    method virtual getPassword : unit -> string
    method virtual getHost : unit -> string
    method virtual getSchema : unit -> string
    method virtual getServer : unit -> string
    method virtual getPort : unit -> string
    method virtual setJdbcDriver : string -> unit
    method virtual setName : string -> unit
    method virtual setUserName : string -> unit
    method virtual setPassword : string -> unit
    method virtual setSchema : string -> unit
    method virtual setServer : string -> unit
    method virtual setPort : string -> unit
    method virtual getUserNameKey : unit -> string
    method virtual getPasswordKey : unit -> string
  end


