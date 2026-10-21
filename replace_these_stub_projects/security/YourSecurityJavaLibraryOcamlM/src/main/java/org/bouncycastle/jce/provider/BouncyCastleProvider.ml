(* Generated Code Do Not Modify *)
(* package org.bouncycastle.jce.provider *)

open Allbinary_java [@@warning "-33"]
(* import java.security.Provider *)

let info : string ref = ref ("BouncyCastle Security Provider v1.41")
let get_info () = !info
let set_info value' = info := value'
let () = java_register_static "BouncyCastleProvider.get_info" (fun _ -> Obj.repr (get_info ()))
let pROVIDER_NAME : string ref = ref ("BC")
let get_pROVIDER_NAME () = !pROVIDER_NAME
let set_pROVIDER_NAME value' = pROVIDER_NAME := value'
let () = java_register_static "BouncyCastleProvider.get_pROVIDER_NAME" (fun _ -> Obj.repr (get_pROVIDER_NAME ()))
class bouncyCastleProvider () =
  object
    inherit Provider.provider (!pROVIDER_NAME, 1.41, !info)
    
    

    method setParameter : 'any2. string * 'any2 -> unit = fun ((_parameterName : string), _parameter) ->
        begin
        ()
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "BouncyCastleProvider" (fun arguments -> Obj.repr (new bouncyCastleProvider (Obj.obj arguments)))


