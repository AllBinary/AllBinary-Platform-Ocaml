(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.opengles.shader *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.khronos.egl.EGLConfig *)
(* import javax.microedition.khronos.opengles.GL10 *)
(* import org.allbinary.graphics.opengles.renderer.RendererStrings *)
(* import org.allbinary.string.CommonStrings *)

class shaderUpdater () =
  object
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable rendererStrings : RendererStrings.rendererStrings = (Obj.magic 0)
    method rendererStrings = rendererStrings
    method set_rendererStrings value' = rendererStrings <- value'
    

    method onSurfaceCreated : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_gl, _eglConfig) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        rendererStrings <- ((RendererStrings.getInstance ()) :> RendererStrings.rendererStrings);
        ()
      end
  end
let () = java_register_constructor "ShaderUpdater" (fun arguments -> Obj.repr (new shaderUpdater (Obj.obj arguments)))

let instance = (new shaderUpdater ())
let get_instance () = instance
let () = java_register_static "ShaderUpdater.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ShaderUpdater.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


