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
(* package org.allbinary.business.advertisement.campaign *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.business.advertisement.AdvertisementInterface *)

class virtual advertisementCampaignsInterface =
  object
    method virtual add : 'any1 . 'any1 -> unit
    method virtual get : int -> AdvertisementInterface.advertisementInterface
    method virtual size : unit -> int
    method virtual isEnabled : unit -> bool
  end


