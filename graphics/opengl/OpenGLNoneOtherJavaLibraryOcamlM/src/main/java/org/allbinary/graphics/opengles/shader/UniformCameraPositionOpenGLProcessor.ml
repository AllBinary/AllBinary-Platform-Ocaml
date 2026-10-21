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
(* import javax.microedition.khronos.opengles.GL10 *)

class uniformCameraPositionOpenGLProcessor ((_shaderComposite : ShaderComposite.shaderComposite), (_handleIndex : int)) =
  object
    inherit OpenGLObject3dProcessor.openGLObject3dProcessor ()
    
    

    method process : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_gl, _anyType) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "UniformCameraPositionOpenGLProcessor" (fun arguments -> Obj.repr (new uniformCameraPositionOpenGLProcessor (Obj.obj arguments)))


