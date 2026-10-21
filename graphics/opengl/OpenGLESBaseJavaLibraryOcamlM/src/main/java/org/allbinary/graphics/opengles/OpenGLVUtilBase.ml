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
(* import javax.microedition.khronos.opengles.GL10 *)

class openGLVUtilBase () =
  object
    

    method glTexEnvix : 'any1. 'any1 * int * int * int -> unit = fun (_gl, (_target : int), (_pname : int), (_param : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method glTexParameterix : 'any1. 'any1 * int * int * int -> unit = fun (_gl, (_target : int), (_pname : int), (_param : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method glGenerateMipmap : 'any1. 'any1 * int * int * bool -> unit = fun (_gl, (_textureId : int), (_target : int), (_generateMipMap : bool)) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "OpenGLVUtilBase" (fun arguments -> Obj.repr (new openGLVUtilBase (Obj.obj arguments)))


