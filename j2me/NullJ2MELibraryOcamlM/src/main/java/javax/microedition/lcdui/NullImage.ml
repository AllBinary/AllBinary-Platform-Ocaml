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
(* package javax.microedition.lcdui *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

let nULL_IMAGE_ARRAY : Obj.t = (Obj.repr (Array.make (0) (Obj.magic 0)))
let get_nULL_IMAGE_ARRAY () = Obj.magic nULL_IMAGE_ARRAY
let () = java_register_static "NullImage.get_nULL_IMAGE_ARRAY" (fun _ -> Obj.repr (get_nULL_IMAGE_ARRAY ()))
class nullImage () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullImage" (fun arguments -> Obj.repr (new nullImage (Obj.obj arguments)))

let nULL_IMAGE : Obj.t = (Obj.repr (Obj.obj (java_new "Image" (Obj.repr ()))))
let get_nULL_IMAGE () = Obj.magic nULL_IMAGE
let () = java_register_static "NullImage.get_nULL_IMAGE" (fun _ -> Obj.repr (get_nULL_IMAGE ()))


