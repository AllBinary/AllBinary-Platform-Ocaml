(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.form *)

open Allbinary_java [@@warning "-33"]

class customDisplayable () =
  object
    

    method setTitle ((_title : string)) : unit =
        begin
        ()
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "CustomDisplayable" (fun arguments -> Obj.repr (new customDisplayable (Obj.obj arguments)))


