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
(* package org.allbinary.image.opengles *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.khronos.opengles.GL10 *)

class modifierOpenGLESImageProcessor () =
  object
    inherit OpenGLESImageProcessor.openGLESImageProcessor ()
    

    method colorMask : 'any1. 'any1 * float * float * float * float -> unit = fun (gl, (red : float), (green : float), (blue : float), (alpha : float)) ->
        let gl = Obj.repr gl in
        begin
        ignore ((Obj.magic gl)#glColor4f (red, green, blue, alpha))
        end [@@warning "-7-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ModifierOpenGLESImageProcessor" (fun arguments -> Obj.repr (new modifierOpenGLESImageProcessor (Obj.obj arguments)))

let instanceC = (new modifierOpenGLESImageProcessor ())
let get_instanceC () = instanceC
let () = java_register_static "ModifierOpenGLESImageProcessor.get_instanceC" (fun _ -> Obj.repr (get_instanceC ()))

let getInstance () =
        begin
        instanceC
        end
let () = java_register_static "ModifierOpenGLESImageProcessor.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


