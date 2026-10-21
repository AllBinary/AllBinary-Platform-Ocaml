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
(* package org.allbinary.business.context.modules.storefront *)

open Allbinary_java [@@warning "-33"]

class storeFrontsData () =
  object
    val mutable tYPE : string = ""
    method tYPE = tYPE
    method set_tYPE value' = tYPE <- value'
    val mutable rETAIL : string = ""
    method rETAIL = rETAIL
    method set_rETAIL value' = rETAIL <- value'
    val mutable sUBSCRIPTION : string = ""
    method sUBSCRIPTION = sUBSCRIPTION
    method set_sUBSCRIPTION value' = sUBSCRIPTION <- value'
    val mutable aUCTION : string = ""
    method aUCTION = aUCTION
    method set_aUCTION value' = aUCTION <- value'
    val mutable nEWS : string = ""
    method nEWS = nEWS
    method set_nEWS value' = nEWS <- value'
    val mutable bLOG : string = ""
    method bLOG = bLOG
    method set_bLOG value' = bLOG <- value'
    val mutable fORUM : string = ""
    method fORUM = fORUM
    method set_fORUM value' = fORUM <- value'

    initializer
      begin
        tYPE <- "STOREFRONTS_TYPE";
        rETAIL <- "STOREFRONTS_RETAIL";
        sUBSCRIPTION <- "STOREFRONTS_SUBSCRIPTION";
        aUCTION <- "STOREFRONTS_AUCTION";
        nEWS <- "STOREFRONTS_NEWS";
        bLOG <- "STOREFRONTS_BLOG";
        fORUM <- "STOREFRONTS_FORUM";
        ()
      end
  end
let () = java_register_constructor "StoreFrontsData" (fun arguments -> Obj.repr (new storeFrontsData (Obj.obj arguments)))

let instance = (new storeFrontsData ())
let get_instance () = instance
let () = java_register_static "StoreFrontsData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "StoreFrontsData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


