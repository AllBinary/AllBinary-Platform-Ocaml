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
(* package org.allbinary.business.user.commerce.money.payment *)

open Allbinary_java [@@warning "-33"]

class virtual paymentInterface =
  object
    method virtual setName : string -> unit
    method virtual setType : string -> unit
    method virtual setExpiration : string -> unit
    method virtual setNumber : string -> unit
    method virtual getId : unit -> string
    method virtual getName : unit -> string
    method virtual getType : unit -> string
    method virtual getExpiration : unit -> string
    method virtual getEncryption : unit -> string
    method virtual getNumber : unit -> string
    method virtual getLastFour : unit -> string
    method virtual isDefault : unit -> bool
  end


