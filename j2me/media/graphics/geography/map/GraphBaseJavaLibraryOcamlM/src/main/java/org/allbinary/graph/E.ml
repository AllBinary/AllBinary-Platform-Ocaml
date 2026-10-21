(* Generated Code Do Not Modify *)
(* package org.allbinary.graph *)

open Allbinary_java [@@warning "-33"]

class e () =
  object
    

    method newInstance () =
        begin
        e
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "E" (fun arguments -> Obj.repr (new e (Obj.obj arguments)))

let e = (new e ())
let get_e () = e
let () = java_register_static "E.get_e" (fun _ -> Obj.repr (get_e ()))


