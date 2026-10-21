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

class openGLESImageProcessor () =
  object
    

    method translate : 'any1. 'any1 * float * float -> unit = fun (gl, (translateX : float), (translateY : float)) ->
        let gl = Obj.repr gl in
        begin
        ignore ((Obj.magic gl)#glTranslatef (translateX, translateY, 0))
        end [@@warning "-20"]
    

    method rotate : 'any1. 'any1 * float -> unit = fun (gl, (angle : float)) ->
        let gl = Obj.repr gl in
        begin
        ignore ((Obj.magic gl)#glRotatef ((-.angle), 0, 0, 1))
        end [@@warning "-20"]
    

    method scale : 'any1. 'any1 * float * float -> unit = fun (gl, (scaleX : float), (scaleY : float)) ->
        let gl = Obj.repr gl in
        begin
        ignore ((Obj.magic gl)#glScalef (scaleX, scaleY, 1))
        end [@@warning "-20"]
    

    method colorMask : 'any1. 'any1 * float * float * float * float -> unit = fun (_gl, (_red : float), (_green : float), (_blue : float), (_alpha : float)) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "OpenGLESImageProcessor" (fun arguments -> Obj.repr (new openGLESImageProcessor (Obj.obj arguments)))

let instance = (new openGLESImageProcessor ())
let get_instance () = instance
let () = java_register_static "OpenGLESImageProcessor.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "OpenGLESImageProcessor.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


