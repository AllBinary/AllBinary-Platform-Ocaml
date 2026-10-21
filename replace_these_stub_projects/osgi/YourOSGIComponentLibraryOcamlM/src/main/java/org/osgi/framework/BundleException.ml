(* Generated Code Do Not Modify *)
(* package org.osgi.framework *)

open Allbinary_java [@@warning "-33"]

class bundleException () =
  object
    inherit Exception.exception ()

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "BundleException" (fun arguments -> Obj.repr (new bundleException (Obj.obj arguments)))


