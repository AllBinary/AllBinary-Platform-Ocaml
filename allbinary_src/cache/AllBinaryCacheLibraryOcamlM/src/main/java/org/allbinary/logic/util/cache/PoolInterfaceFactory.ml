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


let getInstance : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> PoolInterface.poolInterface = fun (_cacheableInterfaceFactoryInterface, poolType, _cachePolicy) ->
        let poolType = Obj.repr poolType in
        begin
        raise (Failure (("No Such PoolType: " ^ (java_string_of (Obj.repr (Obj.magic poolType))))))
        end [@@warning "-20"]

let () = java_register_static "PoolInterfaceFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class poolInterfaceFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "PoolInterfaceFactory" (fun arguments -> Obj.repr (new poolInterfaceFactory (Obj.obj arguments)))


