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

class noCacheableFactory () =
  object
    
    

    method getInstance : 'any1. 'any1 -> CacheableInterface.cacheableInterface = fun (_key) ->
        begin
        raise (Failure ("This Factory Does Not"))
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "NoCacheableFactory" (fun arguments -> Obj.repr (new noCacheableFactory (Obj.obj arguments)))


