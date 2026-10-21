(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.IOException *)
(* import java.io.InputStream *)
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.platform.graphics.PlatformBitmapBase *)
(* import org.allbinary.platform.graphics.PlatformBitmapBaseFactory *)

class openGLBitmapFactory () =
  object
    inherit PlatformBitmapBaseFactory.platformBitmapBaseFactory ()
    val mutable aRGB_8888 : Obj.t = Obj.repr 0
    method aRGB_8888 : 'r. 'r = Obj.magic aRGB_8888
    method set_aRGB_8888 : 'v. 'v -> unit = fun value' -> aRGB_8888 <- Obj.repr value'
    

    method createBitmap : 'any3 'return. int * int * 'any3 -> 'return = fun ((_width : int), (_height : int), _config) ->
        begin
        (Obj.magic ((Obj.obj (java_new "OpenGLBitmap" (Obj.repr ((NullUtil.getInstance ())#nULL_OBJECT))))))
        end [@@warning "-7-20"]
    

    method decodeStream : 'any1 'return. 'any1 -> 'return = fun (_inputStream) ->
        begin
        (Obj.magic ((Obj.obj (java_new "OpenGLBitmap" (Obj.repr ((NullUtil.getInstance ())#nULL_OBJECT))))))
        end [@@warning "-7-20"]
    

    (* Java overload createBitmap(Image) is not converted: OCaml has one method per name *)

    initializer
      begin
        aRGB_8888 <- (Obj.repr (Obj.obj (java_new "Config" (Obj.repr ((NullUtil.getInstance ())#nULL_OBJECT)))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "OpenGLBitmapFactory" (fun arguments -> Obj.repr (new openGLBitmapFactory (Obj.obj arguments)))

let instance = (new openGLBitmapFactory ())
let get_instance () = instance
let () = java_register_static "OpenGLBitmapFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "OpenGLBitmapFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


