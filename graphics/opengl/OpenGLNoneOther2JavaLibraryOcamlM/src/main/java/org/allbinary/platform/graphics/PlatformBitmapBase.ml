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
(* package org.allbinary.platform.graphics *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Image *)
(* import javax.microedition.lcdui.NullImage *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)

class platformBitmapBase () =
  object
    val mutable alpha : int = 0
    method alpha = alpha
    method set_alpha value' = alpha <- value'
    val mutable basicColor : BasicColor.basicColor = (Obj.magic 0)
    method basicColor = basicColor
    method set_basicColor value' = basicColor <- value'
    

    method getWidth () : int =
        begin
        0
        end
    

    method getHeight () : int =
        begin
        0
        end
    

    method getImage : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((NullImage.get_nULL_IMAGE ())))
        end

    initializer
      begin
        alpha <- 255;
        basicColor <- ((BasicColorFactory.getInstance ())#nULL_COLOR :> BasicColor.basicColor);
        ()
      end
  end
let () = java_register_constructor "PlatformBitmapBase" (fun arguments -> Obj.repr (new platformBitmapBase (Obj.obj arguments)))

let nULL_PLATFORM_BITMAP_BASE = (new platformBitmapBase ())
let get_nULL_PLATFORM_BITMAP_BASE () = nULL_PLATFORM_BITMAP_BASE
let () = java_register_static "PlatformBitmapBase.get_nULL_PLATFORM_BITMAP_BASE" (fun _ -> Obj.repr (get_nULL_PLATFORM_BITMAP_BASE ()))


