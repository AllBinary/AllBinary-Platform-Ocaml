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

class basicArrayListResetablePool ((cacheableInterfaceFactoryInterface : CacheableInterfaceFactoryInterface.cacheableInterfaceFactoryInterface)) =
  object (self)
    inherit AbstractArrayListPool.abstractArrayListPool (cacheableInterfaceFactoryInterface)
    
    

    method clear () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method remove : 'any1. 'any1 -> CacheableInterface.cacheableInterface = fun (key) ->
        let key = Obj.repr key in
        try
        begin
        let size : int ref = ref (((self#buffers)#size ())) in ();
        if (!size > 0) then begin
            raise (Java_return (Obj.repr ((Obj.magic ((self#buffers)#removeAt ((!size - 1)))))))
        end else begin
            raise (Java_return (Obj.repr (((self#cacheableInterfaceFactoryInterface)#getInstance (key)))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "BasicArrayListResetablePool" (fun arguments -> Obj.repr (new basicArrayListResetablePool (Obj.obj arguments)))


