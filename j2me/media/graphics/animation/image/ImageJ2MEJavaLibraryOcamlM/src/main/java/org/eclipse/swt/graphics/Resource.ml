(* Generated Code Do Not Modify *)
(* package org.eclipse.swt.graphics *)

open Allbinary_java [@@warning "-33"]

class resource () =
  object
    

    method dispose () : unit =
        begin
        ()
        end
    

    method isDisposed () : bool =
        begin
        false
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "Resource" (fun arguments -> Obj.repr (new resource (Obj.obj arguments)))


