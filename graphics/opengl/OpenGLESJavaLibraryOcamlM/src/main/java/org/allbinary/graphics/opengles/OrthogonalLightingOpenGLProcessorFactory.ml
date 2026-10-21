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
[@@@warning "-20"]

class orthogonalLightingOpenGLProcessorFactory () =
  object
    val mutable sceneLightingOrthogonalModeOpenGLProcessor : OpenGLProcessor.openGLProcessor = (Obj.magic 0)
    method sceneLightingOrthogonalModeOpenGLProcessor = sceneLightingOrthogonalModeOpenGLProcessor
    method set_sceneLightingOrthogonalModeOpenGLProcessor value' = sceneLightingOrthogonalModeOpenGLProcessor <- value'
    val mutable sceneLightsOrthogonalModeOpenGLProcessor : OpenGLProcessor.openGLProcessor = (Obj.magic 0)
    method sceneLightsOrthogonalModeOpenGLProcessor = sceneLightsOrthogonalModeOpenGLProcessor
    method set_sceneLightsOrthogonalModeOpenGLProcessor value' = sceneLightsOrthogonalModeOpenGLProcessor <- value'

    initializer
      begin
        sceneLightingOrthogonalModeOpenGLProcessor <- ((NullOpenGLProcessorFactory.getInstance ()) :> OpenGLProcessor.openGLProcessor);
        sceneLightsOrthogonalModeOpenGLProcessor <- ((NullOpenGLProcessorFactory.getInstance ()) :> OpenGLProcessor.openGLProcessor);
        ()
      end
  end
let () = java_register_constructor "OrthogonalLightingOpenGLProcessorFactory" (fun arguments -> Obj.repr (new orthogonalLightingOpenGLProcessorFactory (Obj.obj arguments)))

let instance = (new orthogonalLightingOpenGLProcessorFactory ())
let get_instance () = instance
let () = java_register_static "OrthogonalLightingOpenGLProcessorFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "OrthogonalLightingOpenGLProcessorFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


