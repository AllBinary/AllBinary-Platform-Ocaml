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
(* package org.allbinary.business.user.commerce.inventory.basket *)

open Allbinary_java [@@warning "-33"]
(* import java.util.HashMap *)
(* import java.util.Set *)
(* import org.allbinary.business.user.commerce.money.Money *)
(* import org.allbinary.business.user.commerce.money.MoneyException *)

class virtual basketInterface =
  object
    method virtual addItem : string * string -> unit
    method virtual removeItem : string -> unit
    method virtual adjustItem : string * string -> unit
    method virtual getTotalWeight : unit -> string
    method virtual getNumberOfItems : unit -> int
    method virtual getIds : 'return . unit -> 'return
    method virtual getItems : unit -> java_hash_map
    method virtual getNumberOf : string -> int
    method virtual getSubTotal : unit -> Money.money
  end


