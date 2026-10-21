(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.control.crypt *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

let kEYMAX : int ref = ref (0)
let get_kEYMAX () = !kEYMAX
let set_kEYMAX value' = kEYMAX := value'
let () = java_register_static "SuperCrypt.get_kEYMAX" (fun _ -> Obj.repr (get_kEYMAX ()))
class superCrypt ((_key : int)) =
  object
    
    

    method encrypt ((_value : string)) : string =
        begin
        (Obj.magic 0)
        end
    

    method decrypt ((_value : string)) : string =
        begin
        (Obj.magic 0)
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "SuperCrypt" (fun arguments -> Obj.repr (new superCrypt (Obj.obj arguments)))


