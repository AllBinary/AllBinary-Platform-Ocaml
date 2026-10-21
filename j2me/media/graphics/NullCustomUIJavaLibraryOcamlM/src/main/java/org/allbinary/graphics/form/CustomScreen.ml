(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.form *)

open Allbinary_java [@@warning "-33"]

class customScreen () =
  object
    inherit CustomDisplayable.customDisplayable ()

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "CustomScreen" (fun arguments -> Obj.repr (new customScreen (Obj.obj arguments)))


