(* Generated Code Do Not Modify *)
(* package org.osgi.framework *)

open Allbinary_java [@@warning "-33"]

class invalidSyntaxException () =
  object
    inherit Exception.exception ()

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "InvalidSyntaxException" (fun arguments -> Obj.repr (new invalidSyntaxException (Obj.obj arguments)))


