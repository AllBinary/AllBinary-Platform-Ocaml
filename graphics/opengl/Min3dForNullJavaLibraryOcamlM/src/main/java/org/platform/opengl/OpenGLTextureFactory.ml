(* Generated Code Do Not Modify *)
(* package org.platform.opengl *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.khronos.opengles.GL10 *)
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.platform.opengles.PlatformTextureBaseFactory *)

class openGLTextureFactory () =
  object
    inherit PlatformTextureBaseFactory.platformTextureBaseFactory ()
    val mutable gluUtils : OpenGLGLUUtils.openGLGLUUtils = (Obj.magic 0)
    method gluUtils = gluUtils
    method set_gluUtils value' = gluUtils <- value'
    
    

    method load : 'any1 'any4. 'any1 * int * int * 'any4 * int * bool -> unit = fun (_gl, (_target : int), (_level : int), _image, (_border : int), (_flip : bool)) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7-20"]

    initializer
      begin
        gluUtils <- ((OpenGLGLUUtils.getInstance ()) :> OpenGLGLUUtils.openGLGLUUtils);
        ();
        ()
      end
  end
let () = java_register_constructor "OpenGLTextureFactory" (fun arguments -> Obj.repr (new openGLTextureFactory (Obj.obj arguments)))

let instance = (new openGLTextureFactory ())
let get_instance () = instance
let () = java_register_static "OpenGLTextureFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "OpenGLTextureFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


