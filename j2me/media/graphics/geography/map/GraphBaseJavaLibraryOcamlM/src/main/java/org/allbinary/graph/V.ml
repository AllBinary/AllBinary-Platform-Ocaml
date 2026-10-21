(* Generated Code Do Not Modify *)
(* package org.allbinary.graph *)

open Allbinary_java [@@warning "-33"]

class v () =
  object
    

    method getId () : int =
        begin
        0
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "V" (fun arguments -> Obj.repr (new v (Obj.obj arguments)))


