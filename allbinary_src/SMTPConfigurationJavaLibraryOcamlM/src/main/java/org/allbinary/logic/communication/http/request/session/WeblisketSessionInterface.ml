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
(* package org.allbinary.logic.communication.http.request.session *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.business.user.commerce.inventory.order.OrderInterface *)
(* import org.allbinary.business.user.role.UserRole *)

class virtual weblisketSessionInterface =
  object
    method virtual clear : unit -> unit
    method virtual getAttempts : unit -> int
    method virtual getAuthentication : unit -> string
    method virtual getCreationTime : unit -> int
    method virtual getId : unit -> string
    method virtual getLastAccessedTime : unit -> int
    method virtual getOrder : unit -> OrderInterface.orderInterface
    method virtual getPassword : unit -> string
    method virtual getPaymentMethod : unit -> string
    method virtual getRole : 'return . unit -> 'return
    method virtual getStoreName : unit -> string
    method virtual getTimeout : unit -> string
    method virtual getUserName : unit -> string
    method virtual getWebAppPath : unit -> string
    method virtual removeBasket : unit -> unit
    method virtual setAttempts : int -> unit
    method virtual setAuthenticated : unit -> unit
    (* Java overload setAuthenticated(BOOLEAN) is not converted: OCaml has one method per name *)
    method virtual setPassword : string -> unit
    method virtual setPaymentMethod : string -> unit
    method virtual setRole : 'any1 . 'any1 -> unit
    method virtual setStoreName : string -> unit
    method virtual setTimeout : string -> unit
    method virtual setUserName : string -> unit
  end


