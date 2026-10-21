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
(* package org.allbinary.media.image.comparison.motion *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.util.cache.CacheInterface *)
(* import org.allbinary.logic.util.cache.CacheInterfaceFactory *)
(* import org.allbinary.logic.util.cache.CachePolicyFactory *)
(* import org.allbinary.logic.util.cache.CacheTypeFactory *)
(* import org.allbinary.string.CommonStrings *)

let cacheInterface : CacheInterface.cacheInterface ref = ref (((Obj.magic 0) :> CacheInterface.cacheInterface))
let get_cacheInterface () = !cacheInterface
let set_cacheInterface value' = cacheInterface := value'
let () = java_register_static "AllMotionRectanglesResultsCacheSingleton.get_cacheInterface" (fun _ -> Obj.repr (get_cacheInterface ()))

let getInstance () : CacheInterface.cacheInterface =
        begin
        (!cacheInterface :> CacheInterface.cacheInterface)
        end

let () = java_register_static "AllMotionRectanglesResultsCacheSingleton.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class allMotionRectanglesResultsCacheSingleton () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AllMotionRectanglesResultsCacheSingleton" (fun arguments -> Obj.repr (new allMotionRectanglesResultsCacheSingleton (Obj.obj arguments)))

let () =
        begin
        let logUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        let sTATIC_BLOCK : string ref = ref ("Static Block") in ();
        let instance : string ref = ref ("MotionRectanglesResultsCacheSingleton") in ();
        (try
            ignore ((Obj.magic !logUtil_arg)#putF (!commonStrings#sTART, !instance, !sTATIC_BLOCK));
            cacheInterface := (Obj.magic (java_call_static "CacheInterfaceFactory.getInstance" (Obj.repr ((Obj.magic (java_call_static "CacheTypeFactory.getInstance" (Obj.repr ())))#cACHE, (CachePolicyFactory.getInstance ())#oNE_MINUTE_FIVE_MAX))));
            ignore ((Obj.magic !logUtil_arg)#putF (!commonStrings#eND, !instance, !sTATIC_BLOCK))
        with e -> begin
            ignore ((Obj.magic !logUtil_arg)#put (!commonStrings#eXCEPTION, !instance, !sTATIC_BLOCK, e))
        end)
        end


