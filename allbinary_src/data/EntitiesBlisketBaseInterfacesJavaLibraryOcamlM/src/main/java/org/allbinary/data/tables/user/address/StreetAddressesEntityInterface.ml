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
(* package org.allbinary.data.tables.user.address *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.business.user.address.StreetAddress *)
(* import org.allbinary.data.tables.BasicDataTableInterface *)

class virtual streetAddressesEntityInterface =
  object
    inherit BasicDataTableInterface.basicDataTableInterface
    method virtual remove : int -> unit
    method virtual add : 'any1 . 'any1 -> unit
    method virtual update : 'any1 . 'any1 -> unit
    method virtual getLastId : unit -> string
    method virtual getDefault : unit -> StreetAddress.streetAddress
    method virtual setDefault : string -> unit
  end


