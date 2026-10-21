(* Generated Code Do Not Modify *)
(* package org.allbinary.device *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class openGLESNullGraphicsFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "OpenGLESNullGraphicsFactory" (fun arguments -> Obj.repr (new openGLESNullGraphicsFactory (Obj.obj arguments)))

let instance : Obj.t = (Obj.repr (Obj.obj (java_new "OpenGLESGraphics" (Obj.repr ()))))
let get_instance () = Obj.magic instance
let () = java_register_static "OpenGLESNullGraphicsFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic instance)))
        end
let () = java_register_static "OpenGLESNullGraphicsFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


