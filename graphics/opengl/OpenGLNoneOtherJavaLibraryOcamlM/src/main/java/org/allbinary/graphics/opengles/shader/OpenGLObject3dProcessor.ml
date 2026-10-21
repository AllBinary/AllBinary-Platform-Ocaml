(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.opengles.shader *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.khronos.opengles.GL10 *)
(* import org.allbinary.string.CommonStrings *)

class openGLObject3dProcessor () =
  object
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    

    method process : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_gl, _object3d) ->
        begin
        ()
        end [@@warning "-20"]
    

    (* Java overload process(GL10, Any, INT) is not converted: OCaml has one method per name *)

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ()
      end
  end
let () = java_register_constructor "OpenGLObject3dProcessor" (fun arguments -> Obj.repr (new openGLObject3dProcessor (Obj.obj arguments)))


