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
(* import org.allbinary.util.BasicArrayList *)

class basicArrayListPool ((cacheableInterfaceFactoryInterface : CacheableInterfaceFactoryInterface.cacheableInterfaceFactoryInterface)) =
  object (self)
    inherit AbstractArrayListPool.abstractArrayListPool (cacheableInterfaceFactoryInterface)
    
    

    method clear () : unit =
        begin
        ignore ((self#buffers)#clear ())
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
    

    method addAll : 'any1. 'any1 -> unit = fun (usedList) ->
        let usedList = Obj.repr usedList in
        begin
        let index : int ref = ref (((Obj.magic usedList)#size ())) in ();
        while ((index := !index - 1; !index) >= 0) do
            let anyType : CacheableInterface.cacheableInterface ref = ref (((Obj.magic (Obj.magic usedList)#objectArray.(!index)) :> CacheableInterface.cacheableInterface)) in ();
            ignore (self#add (!anyType))
        done;
        ignore ((Obj.magic usedList)#clear ())
        end [@@warning "-7-20"]
    

    method releaseUsedBackToPool : 'any1. 'any1 -> unit = fun (usedList) ->
        let usedList = Obj.repr usedList in
        begin
        let index : int ref = ref (((Obj.magic usedList)#size ())) in ();
        while ((index := !index - 1; !index) >= 0) do
            let list : BasicArrayListCacheable.basicArrayListCacheable ref = ref (((Obj.magic (Obj.magic usedList)#objectArray.(!index)) :> BasicArrayListCacheable.basicArrayListCacheable)) in ();
            if ((!list#size ()) = 0) then begin
                ignore ((Obj.magic usedList)#removeAt (!index));
                ignore (self#add (!list))
            end
        done
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "BasicArrayListPool" (fun arguments -> Obj.repr (new basicArrayListPool (Obj.obj arguments)))


