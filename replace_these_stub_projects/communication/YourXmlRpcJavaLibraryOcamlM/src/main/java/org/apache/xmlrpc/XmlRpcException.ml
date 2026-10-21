(* Generated Code Do Not Modify *)
(* package org.apache.xmlrpc *)

open Allbinary_java [@@warning "-33"]

class xmlRpcException ((_code : int), (message : string)) =
  object
    inherit Exception.exception (message)
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "XmlRpcException" (fun arguments -> Obj.repr (new xmlRpcException (Obj.obj arguments)))


