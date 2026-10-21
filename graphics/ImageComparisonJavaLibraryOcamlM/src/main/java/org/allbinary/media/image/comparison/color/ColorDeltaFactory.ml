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
(* package org.allbinary.media.image.comparison.color *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.util.cache.AutomaticCacheInterface *)
(* import org.allbinary.logic.util.cache.CacheInterfaceFactory *)
(* import org.allbinary.logic.util.cache.CachePolicyFactory *)
(* import org.allbinary.logic.util.cache.CacheTypeFactory *)
(* import org.allbinary.string.CommonStrings *)

let cacheInterface : AutomaticCacheInterface.automaticCacheInterface ref = ref (((Obj.magic 0) :> AutomaticCacheInterface.automaticCacheInterface))
let get_cacheInterface () = !cacheInterface
let set_cacheInterface value' = cacheInterface := value'
let () = java_register_static "ColorDeltaFactory.get_cacheInterface" (fun _ -> Obj.repr (get_cacheInterface ()))

let getInstance ((rgb1 : int), (rgb2 : int)) : ColorDelta.colorDelta =
        begin
        let colorDelta : ColorDelta.colorDelta ref = ref (((Obj.magic (!cacheInterface#get ((ColorDelta.getKey (rgb1, rgb2))))) :> ColorDelta.colorDelta)) in ();
        if (!colorDelta == (Obj.magic 0)) then begin
            colorDelta := (new ColorDelta.colorDelta (rgb1, rgb2))
        end;
        (!colorDelta :> ColorDelta.colorDelta)
        end

let () = java_register_static "ColorDeltaFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class colorDeltaFactory () =
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
let () = java_register_constructor "ColorDeltaFactory" (fun arguments -> Obj.repr (new colorDeltaFactory (Obj.obj arguments)))

let () =
        begin
        let logUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        let sTATIC_BLOCK : string ref = ref ("Static Block") in ();
        let instance : string ref = ref ("ColorDeltaFactory") in ();
        (try
            ignore ((Obj.magic !logUtil_arg)#putF (!commonStrings#sTART, !instance, !sTATIC_BLOCK));
            cacheInterface := (Obj.magic (Obj.magic (java_call_static "CacheInterfaceFactory.getInstance" (Obj.repr ((Obj.magic (java_call_static "CacheTypeFactory.getInstance" (Obj.repr ())))#cACHE, (CachePolicyFactory.getInstance ())#tHIRTY_MINUTES_TEN_THOUSAND_MAX)))));
            ignore ((Obj.magic !logUtil_arg)#putF (!commonStrings#eND, !instance, !sTATIC_BLOCK))
        with e -> begin
            ignore ((Obj.magic !logUtil_arg)#put (!commonStrings#eXCEPTION, !instance, !sTATIC_BLOCK, e))
        end)
        end


