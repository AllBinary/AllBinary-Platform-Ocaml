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

class platformBitmapBaseFactory () =
  object
    

    method createBitmap : 'any1 'return. 'any1 -> 'return = fun (_image) ->
        begin
        (Obj.magic ((Obj.magic (java_call_static "PlatformBitmapBase.get_nULL_PLATFORM_BITMAP_BASE" (Obj.repr ())))))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "PlatformBitmapBaseFactory" (fun arguments -> Obj.repr (new platformBitmapBaseFactory (Obj.obj arguments)))

let nULL_PLATFORM_BITMAP_BASE_FACTORY = (new platformBitmapBaseFactory ())
let get_nULL_PLATFORM_BITMAP_BASE_FACTORY () = nULL_PLATFORM_BITMAP_BASE_FACTORY
let () = java_register_static "PlatformBitmapBaseFactory.get_nULL_PLATFORM_BITMAP_BASE_FACTORY" (fun _ -> Obj.repr (get_nULL_PLATFORM_BITMAP_BASE_FACTORY ()))


