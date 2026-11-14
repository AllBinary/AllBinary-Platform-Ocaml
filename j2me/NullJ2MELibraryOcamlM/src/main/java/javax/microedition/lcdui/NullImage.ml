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
let nULL_IMAGE_cell : Obj.t Lazy.t ref = ref (Lazy.from_val java_null)
let get_nULL_IMAGE : 'r. unit -> 'r = fun () -> Obj.magic (try Lazy.force !nULL_IMAGE_cell with Lazy.Undefined -> java_null)
let set_nULL_IMAGE value' = nULL_IMAGE_cell := Lazy.from_val (Obj.repr value')
let () = java_register_static "NullImage.get_nULL_IMAGE" (fun _ -> Obj.repr (get_nULL_IMAGE ()))
let () = java_register_static "NullImage.set_nULL_IMAGE" (fun value' -> set_nULL_IMAGE value'; Obj.repr ())
class nullImage () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullImage" (fun arguments -> Obj.repr (new nullImage (Obj.obj arguments)))

let () = nULL_IMAGE_cell := lazy (Obj.repr ((Obj.obj (java_new "Image" (Obj.repr ())))))


