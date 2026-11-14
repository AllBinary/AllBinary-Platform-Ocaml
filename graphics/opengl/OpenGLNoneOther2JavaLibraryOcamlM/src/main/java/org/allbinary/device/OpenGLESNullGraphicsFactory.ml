(* Generated Code Do Not Modify *)
(* package org.allbinary.device *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

let instance_cell : Obj.t Lazy.t ref = ref (Lazy.from_val java_null)
let get_instance : 'r. unit -> 'r = fun () -> Obj.magic (try Lazy.force !instance_cell with Lazy.Undefined -> java_null)
let set_instance value' = instance_cell := Lazy.from_val (Obj.repr value')
let () = java_register_static "OpenGLESNullGraphicsFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
let () = java_register_static "OpenGLESNullGraphicsFactory.set_instance" (fun value' -> set_instance value'; Obj.repr ())
class openGLESNullGraphicsFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "OpenGLESNullGraphicsFactory" (fun arguments -> Obj.repr (new openGLESNullGraphicsFactory (Obj.obj arguments)))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (get_instance ()))))
        end
let () = java_register_static "OpenGLESNullGraphicsFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))

let () = instance_cell := lazy (Obj.repr ((Obj.obj (java_new "OpenGLESGraphics" (Obj.repr ())))))


