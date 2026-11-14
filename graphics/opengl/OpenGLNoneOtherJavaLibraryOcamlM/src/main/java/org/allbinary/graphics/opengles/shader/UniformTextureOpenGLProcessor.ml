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

class uniformTextureOpenGLProcessor ((_shaderComposite : ShaderComposite.shaderComposite), (_handleIndex : int)) =
  object
    inherit OpenGLObject3dProcessor.openGLObject3dProcessor ()
    
    

    (* Java overload process(GL10, Any, INT) is not converted: OCaml has one method per name *)

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "UniformTextureOpenGLProcessor" (fun arguments -> Obj.repr (new uniformTextureOpenGLProcessor (Obj.obj arguments)))


