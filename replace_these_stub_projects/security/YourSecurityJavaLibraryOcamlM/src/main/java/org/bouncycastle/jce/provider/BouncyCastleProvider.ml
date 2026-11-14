(* Generated Code Do Not Modify *)
(* package org.bouncycastle.jce.provider *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.security.Provider *)

let info : string ref = ref ("BouncyCastle Security Provider v1.41")
let get_info () = !info
let set_info value' = info := value'
let () = java_register_static "BouncyCastleProvider.get_info" (fun _ -> Obj.repr (get_info ()))
let () = java_register_static "BouncyCastleProvider.set_info" (fun value' -> set_info (Obj.obj value'); Obj.repr ())
let pROVIDER_NAME : string ref = ref ("BC")
let get_pROVIDER_NAME () = !pROVIDER_NAME
let set_pROVIDER_NAME value' = pROVIDER_NAME := value'
let () = java_register_static "BouncyCastleProvider.get_pROVIDER_NAME" (fun _ -> Obj.repr (get_pROVIDER_NAME ()))
let () = java_register_static "BouncyCastleProvider.set_pROVIDER_NAME" (fun value' -> set_pROVIDER_NAME (Obj.obj value'); Obj.repr ())
class bouncyCastleProvider () =
  object
    inherit java_provider (Obj.magic (!pROVIDER_NAME, 1.41, !info))
    
    

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


