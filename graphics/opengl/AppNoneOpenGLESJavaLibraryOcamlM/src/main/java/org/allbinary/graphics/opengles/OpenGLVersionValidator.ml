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
(* package org.allbinary.graphics.opengles *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.graphics.opengles.shader.ShaderComposite *)

class openGLVersionValidator () =
  object
    val mutable eGL_CONTEXT_CLIENT_VERSION_VALUE : int = 0
    method eGL_CONTEXT_CLIENT_VERSION_VALUE = eGL_CONTEXT_CLIENT_VERSION_VALUE
    method set_eGL_CONTEXT_CLIENT_VERSION_VALUE value' = eGL_CONTEXT_CLIENT_VERSION_VALUE <- value'
    

    method isGL31OrHigher () : bool =
        begin
        false
        end
    

    method isAvailable ((_glVersionRequired : string)) : bool =
        begin
        false
        end
    

    method setShaderComposite : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_shaderComposite, _anyType) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        eGL_CONTEXT_CLIENT_VERSION_VALUE <- (-1);
        ()
      end
  end
let () = java_register_constructor "OpenGLVersionValidator" (fun arguments -> Obj.repr (new openGLVersionValidator (Obj.obj arguments)))

let instance = (new openGLVersionValidator ())
let get_instance () = instance
let () = java_register_static "OpenGLVersionValidator.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "OpenGLVersionValidator.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


