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
(* package org.allbinary.image.opengles *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.khronos.opengles.GL10 *)

class openGLESImageTranslate () =
  object
    

    method translate : 'any1 'any2. 'any1 * 'any2 * float * float -> unit = fun (_gl, _openGLESImage, (_x : float), (_y : float)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method translate2 : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_gl, _openGLESImage) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "OpenGLESImageTranslate" (fun arguments -> Obj.repr (new openGLESImageTranslate (Obj.obj arguments)))

let instance = (new openGLESImageTranslate ())
let get_instance () = instance
let () = java_register_static "OpenGLESImageTranslate.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "OpenGLESImageTranslate.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


