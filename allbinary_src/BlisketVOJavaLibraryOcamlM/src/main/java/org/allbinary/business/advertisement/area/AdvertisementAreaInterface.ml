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
(* package org.allbinary.business.advertisement.area *)

open Allbinary_java [@@warning "-33"]

class virtual advertisementAreaInterface =
  object
    method virtual getName : unit -> string
    method virtual getStoreName : unit -> string
    method virtual getDescription : unit -> string
    method virtual getConstraints : unit -> AdvertisementAreaConstraintsInterface.advertisementAreaConstraintsInterface
    method virtual getCampaign : unit -> string
    method virtual setName : string -> unit
    method virtual setStoreName : string -> unit
    method virtual setDescription : string -> unit
    method virtual setConstraints : 'any1 . 'any1 -> unit
    method virtual setCampaign : string -> unit
  end


