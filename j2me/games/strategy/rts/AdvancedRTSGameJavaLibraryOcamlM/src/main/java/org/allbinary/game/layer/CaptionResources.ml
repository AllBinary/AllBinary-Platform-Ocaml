(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]

class captionResources () =
  object
    val mutable rESOURCE : string = ""
    method rESOURCE = rESOURCE
    method set_rESOURCE value' = rESOURCE <- value'
    

    initializer
      begin
        rESOURCE <- "/unit_message_bubbled_box.png";
        ();
        ()
      end
  end
let () = java_register_constructor "CaptionResources" (fun arguments -> Obj.repr (new captionResources (Obj.obj arguments)))

let instance = (new captionResources ())
let get_instance () = instance
let () = java_register_static "CaptionResources.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "CaptionResources.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


