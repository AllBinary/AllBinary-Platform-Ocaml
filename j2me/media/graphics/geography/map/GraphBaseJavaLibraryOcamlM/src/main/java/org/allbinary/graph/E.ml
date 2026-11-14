(* Generated Code Do Not Modify *)
(* package org.allbinary.graph *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

let e_cell : Obj.t Lazy.t ref = ref (Lazy.from_val java_null)
let get_e : 'r. unit -> 'r = fun () -> Obj.magic (try Lazy.force !e_cell with Lazy.Undefined -> java_null)
let set_e value' = e_cell := Lazy.from_val (Obj.repr value')
let () = java_register_static "E.get_e" (fun _ -> Obj.repr (get_e ()))
let () = java_register_static "E.set_e" (fun value' -> set_e value'; Obj.repr ())
class e () =
  object
    

    method newInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (get_e ()))))
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "E" (fun arguments -> Obj.repr (new e (Obj.obj arguments)))

let () = e_cell := lazy (Obj.repr ((new e ())))


