(* Generated Code Do Not Modify *)
(* package org.allbinary.device *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class openGLESGraphicsFactory () =
  object
    

    method getOpenGLESGraphicsInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((OpenGLESNullGraphicsFactory.getInstance ())))
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "OpenGLESGraphicsFactory" (fun arguments -> Obj.repr (new openGLESGraphicsFactory (Obj.obj arguments)))


