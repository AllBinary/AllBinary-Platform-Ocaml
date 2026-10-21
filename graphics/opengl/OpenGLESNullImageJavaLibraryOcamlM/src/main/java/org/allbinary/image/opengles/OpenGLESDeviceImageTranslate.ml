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
[@@@warning "-20"]
(* import javax.microedition.khronos.opengles.GL10 *)

class openGLESDeviceImageTranslate () =
  object
    inherit OpenGLESImageTranslate.openGLESImageTranslate ()
    val mutable translateX : float = 0.0
    method translateX = translateX
    method set_translateX value' = translateX <- value'
    val mutable translateY : float = 0.0
    method translateY = translateY
    method set_translateY value' = translateY <- value'
    val mutable translateX2 : float = 0.0
    method translateX2 = translateX2
    method set_translateX2 value' = translateX2 <- value'
    val mutable translateY2 : float = 0.0
    method translateY2 = translateY2
    method set_translateY2 value' = translateY2 <- value'
    

    method translate : 'any1 'any2. 'any1 * 'any2 * float * float -> unit = fun (gl, openGLESImage, (x : float), (y : float)) ->
        let gl = Obj.repr gl in
        let openGLESImage = Obj.repr openGLESImage in
        begin
        ignore ((Obj.magic openGLESImage)#imageProcessor#translate ((Obj.magic gl), (translateX +. (((Obj.magic openGLESImage)#openGLESImageProperties#scaleX *. x))), (translateY +. (((Obj.magic openGLESImage)#openGLESImageProperties#scaleY *. y)))))
        end [@@warning "-7-20"]
    

    method translate2 : 'any1 'any2. 'any1 * 'any2 -> unit = fun (gl, openGLESImage) ->
        let gl = Obj.repr gl in
        let openGLESImage = Obj.repr openGLESImage in
        begin
        ignore ((Obj.magic openGLESImage)#imageProcessor#translate ((Obj.magic gl), translateX2, translateY2))
        end [@@warning "-7-20"]

    initializer
      begin
        translateX <- 0.0;
        translateY <- 0.0;
        translateX2 <- 0.0;
        translateY2 <- 0.0;
        ()
      end
  end
let () = java_register_constructor "OpenGLESDeviceImageTranslate" (fun arguments -> Obj.repr (new openGLESDeviceImageTranslate (Obj.obj arguments)))


