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
(* package org.allbinary.logic.util.cache *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class cachePolicyFactory () =
  object
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable mAX_TIME_THOUSAND_MAX : CachePolicy.cachePolicy = (Obj.magic 0)
    method mAX_TIME_THOUSAND_MAX = mAX_TIME_THOUSAND_MAX
    method set_mAX_TIME_THOUSAND_MAX value' = mAX_TIME_THOUSAND_MAX <- value'
    val mutable tHIRTY_MINUTES_TEN_THOUSAND_MAX : CachePolicy.cachePolicy = (Obj.magic 0)
    method tHIRTY_MINUTES_TEN_THOUSAND_MAX = tHIRTY_MINUTES_TEN_THOUSAND_MAX
    method set_tHIRTY_MINUTES_TEN_THOUSAND_MAX value' = tHIRTY_MINUTES_TEN_THOUSAND_MAX <- value'
    val mutable tHIRTY_MINUTES_FIFTY_THOUSAND_MAX : CachePolicy.cachePolicy = (Obj.magic 0)
    method tHIRTY_MINUTES_FIFTY_THOUSAND_MAX = tHIRTY_MINUTES_FIFTY_THOUSAND_MAX
    method set_tHIRTY_MINUTES_FIFTY_THOUSAND_MAX value' = tHIRTY_MINUTES_FIFTY_THOUSAND_MAX <- value'
    val mutable oNE_MINUTE_FIVE_MAX : CachePolicy.cachePolicy = (Obj.magic 0)
    method oNE_MINUTE_FIVE_MAX = oNE_MINUTE_FIVE_MAX
    method set_oNE_MINUTE_FIVE_MAX value' = oNE_MINUTE_FIVE_MAX <- value'
    val mutable oNE_MINUTE_TEN_MAX : CachePolicy.cachePolicy = (Obj.magic 0)
    method oNE_MINUTE_TEN_MAX = oNE_MINUTE_TEN_MAX
    method set_oNE_MINUTE_TEN_MAX value' = oNE_MINUTE_TEN_MAX <- value'
    val mutable oNE_MINUTE_ONE_HUNDRED_MAX : CachePolicy.cachePolicy = (Obj.magic 0)
    method oNE_MINUTE_ONE_HUNDRED_MAX = oNE_MINUTE_ONE_HUNDRED_MAX
    method set_oNE_MINUTE_ONE_HUNDRED_MAX value' = oNE_MINUTE_ONE_HUNDRED_MAX <- value'

    initializer
      begin
        nAME <- "lru";
        mAX_TIME_THOUSAND_MAX <- ((new CachePolicy.cachePolicy (nAME, max_int, 1000)) :> CachePolicy.cachePolicy);
        tHIRTY_MINUTES_TEN_THOUSAND_MAX <- ((new CachePolicy.cachePolicy (nAME, ((1000 * 60) * 30), 10000)) :> CachePolicy.cachePolicy);
        tHIRTY_MINUTES_FIFTY_THOUSAND_MAX <- ((new CachePolicy.cachePolicy (nAME, ((1000 * 60) * 30), 100000)) :> CachePolicy.cachePolicy);
        oNE_MINUTE_FIVE_MAX <- ((new CachePolicy.cachePolicy (nAME, ((1000 * 60) * 1), 5)) :> CachePolicy.cachePolicy);
        oNE_MINUTE_TEN_MAX <- ((new CachePolicy.cachePolicy (nAME, ((1000 * 60) * 1), 10)) :> CachePolicy.cachePolicy);
        oNE_MINUTE_ONE_HUNDRED_MAX <- ((new CachePolicy.cachePolicy (nAME, ((1000 * 60) * 1), 100)) :> CachePolicy.cachePolicy);
        ()
      end
  end
let () = java_register_constructor "CachePolicyFactory" (fun arguments -> Obj.repr (new cachePolicyFactory (Obj.obj arguments)))

let instance = (new cachePolicyFactory ())
let get_instance () = instance
let () = java_register_static "CachePolicyFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "CachePolicyFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


