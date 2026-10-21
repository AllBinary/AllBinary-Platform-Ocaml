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

class openGLESImageProperties () =
  object
    val mutable textureID : int = 0
    method textureID = textureID
    method set_textureID value' = textureID <- value'
    val mutable scaleX : float = 0.0
    method scaleX = scaleX
    method set_scaleX value' = scaleX <- value'
    val mutable scaleY : float = 0.0
    method scaleY = scaleY
    method set_scaleY value' = scaleY <- value'
    val mutable scaleX2 : float = 0.0
    method scaleX2 = scaleX2
    method set_scaleX2 value' = scaleX2 <- value'
    val mutable scaleY2 : float = 0.0
    method scaleY2 = scaleY2
    method set_scaleY2 value' = scaleY2 <- value'
    val mutable angle : int = 0
    method angle = angle
    method set_angle value' = angle <- value'
    val mutable redf : float = 0.0
    method redf = redf
    method set_redf value' = redf <- value'
    val mutable greenf : float = 0.0
    method greenf = greenf
    method set_greenf value' = greenf <- value'
    val mutable bluef : float = 0.0
    method bluef = bluef
    method set_bluef value' = bluef <- value'
    val mutable alphaf : float = 0.0
    method alphaf = alphaf
    method set_alphaf value' = alphaf <- value'

    initializer
      begin
        textureID <- (-1);
        scaleX <- 1.0;
        scaleY <- 1.0;
        scaleX2 <- 1.0;
        scaleY2 <- 1.0;
        angle <- 0;
        redf <- 1.0;
        greenf <- 1.0;
        bluef <- 1.0;
        alphaf <- 1.0;
        ()
      end
  end
let () = java_register_constructor "OpenGLESImageProperties" (fun arguments -> Obj.repr (new openGLESImageProperties (Obj.obj arguments)))


