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
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.business.advertisement.campaign.AdvertisementCampaignData *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.w3c.dom.Document *)

class advertisementArea ((hashMap : java_hash_map)) =
  object
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable storeName : string = ""
    method storeName = storeName
    method set_storeName value' = storeName <- value'
    val mutable description : string = ""
    method description = description
    method set_description value' = description <- value'
    val mutable advertisementAreaConstraintsInterface : AdvertisementAreaConstraintsInterface.advertisementAreaConstraintsInterface = (Obj.magic 0)
    method advertisementAreaConstraintsInterface = advertisementAreaConstraintsInterface
    method set_advertisementAreaConstraintsInterface value' = advertisementAreaConstraintsInterface <- value'
    val mutable campaign : string = ""
    method campaign = campaign
    method set_campaign value' = campaign <- value'
    
    

    method getName () : string =
        begin
        name
        end
    

    method getStoreName () : string =
        begin
        storeName
        end
    

    method getDescription () : string =
        begin
        description
        end
    

    method getConstraints () : AdvertisementAreaConstraintsInterface.advertisementAreaConstraintsInterface =
        begin
        (advertisementAreaConstraintsInterface :> AdvertisementAreaConstraintsInterface.advertisementAreaConstraintsInterface)
        end
    

    method getCampaign () : string =
        begin
        campaign
        end
    

    method setName ((name_arg : string)) : unit =
        begin
        name <- name_arg
        end
    

    method setStoreName ((storeName_arg : string)) : unit =
        begin
        storeName <- storeName_arg
        end
    

    method setDescription ((description_arg : string)) : unit =
        begin
        description <- description_arg
        end
    

    method setConstraints : 'any1. 'any1 -> unit = fun (_advertisementConstraintsInterface) ->
        begin
        advertisementAreaConstraintsInterface <- advertisementAreaConstraintsInterface
        end [@@warning "-20"]
    

    method setCampaign ((campaign_arg : string)) : unit =
        begin
        campaign <- campaign_arg
        end

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        name <- (Obj.magic (hashMap#get ((AdvertisementAreaData.getInstance ())#nAME)));
        storeName <- (Obj.magic (hashMap#get ((StoreFrontData.getInstance ())#nAME)));
        description <- (Obj.magic (hashMap#get ((AdvertisementAreaData.getInstance ())#dESCRIPTION)));
        let constraintsDomString : string ref = ref ((Obj.magic (hashMap#get ((AdvertisementAreaData.getInstance ())#cONSTRAINTS)))) in ();
        let document : Obj.t ref = ref ((Obj.repr (DomDocumentHelper.create (!constraintsDomString)))) in ();
        advertisementAreaConstraintsInterface <- (new AdvertisementAreaConstraints.advertisementAreaConstraints ((Obj.magic !document)));
        campaign <- (Obj.magic (hashMap#get ((AdvertisementCampaignData.getInstance ())#nAME)))
      end
  end
let () = java_register_constructor "AdvertisementArea" (fun arguments -> Obj.repr (new advertisementArea (Obj.obj arguments)))


