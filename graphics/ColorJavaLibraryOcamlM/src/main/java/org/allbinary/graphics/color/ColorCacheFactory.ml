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
(* package org.allbinary.graphics.color *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.util.cache.AutomaticCacheInterface *)
(* import org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory *)
(* import org.allbinary.logic.util.cache.CachePolicyFactory *)
(* import org.allbinary.logic.util.cache.CacheTypeFactory *)
(* import org.allbinary.string.CommonStrings *)

let cacheInterface : AutomaticCacheInterface.automaticCacheInterface ref = ref (((Obj.magic 0) :> AutomaticCacheInterface.automaticCacheInterface))
let get_cacheInterface () = !cacheInterface
let set_cacheInterface value' = cacheInterface := value'
let () = java_register_static "ColorCacheFactory.get_cacheInterface" (fun _ -> Obj.repr (get_cacheInterface ()))

let getInstance () : AutomaticCacheInterface.automaticCacheInterface =
        begin
        (!cacheInterface :> AutomaticCacheInterface.automaticCacheInterface)
        end

let () = java_register_static "ColorCacheFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class colorCacheFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ColorCacheFactory" (fun arguments -> Obj.repr (new colorCacheFactory (Obj.obj arguments)))

let () =
        begin
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        let sTATIC_BLOCK : string ref = ref ("Static Block") in ();
        (try
            ignore ((Obj.magic !logUtil)#putF (!commonStrings#sTART, "ColorCacheFactory", !sTATIC_BLOCK));
            cacheInterface := (Obj.magic (java_call_static "AutomaticCacheInterfaceFactory.getInstance" (Obj.repr ((new ColorCacheableFactory.colorCacheableFactory ()), (Obj.magic (java_call_static "CacheTypeFactory.getInstance" (Obj.repr ())))#cACHE, (CachePolicyFactory.getInstance ())#tHIRTY_MINUTES_TEN_THOUSAND_MAX))));
            ignore ((Obj.magic !logUtil)#putF (!commonStrings#eND, "ColorCacheFactory", !sTATIC_BLOCK))
        with e -> begin
            ignore ((Obj.magic !logUtil)#put (!commonStrings#eXCEPTION, "ColorCacheFactory", !sTATIC_BLOCK, e))
        end)
        end


