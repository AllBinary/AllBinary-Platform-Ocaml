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

class virtual advertisementsInterface =
  object
    method virtual add : 'any1 . 'any1 -> unit
    method virtual get : int -> AdvertisementInterface.advertisementInterface
    method virtual getCurrentPageNum : unit -> int
    method virtual getErrorDescription : unit -> string
    method virtual getErrorNum : unit -> string
    method virtual getNumberOfPosters : unit -> int
    method virtual getNumberOfProductsInPage : unit -> int
    method virtual getStatusCode : unit -> int
    method virtual getTotalNumberOfProducts : unit -> int
    method virtual isSearchValid : unit -> bool
    method virtual setCurrentPageNum : int -> unit
    method virtual setErrorDescription : string -> unit
    method virtual setErrorNum : string -> unit
    method virtual setNumberOfProductsInPage : int -> unit
    method virtual setStatusCode : int -> unit
    method virtual setTotalNumberOfProducts : int -> unit
    method virtual toString : unit -> string
  end


