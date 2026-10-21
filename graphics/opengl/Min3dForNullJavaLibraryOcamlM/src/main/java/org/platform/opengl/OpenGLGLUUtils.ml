(* Generated Code Do Not Modify *)
(* package org.platform.opengl *)

open Allbinary_java [@@warning "-33"]
(* import java.nio.ByteBuffer *)
(* import javax.microedition.khronos.opengles.GL10 *)
(* import org.allbinary.graphics.OpenGLBitmap *)
(* import org.allbinary.image.opengles.OpenGLESImage *)

class openGLGLUUtils () =
  object
    

    method makeByteBuffer : 'any1 'return. 'any1 * bool -> 'return = fun (_bmp, (_flip : bool)) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method texImage2D : 'any1 'any6. 'any1 * string * int * int * bool * 'any6 * int * bool -> unit = fun (_gl, (_glVersion : string), (_target : int), (_level : int), (_generateMipMap : bool), _openGLESImage, (_border : int), (_flip : bool)) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    (* Java overload texImage2D(GL10, String, INT, INT, BOOLEAN, OpenGLBitmap, INT, BOOLEAN) is not converted: OCaml has one method per name *)

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "OpenGLGLUUtils" (fun arguments -> Obj.repr (new openGLGLUUtils (Obj.obj arguments)))

let instance = (new openGLGLUUtils ())
let get_instance () = instance
let () = java_register_static "OpenGLGLUUtils.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "OpenGLGLUUtils.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


