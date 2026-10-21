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
(* import javax.microedition.khronos.opengles.GL10 *)

class openGLESImageDraw () =
  object
    

    method drawRegion : 'any1. 'any1 * int * float * float * float * float * int * int * int -> unit = fun (_gl, (_viewHeight : int), (_x_src : float), (_y_src : float), (_width : float), (_height : float), (_x : int), (_y : int), (_z : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method draw : 'any1. 'any1 * int * int * int -> unit = fun (_gl, (_x : int), (_y : int), (_z : int)) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "OpenGLESImageDraw" (fun arguments -> Obj.repr (new openGLESImageDraw (Obj.obj arguments)))

let instance = (new openGLESImageDraw ())
let get_instance () = instance
let () = java_register_static "OpenGLESImageDraw.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "OpenGLESImageDraw.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


