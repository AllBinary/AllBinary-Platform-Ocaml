(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2011 AllBinary 
  
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
  
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
  
  Created By: Travis Berthelot 
   
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.emulator.device *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.khronos.opengles.GL10 *)
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.image.opengles.OpenGLESImage *)

class trueTypeFontUtil () =
  object
    inherit TrueTypeFontUtilBase.trueTypeFontUtilBase (1)
    val mutable fontImage : Obj.t = Obj.repr 0
    method fontImage : 'r. 'r = Obj.magic fontImage
    method set_fontImage : 'v. 'v -> unit = fun value' -> fontImage <- Obj.repr value'
    
    

    method getAsTextureSize ((_textureSize : int)) : int =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]
    

    method getCellSize ((_cellSize : int)) : int =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]
    

    method getFontBitmap : 'any4 'return. string * int * int * 'any4 -> 'return = fun ((_filename : string), (_fontSize : int), (_cellSize : int), _basicColor) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7-20"]
    

    method saveFontAtlasAsFile () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getFontBitmapGL : 'any1 'any4 'return. 'any1 * string * int * 'any4 -> 'return = fun (_gl, (_filename : string), (_cellSize : int), _basicColor) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7-20"]
    

    method getFontWidths ((_filename : string), (_fontSize : int)) : int array =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]

    initializer
      begin
        fontImage <- (Obj.repr (Obj.magic (java_call_static "OpenGLESImage.get_nULL_OPENGL_IMAGE" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "TrueTypeFontUtil" (fun arguments -> Obj.repr (new trueTypeFontUtil (Obj.obj arguments)))

let instance = (new trueTypeFontUtil ())
let get_instance () = instance
let () = java_register_static "TrueTypeFontUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TrueTypeFontUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


