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

class advertisementSearchData () =
  object
    val mutable tITLE : string = ""
    method tITLE = tITLE
    method set_tITLE value' = tITLE <- value'
    val mutable pRICE : string = ""
    method pRICE = pRICE
    method set_pRICE value' = pRICE <- value'
    val mutable rELEVANCY : string = ""
    method rELEVANCY = rELEVANCY
    method set_rELEVANCY value' = rELEVANCY <- value'
    val mutable pOPULARITY : string = ""
    method pOPULARITY = pOPULARITY
    method set_pOPULARITY value' = pOPULARITY <- value'
    

    initializer
      begin
        tITLE <- "AFFILIATE_TITLE";
        pRICE <- "AFFILIATE_PRICE";
        rELEVANCY <- "AFFILIATE_RELEVANCY";
        pOPULARITY <- "AFFILIATE_POPULARITY";
        ();
        ()
      end
  end
let () = java_register_constructor "AdvertisementSearchData" (fun arguments -> Obj.repr (new advertisementSearchData (Obj.obj arguments)))

let instance = (new advertisementSearchData ())
let get_instance () = instance
let () = java_register_static "AdvertisementSearchData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AdvertisementSearchData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


