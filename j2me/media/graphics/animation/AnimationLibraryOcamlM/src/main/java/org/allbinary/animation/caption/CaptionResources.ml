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
(* package org.allbinary.animation.caption *)

open Allbinary_java [@@warning "-33"]

let rESOURCE : string = "/character_message_bubbled_box.png"
let get_rESOURCE () = rESOURCE
let () = java_register_static "CaptionResources.get_rESOURCE" (fun _ -> Obj.repr (get_rESOURCE ()))
class captionResources () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "CaptionResources" (fun arguments -> Obj.repr (new captionResources (Obj.obj arguments)))


