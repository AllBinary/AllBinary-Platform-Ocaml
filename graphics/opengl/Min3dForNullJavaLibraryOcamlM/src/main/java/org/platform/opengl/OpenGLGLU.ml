(* Generated Code Do Not Modify *)
(* package org.platform.opengl *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.khronos.opengles.GL10 *)

class openGLGLU () =
  object
    

    method gluLookAt : 'any1. 'any1 * float * float * float * float * float * float * float * float * float -> unit = fun (_gl, (_eyeX : float), (_eyeY : float), (_eyeZ : float), (_centerX : float), (_centerY : float), (_centerZ : float), (_upX : float), (_upY : float), (_upZ : float)) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method gluProject : 'any1. 'any1 * float * float * float * float array * int * float array * int * int array * int * float array * int -> int = fun (_gl, (_objX : float), (_objY : float), (_objZ : float), (_model : float array), (_modelOffset : int), (_project : float array), (_projectOffset : int), (_view : int array), (_viewOffset : int), (_win : float array), (_winOffset : int)) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method gluUnProject : 'any1. 'any1 * float * float * float * float array * int * float array * int * int array * int * float array * int -> int = fun (_gl, (_winX : float), (_winY : float), (_winZ : float), (_model : float array), (_modelOffset : int), (_project : float array), (_projectOffset : int), (_view : int array), (_viewOffset : int), (_obj : float array), (_objOffset : int)) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method glFrustumf : 'any1. 'any1 * float * float * float * float * float * float -> unit = fun (_gl, (_lt : float), (_rt : float), (_btm : float), (_top : float), (_zNear : float), (_zFar : float)) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "OpenGLGLU" (fun arguments -> Obj.repr (new openGLGLU (Obj.obj arguments)))

let instance = (new openGLGLU ())
let get_instance () = instance
let () = java_register_static "OpenGLGLU.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "OpenGLGLU.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


