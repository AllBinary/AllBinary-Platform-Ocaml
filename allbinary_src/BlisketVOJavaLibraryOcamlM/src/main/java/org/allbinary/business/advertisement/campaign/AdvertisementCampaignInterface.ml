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
(* import org.allbinary.business.advertisement.AdvertisementsInterface *)
(* import org.allbinary.business.advertisement.search.AdvertisementSearchInterface *)

class virtual advertisementCampaignInterface =
  object
    method virtual getName : unit -> string
    method virtual getComponent : unit -> Obj.t
    method virtual setName : string -> unit
    method virtual setComponentName : string -> unit
    method virtual search : 'any1 . 'any1 -> AdvertisementsInterface.advertisementsInterface
  end


