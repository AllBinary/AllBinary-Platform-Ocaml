(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.opengles.renderer *)

open Allbinary_java [@@warning "-33"]

class rendererStrings () =
  object
    val mutable oN_SURFACE_CREATED : string = ""
    method oN_SURFACE_CREATED = oN_SURFACE_CREATED
    method set_oN_SURFACE_CREATED value' = oN_SURFACE_CREATED <- value'
    val mutable oN_SURFACE_CHANGED : string = ""
    method oN_SURFACE_CHANGED = oN_SURFACE_CHANGED
    method set_oN_SURFACE_CHANGED value' = oN_SURFACE_CHANGED <- value'
    val mutable oN_DRAW_FRAME : string = ""
    method oN_DRAW_FRAME = oN_DRAW_FRAME
    method set_oN_DRAW_FRAME value' = oN_DRAW_FRAME <- value'
    val mutable oN_DRAW_FRAME_THREED : string = ""
    method oN_DRAW_FRAME_THREED = oN_DRAW_FRAME_THREED
    method set_oN_DRAW_FRAME_THREED value' = oN_DRAW_FRAME_THREED <- value'
    val mutable oN_DRAW_FRAME_2D : string = ""
    method oN_DRAW_FRAME_2D = oN_DRAW_FRAME_2D
    method set_oN_DRAW_FRAME_2D value' = oN_DRAW_FRAME_2D <- value'

    initializer
      begin
        oN_SURFACE_CREATED <- "onSurfaceCreated";
        oN_SURFACE_CHANGED <- "onSurfaceChanged";
        oN_DRAW_FRAME <- "onDrawFrame";
        oN_DRAW_FRAME_THREED <- "onDrawFrameThreed";
        oN_DRAW_FRAME_2D <- "onDrawFrame2d";
        ()
      end
  end
let () = java_register_constructor "RendererStrings" (fun arguments -> Obj.repr (new rendererStrings (Obj.obj arguments)))

let instance = (new rendererStrings ())
let get_instance () = instance
let () = java_register_static "RendererStrings.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "RendererStrings.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


