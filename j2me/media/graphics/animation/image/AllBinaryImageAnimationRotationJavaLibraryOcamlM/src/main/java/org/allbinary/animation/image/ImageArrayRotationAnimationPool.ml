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
(* package org.allbinary.animation.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.util.cache.BasicArrayListResetablePool *)
(* import org.allbinary.logic.util.cache.CacheableInterface *)
(* import org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface *)
(* import org.allbinary.logic.util.cache.PoolInterface *)

class imageArrayRotationAnimationPool ((cacheableInterfaceFactoryInterface : CacheableInterfaceFactoryInterface.cacheableInterfaceFactoryInterface)) =
  object
    inherit BasicArrayListResetablePool.basicArrayListResetablePool (cacheableInterfaceFactoryInterface) as super
    
    

    method remove : 'any1. 'any1 -> CacheableInterface.cacheableInterface = fun (key) ->
        let key = Obj.repr key in
        begin
        let cacheableInterface : CacheableInterface.cacheableInterface ref = ref (((super#remove (key)) :> CacheableInterface.cacheableInterface)) in ();
        let allBinaryImageRotationAnimationInfo : ImageArrayRotationAnimationInfo.imageArrayRotationAnimationInfo ref = ref (((Obj.magic key) :> ImageArrayRotationAnimationInfo.imageArrayRotationAnimationInfo)) in ();
        let imageArrayRotationAnimationCacheable : ImageArrayRotationAnimationCacheable.imageArrayRotationAnimationCacheable ref = ref ((((Obj.magic !cacheableInterface)) :> ImageArrayRotationAnimationCacheable.imageArrayRotationAnimationCacheable)) in ();
        ignore (!imageArrayRotationAnimationCacheable#setImageArray ((!allBinaryImageRotationAnimationInfo#getImageArray ())));
        (!cacheableInterface :> CacheableInterface.cacheableInterface)
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "ImageArrayRotationAnimationPool" (fun arguments -> Obj.repr (new imageArrayRotationAnimationPool (Obj.obj arguments)))

let iMAGE_ROTATION_ANIMATION_POOL : PoolInterface.poolInterface ref = ref (((new imageArrayRotationAnimationPool ((new ImageArrayRotationAnimationCacheableInterfaceFactory.imageArrayRotationAnimationCacheableInterfaceFactory ()))) :> PoolInterface.poolInterface))
let get_iMAGE_ROTATION_ANIMATION_POOL () = !iMAGE_ROTATION_ANIMATION_POOL
let set_iMAGE_ROTATION_ANIMATION_POOL value' = iMAGE_ROTATION_ANIMATION_POOL := value'
let () = java_register_static "ImageArrayRotationAnimationPool.get_iMAGE_ROTATION_ANIMATION_POOL" (fun _ -> Obj.repr (get_iMAGE_ROTATION_ANIMATION_POOL ()))

let getInstance () : PoolInterface.poolInterface =
        begin
        (!iMAGE_ROTATION_ANIMATION_POOL :> PoolInterface.poolInterface)
        end
let () = java_register_static "ImageArrayRotationAnimationPool.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


