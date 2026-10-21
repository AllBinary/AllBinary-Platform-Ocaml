(* Generated Code Do Not Modify *)
(* package javax.microedition.khronos.egl *)

open Allbinary_java [@@warning "-33"]

class eGLConfig () =
  object
    

    initializer
      begin
        ();
        raise (Failure ("RuntimeException"))
      end
  end
let () = java_register_constructor "EGLConfig" (fun arguments -> Obj.repr (new eGLConfig (Obj.obj arguments)))


