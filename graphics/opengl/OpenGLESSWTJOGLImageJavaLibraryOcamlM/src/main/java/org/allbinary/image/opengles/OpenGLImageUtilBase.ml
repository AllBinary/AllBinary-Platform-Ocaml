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
(* import java.io.IOException *)
(* import java.io.InputStream *)
(* import org.allbinary.graphics.OpenGLBitmap *)
(* import org.allbinary.graphics.color.BasicColor *)

class openGLImageUtilBase () =
  object
    

    method paint : 'any1 'any2 'return. 'any1 * 'any2 * int -> 'return = fun (_alphaBitmap, _originalBitmap, (_index : int)) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    (* Java overload paint(OpenGLBitmap, OpenGLBitmap, INT, BasicColor) is not converted: OCaml has one method per name *)
    

    method createImage : 'return. string -> 'return = fun ((_name : string)) ->
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method createImageFromInputStream : 'any1 'return. 'any1 -> 'return = fun (_inputStream) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "OpenGLImageUtilBase" (fun arguments -> Obj.repr (new openGLImageUtilBase (Obj.obj arguments)))


