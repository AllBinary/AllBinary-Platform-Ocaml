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
(* package org.allbinary.business.user.commerce.inventory.item *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.user.address.ShippingAddressData *)
(* import org.allbinary.business.user.address.StreetAddress *)
(* import org.allbinary.business.user.address.StreetAddressData *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderHistoryData *)
(* import org.allbinary.business.user.commerce.money.MoneyException *)
(* import org.allbinary.business.user.commerce.shipping.ShippingMethodData *)
(* import org.allbinary.logic.string.StringUtil *)

class item () =
  object
    inherit BasicItem.basicItem () as super
    val mutable group : string = ""
    method group = group
    method set_group value' = group <- value'
    val mutable tax : string = ""
    method tax = tax
    method set_tax value' = tax <- value'
    val mutable shippingType : string = ""
    method shippingType = shippingType
    method set_shippingType value' = shippingType <- value'
    val mutable shippingCost : string = ""
    method shippingCost = shippingCost
    method set_shippingCost value' = shippingCost <- value'
    val mutable shippedDate : string = ""
    method shippedDate = shippedDate
    method set_shippedDate value' = shippedDate <- value'
    val mutable shippingAddress : StreetAddress.streetAddress = (Obj.magic 0)
    method shippingAddress = shippingAddress
    method set_shippingAddress value' = shippingAddress <- value'
    val mutable special : string = ""
    method special = special
    method set_special value' = special <- value'
    
    
    

    method setData ((itemHashMap : java_hash_map)) : unit =
        begin
        group <- (Obj.magic (itemHashMap#get ((ShippingMethodData.get_gROUP ()))));
        tax <- (Obj.magic (itemHashMap#get ((OrderHistoryData.get_tAX ()))));
        shippingType <- (Obj.magic (itemHashMap#get ((ShippingMethodData.get_nAME ()))));
        shippingCost <- (Obj.magic (itemHashMap#get ((ShippingMethodData.get_cOST ()))));
        shippedDate <- (Obj.magic (itemHashMap#get ((OrderHistoryData.get_sHIPPEDDATE ()))));
        ignore (itemHashMap#put ((StreetAddressData.get_nAME ()), (itemHashMap#get ((ShippingAddressData.get_nAME ())))));
        ignore (itemHashMap#put ((StreetAddressData.get_sTREET ()), (itemHashMap#get ((ShippingAddressData.get_sTREET ())))));
        ignore (itemHashMap#put ((StreetAddressData.get_cITY ()), (itemHashMap#get ((ShippingAddressData.get_cITY ())))));
        ignore (itemHashMap#put ((StreetAddressData.get_sTATE ()), (itemHashMap#get ((ShippingAddressData.get_sTATE ())))));
        ignore (itemHashMap#put ((StreetAddressData.get_cODE ()), (itemHashMap#get ((ShippingAddressData.get_cODE ())))));
        ignore (itemHashMap#put ((StreetAddressData.get_cOUNTRY ()), (itemHashMap#get ((ShippingAddressData.get_cOUNTRY ())))));
        shippingAddress <- (new StreetAddress.streetAddress (itemHashMap))
        end [@@warning "-7"]
    

    method setGroup ((value : string)) : unit =
        begin
        group <- value
        end [@@warning "-7"]
    

    method setTax ((value : string)) : unit =
        begin
        tax <- value
        end [@@warning "-7"]
    

    method setShippingType ((value : string)) : unit =
        begin
        shippingType <- value
        end [@@warning "-7"]
    

    method setShippingCost ((value : string)) : unit =
        begin
        shippingCost <- value
        end [@@warning "-7"]
    

    method setShippingAddress : 'any1. 'any1 -> unit = fun (value) ->
        let value = Obj.repr value in
        begin
        shippingAddress <- (Obj.magic value)
        end [@@warning "-7-20"]
    

    method setSpecial ((value : string)) : unit =
        begin
        special <- value
        end [@@warning "-7"]
    

    method getGroup () : string =
        begin
        group
        end [@@warning "-7"]
    

    method getTax () : string =
        begin
        tax
        end [@@warning "-7"]
    

    method getShippingType () : string =
        begin
        shippingType
        end [@@warning "-7"]
    

    method getShippingCost () : string =
        begin
        shippingCost
        end [@@warning "-7"]
    

    method getShippingAddress () : StreetAddress.streetAddress =
        begin
        (shippingAddress :> StreetAddress.streetAddress)
        end [@@warning "-7"]
    

    method getSpecial () : string =
        begin
        special
        end [@@warning "-7"]
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref (((super#toHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put ((ShippingMethodData.get_gROUP ()), group));
        ignore (!hashMap#put ((OrderHistoryData.get_tAX ()), tax));
        ignore (!hashMap#put ((ShippingMethodData.get_nAME ()), shippingType));
        ignore (!hashMap#put ((ShippingMethodData.get_cOST ()), shippingCost));
        ignore (!hashMap#put ((OrderHistoryData.get_sHIPPEDDATE ()), shippedDate));
        ignore (!hashMap#put ((EntryData.getInstance ())#sPECIAL, special));
        (!hashMap :> java_hash_map)
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        ();
        shippedDate <- "";
        ();
        special <- "";
        ();
        let eMPTY : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
        group <- !eMPTY;
        tax <- !eMPTY;
        shippingType <- !eMPTY;
        shippingCost <- !eMPTY;
        shippingAddress <- (new StreetAddress.streetAddress ())
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "Item" (fun arguments -> Obj.repr (new item (Obj.obj arguments)))


