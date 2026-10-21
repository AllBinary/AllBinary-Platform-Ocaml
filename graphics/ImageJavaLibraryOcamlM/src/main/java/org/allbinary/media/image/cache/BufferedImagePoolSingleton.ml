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
(* package org.allbinary.media.image.cache *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.util.cache.CachePolicyFactory *)
(* import org.allbinary.logic.util.cache.PoolInterface *)
(* import org.allbinary.logic.util.cache.PoolInterfaceFactory *)
(* import org.allbinary.logic.util.cache.PoolTypeFactory *)
(* import org.allbinary.string.CommonStrings *)

let poolInterface : PoolInterface.poolInterface ref = ref (((Obj.magic 0) :> PoolInterface.poolInterface))
let get_poolInterface () = !poolInterface
let set_poolInterface value' = poolInterface := value'
let () = java_register_static "BufferedImagePoolSingleton.get_poolInterface" (fun _ -> Obj.repr (get_poolInterface ()))

let getInstance () : PoolInterface.poolInterface =
        begin
        (!poolInterface :> PoolInterface.poolInterface)
        end

let () = java_register_static "BufferedImagePoolSingleton.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class bufferedImagePoolSingleton () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "BufferedImagePoolSingleton" (fun arguments -> Obj.repr (new bufferedImagePoolSingleton (Obj.obj arguments)))

let () =
        begin
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        let sTATIC_BLOCK : string ref = ref ("Static Block") in ();
        let instance : string ref = ref ("BufferedImagePoolSingleton") in ();
        (try
            ignore ((Obj.magic !logUtil)#putF (!commonStrings#sTART, !instance, !sTATIC_BLOCK));
            poolInterface := (PoolInterfaceFactory.getInstance ((new BufferedImageCacheableFactory.bufferedImageCacheableFactory ()), (Obj.magic (java_call_static "PoolTypeFactory.getInstance" (Obj.repr ())))#vECTOR_POOL, (CachePolicyFactory.getInstance ())#mAX_TIME_THOUSAND_MAX));
            ignore ((Obj.magic !logUtil)#putF (!commonStrings#eND, !instance, !sTATIC_BLOCK))
        with e -> begin
            ignore ((Obj.magic !logUtil)#put (!commonStrings#eXCEPTION, !instance, !sTATIC_BLOCK, e))
        end)
        end


