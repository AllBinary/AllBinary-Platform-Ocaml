(* Generated Code Do Not Modify *)
(* package org.allbinary.device *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.khronos.opengles.GL *)
(* import javax.microedition.khronos.opengles.GL10 *)
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.font.FontDebugBase *)
(* import org.allbinary.image.opengles.OpenGLSurfaceChangedInterface *)
(* import org.allbinary.string.CommonStrings *)

class openGLESGraphics () =
  object
    inherit Graphics.graphics ()
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable gl : Obj.t = Obj.repr 0
    method gl : 'r. 'r = Obj.magic gl
    method set_gl : 'v. 'v -> unit = fun value' -> gl <- Obj.repr value'
    
    

    method updateGL : 'any1. 'any1 -> unit = fun (_gl_arg) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method set : 'any1. 'any1 -> unit = fun (_gl_arg) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method init () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method update () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method setOrthoginalMode () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method setCameraMode () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getGl10 : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic gl)))
        end [@@warning "-7"]
    

    method setFontDebug : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_font, _fontDebug) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7-20"]

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        gl <- (Obj.repr (Obj.magic (java_call_static "NullGL10.get_nULL_GL10" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "OpenGLESGraphics" (fun arguments -> Obj.repr (new openGLESGraphics (Obj.obj arguments)))


