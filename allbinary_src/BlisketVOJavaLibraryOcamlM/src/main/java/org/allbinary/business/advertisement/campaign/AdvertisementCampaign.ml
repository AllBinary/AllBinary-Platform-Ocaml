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
(* import java.util.HashMap *)
(* import org.allbinary.business.DynamicObjectData *)
(* import org.allbinary.business.advertisement.AdvertisementsInterface *)
(* import org.allbinary.business.advertisement.search.AdvertisementSearchInterface *)

class advertisementCampaign ((hashMap_arg : java_hash_map)) =
  object
    val mutable hashMap : java_hash_map = (Obj.magic 0)
    method hashMap = hashMap
    method set_hashMap value' = hashMap <- value'
    
    

    method getComponent () : Obj.t =
        begin
        (Obj.repr ((Obj.magic 0)))
        end
    

    method getName () : string =
        begin
        (Obj.magic (hashMap#get ((AdvertisementCampaignData.getInstance ())#nAME)))
        end
    

    method setComponentName ((name : string)) : unit =
        begin
        ignore (hashMap#put ((DynamicObjectData.get_nAME ()), name))
        end
    

    method setName ((name : string)) : unit =
        begin
        ignore (hashMap#put ((AdvertisementCampaignData.getInstance ())#nAME, name))
        end
    

    method search : 'any1. 'any1 -> AdvertisementsInterface.advertisementsInterface = fun (_advertisementSearchInterface) ->
        begin
        ((Obj.magic 0) :> AdvertisementsInterface.advertisementsInterface)
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        hashMap <- hashMap_arg
      end
  end
let () = java_register_constructor "AdvertisementCampaign" (fun arguments -> Obj.repr (new advertisementCampaign (Obj.obj arguments)))


