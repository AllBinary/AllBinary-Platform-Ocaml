(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.opengles *)

open Allbinary_java [@@warning "-33"]

class openGLThreadUtil () =
  object
    

    method set : 'any1. 'any1 -> unit = fun (_glSurfaceView) ->
        begin
        ()
        end
    

    method onPause () : unit =
        begin
        ()
        end
    

    method onResume () : unit =
        begin
        ()
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "OpenGLThreadUtil" (fun arguments -> Obj.repr (new openGLThreadUtil (Obj.obj arguments)))

let instance = (new openGLThreadUtil ())
let get_instance () = instance
let () = java_register_static "OpenGLThreadUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "OpenGLThreadUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


