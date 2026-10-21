(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.control.crypt *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]


let encode ((_value : int array)) : string =
        begin
        (Obj.magic 0)
        end

and decode ((_value : string)) : int array =
        begin
        (Obj.magic 0)
        end

let () = java_register_static "Encoder.encode" (fun arguments -> Obj.repr (encode (Obj.obj arguments)))
let () = java_register_static "Encoder.decode" (fun arguments -> Obj.repr (decode (Obj.obj arguments)))
class encoder () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "Encoder" (fun arguments -> Obj.repr (new encoder (Obj.obj arguments)))


