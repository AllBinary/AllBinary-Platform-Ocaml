(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.util.cache *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class poolTypeFactory () =
  object
    val mutable vECTOR_POOL : Obj.t = Obj.repr 0
    method vECTOR_POOL : 'r. 'r = Obj.magic vECTOR_POOL
    method set_vECTOR_POOL : 'v. 'v -> unit = fun value' -> vECTOR_POOL <- Obj.repr value'

    initializer
      begin
        vECTOR_POOL <- (Obj.repr (Obj.obj (java_new "PoolType" (Obj.repr ((Obj.magic (java_call_static "CacheTypeFactory.getInstance" (Obj.repr ())))#nO_CACHE)))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "PoolTypeFactory" (fun arguments -> Obj.repr (new poolTypeFactory (Obj.obj arguments)))

let instance = (new poolTypeFactory ())
let get_instance () = instance
let () = java_register_static "PoolTypeFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PoolTypeFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


