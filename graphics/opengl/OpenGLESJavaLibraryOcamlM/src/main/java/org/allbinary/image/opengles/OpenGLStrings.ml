(* Generated Code Do Not Modify *)
(* package org.allbinary.image.opengles *)

open Allbinary_java [@@warning "-33"]

class openGLStrings () =
  object
    val mutable gL_ERROR_LABEL : string = ""
    method gL_ERROR_LABEL = gL_ERROR_LABEL
    method set_gL_ERROR_LABEL value' = gL_ERROR_LABEL <- value'
    val mutable sET : string = ""
    method sET = sET
    method set_sET value' = sET <- value'

    initializer
      begin
        gL_ERROR_LABEL <- "GLError: ";
        sET <- "set(GL10)";
        ()
      end
  end
let () = java_register_constructor "OpenGLStrings" (fun arguments -> Obj.repr (new openGLStrings (Obj.obj arguments)))

let instance = (new openGLStrings ())
let get_instance () = instance
let () = java_register_static "OpenGLStrings.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "OpenGLStrings.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


