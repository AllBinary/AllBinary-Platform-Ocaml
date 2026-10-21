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
(* package org.allbinary.game.displayable.canvas *)

open Allbinary_java [@@warning "-33"]

let rESOURCE_TITLE : string = "/title_sprite_100_by_100.png"
let get_rESOURCE_TITLE () = rESOURCE_TITLE
let () = java_register_static "TitleResource.get_rESOURCE_TITLE" (fun _ -> Obj.repr (get_rESOURCE_TITLE ()))
class titleResource () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "TitleResource" (fun arguments -> Obj.repr (new titleResource (Obj.obj arguments)))


