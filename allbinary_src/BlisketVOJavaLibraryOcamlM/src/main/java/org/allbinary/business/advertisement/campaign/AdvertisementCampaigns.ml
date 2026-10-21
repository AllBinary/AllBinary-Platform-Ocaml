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
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.advertisement.AdvertisementInterface *)
(* import org.allbinary.business.advertisement.AdvertisementsInterface *)
(* import org.allbinary.business.advertisement.search.AdvertisementSearchInterface *)

class advertisementCampaigns ((_vector : BasicArrayList.basicArrayList)) =
  object
    val mutable advertisementsVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method advertisementsVector = advertisementsVector
    method set_advertisementsVector value' = advertisementsVector <- value'
    
    

    method add : 'any1. 'any1 -> unit = fun (advertisementInterface) ->
        let advertisementInterface = Obj.repr advertisementInterface in
        begin
        ignore (advertisementsVector#add ((Obj.magic advertisementInterface)))
        end [@@warning "-20"]
    

    method get ((index : int)) : AdvertisementInterface.advertisementInterface =
        begin
        ((Obj.magic (advertisementsVector#get (index))) :> AdvertisementInterface.advertisementInterface)
        end
    

    method size () : int =
        begin
        (advertisementsVector#size ())
        end
    

    method isEnabled () : bool =
        begin
        true
        end
    

    method search : 'any1. 'any1 -> AdvertisementsInterface.advertisementsInterface = fun (_advertisementSearchInterface) ->
        begin
        ((Obj.magic 0) :> AdvertisementsInterface.advertisementsInterface)
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        advertisementsVector <- advertisementsVector
      end
  end
let () = java_register_constructor "AdvertisementCampaigns" (fun arguments -> Obj.repr (new advertisementCampaigns (Obj.obj arguments)))


