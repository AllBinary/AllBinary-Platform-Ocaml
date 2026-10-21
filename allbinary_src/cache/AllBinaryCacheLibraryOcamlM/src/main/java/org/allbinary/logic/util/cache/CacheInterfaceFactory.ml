(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2007 AllBinary 
   
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


let getInstance : 'any1 'any2. 'any1 * 'any2 -> CacheInterface.cacheInterface = fun (cacheType, _cachePolicy) ->
        let cacheType = Obj.repr cacheType in
        begin
        raise (Failure (("No such " ^ (java_string_of (Obj.repr (Obj.magic cacheType))))))
        end [@@warning "-20"]

let () = java_register_static "CacheInterfaceFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class cacheInterfaceFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "CacheInterfaceFactory" (fun arguments -> Obj.repr (new cacheInterfaceFactory (Obj.obj arguments)))


