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
(* package org.allbinary.logic.system.security.licensing *)

open Allbinary_java [@@warning "-33"]

class virtual thirdPartyInApplicationPurchaseInterface =
  object
    method virtual isPurchased : 'any1 . 'any1 -> bool
    method virtual onCreate : 'any1 'any2 . 'any1 * 'any2 -> unit
    method virtual onDestroy : unit -> unit
    method virtual onStart : unit -> unit
    method virtual onActivityResult : 'any3 . int * int * 'any3 -> unit
    method virtual onSaveInstanceState : 'any1 . 'any1 -> unit
    method virtual onStop : unit -> unit
    method virtual requestPurchase : 'any1 . 'any1 -> unit
    method virtual requestReceipts : unit -> unit
    method virtual add : 'any1 . 'any1 -> unit
    method virtual getUserName : unit -> string
    method virtual isEnabled : unit -> bool
  end


