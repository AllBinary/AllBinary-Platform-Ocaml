(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.util.cache *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.string.StringUtil *)

class cacheTypeFactory () =
  object
    val mutable nO_CACHE : Obj.t = Obj.repr 0
    method nO_CACHE : 'r. 'r = Obj.magic nO_CACHE
    method set_nO_CACHE : 'v. 'v -> unit = fun value' -> nO_CACHE <- Obj.repr value'
    val mutable cACHE : Obj.t = Obj.repr 0
    method cACHE : 'r. 'r = Obj.magic cACHE
    method set_cACHE : 'v. 'v -> unit = fun value' -> cACHE <- Obj.repr value'
    val mutable sET : Obj.t = Obj.repr 0
    method sET : 'r. 'r = Obj.magic sET
    method set_sET : 'v. 'v -> unit = fun value' -> sET <- Obj.repr value'
    val mutable cACHE_VECTOR : Obj.t = Obj.repr 0
    method cACHE_VECTOR : 'r. 'r = Obj.magic cACHE_VECTOR
    method set_cACHE_VECTOR : 'v. 'v -> unit = fun value' -> cACHE_VECTOR <- Obj.repr value'

    initializer
      begin
        nO_CACHE <- (Obj.repr (Obj.obj (java_new "CacheType" (Obj.repr ((StringUtil.getInstance ())#eMPTY_STRING, (StringUtil.getInstance ())#eMPTY_STRING)))));
        cACHE <- (Obj.repr (Obj.obj (java_new "CacheType" (Obj.repr ((StringUtil.getInstance ())#eMPTY_STRING, (StringUtil.getInstance ())#eMPTY_STRING)))));
        sET <- (Obj.repr (Obj.obj (java_new "CacheType" (Obj.repr ((StringUtil.getInstance ())#eMPTY_STRING, "Set")))));
        cACHE_VECTOR <- (Obj.repr (Obj.obj (java_new "CacheType" (Obj.repr ((StringUtil.getInstance ())#eMPTY_STRING, (StringUtil.getInstance ())#eMPTY_STRING)))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "CacheTypeFactory" (fun arguments -> Obj.repr (new cacheTypeFactory (Obj.obj arguments)))

let instance = (new cacheTypeFactory ())
let get_instance () = instance
let () = java_register_static "CacheTypeFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "CacheTypeFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


