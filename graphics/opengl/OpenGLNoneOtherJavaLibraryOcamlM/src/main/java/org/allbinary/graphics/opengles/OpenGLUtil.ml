(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.opengles *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Image *)

class openGLUtil () =
  object
    

    method addImage : 'any1 'return. 'any1 -> 'return = fun (image) ->
        let image = Obj.repr image in
        begin
        (Obj.magic ((Obj.magic image)))
        end [@@warning "-20"]
    

    method clear () : unit =
        begin
        ()
        end
    

    method addRunnable ((_runnable : java_runnable)) : unit =
        begin
        ()
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "OpenGLUtil" (fun arguments -> Obj.repr (new openGLUtil (Obj.obj arguments)))

let instance = (new openGLUtil ())
let get_instance () = instance
let () = java_register_static "OpenGLUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "OpenGLUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


