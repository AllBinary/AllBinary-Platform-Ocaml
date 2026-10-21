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
(* package org.allbinary.business.advertisement.search *)

open Allbinary_java [@@warning "-33"]
(* import java.util.HashMap *)
(* import org.allbinary.business.advertisement.search.category.AdvertisementCategoryInterface *)
(* import org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface *)
(* import org.allbinary.logic.control.contraints.price.PriceConstraintInterface *)
(* import org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface *)

class virtual advertisementSearchInterface =
  object
    method virtual getWebSite : unit -> AdvertisementWebsiteInterface.advertisementWebsiteInterface
    method virtual getCategory : unit -> AdvertisementCategoryInterface.advertisementCategoryInterface
    method virtual getSizeConstraints : unit -> TwoDimensionalConstraintInterface.twoDimensionalConstraintInterface
    method virtual getPricingConstraints : unit -> PriceConstraintInterface.priceConstraintInterface
    method virtual getPageNumber : unit -> int
    method virtual getProductsPerPage : unit -> int
    method virtual getSearchParams : unit -> java_hash_map
    method virtual setCategory : 'any1 . 'any1 -> unit
    method virtual setSizeConstraints : 'any1 . 'any1 -> unit
    method virtual setPricingConstraints : 'any1 . 'any1 -> unit
    method virtual setPageNumber : int -> unit
    method virtual setProductsPerPage : int -> unit
    method virtual setSearchParams : java_hash_map -> unit
  end


