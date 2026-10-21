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
(* package org.allbinary.business.advertisement *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.business.advertisement.image.AdvertisementImageInterface *)
(* import org.allbinary.business.advertisement.product.AdvertisementProductInterface *)
(* import org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface *)
(* import org.allbinary.business.user.commerce.money.Money *)
(* import org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface *)

class virtual advertisementInterface =
  object
    method virtual getArtist : unit -> string
    method virtual getArtistLink : unit -> string
    method virtual getTitle : unit -> string
    method virtual getDateAdded : unit -> string
    method virtual getDirectory : unit -> string
    method virtual getFramedLink : unit -> string
    method virtual getListPrice : unit -> Money.money
    method virtual getOurPrice : unit -> Money.money
    method virtual getRank : unit -> int
    method virtual getImage : unit -> AdvertisementImageInterface.advertisementImageInterface
    method virtual getProduct : unit -> AdvertisementProductInterface.advertisementProductInterface
    method virtual getThumbnail : unit -> AdvertisementThumbnailInterface.advertisementThumbnailInterface
    method virtual getDisplayInBrowserContraintsInterface : unit -> DisplayInBrowserContraintsInterface.displayInBrowserContraintsInterface
    method virtual setArtist : string -> unit
    method virtual setArtistLink : string -> unit
    method virtual setTitle : string -> unit
    method virtual setDateAdded : string -> unit
    method virtual setDirectory : string -> unit
    method virtual setFramedLink : string -> unit
    method virtual setRank : int -> unit
    method virtual setImage : 'any1 . 'any1 -> unit
    method virtual setProduct : 'any1 . 'any1 -> unit
    method virtual setThumbnail : 'any1 . 'any1 -> unit
  end


