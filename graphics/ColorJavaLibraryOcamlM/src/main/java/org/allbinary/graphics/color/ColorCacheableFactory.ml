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
(* import org.allbinary.logic.util.cache.CacheableInterface *)
(* import org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface *)

class colorCacheableFactory () =
  object
    
    

    method getInstance : 'any1. 'any1 -> CacheableInterface.cacheableInterface = fun (key) ->
        let key = Obj.repr key in
        begin
        ((new ColorCacheable.colorCacheable (key)) :> CacheableInterface.cacheableInterface)
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ColorCacheableFactory" (fun arguments -> Obj.repr (new colorCacheableFactory (Obj.obj arguments)))


