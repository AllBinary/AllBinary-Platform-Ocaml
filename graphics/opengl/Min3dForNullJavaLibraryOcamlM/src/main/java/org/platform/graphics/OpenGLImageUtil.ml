(* Generated Code Do Not Modify *)
(* package org.platform.graphics *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.image.opengles.OpenGLImageUtilBase *)

class openGLImageUtil () =
  object
    inherit OpenGLImageUtilBase.openGLImageUtilBase ()

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "OpenGLImageUtil" (fun arguments -> Obj.repr (new openGLImageUtil (Obj.obj arguments)))

let instance = (new openGLImageUtil ())
let get_instance () = instance
let () = java_register_static "OpenGLImageUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "OpenGLImageUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


