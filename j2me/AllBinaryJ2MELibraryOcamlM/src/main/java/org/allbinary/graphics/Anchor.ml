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
(* package org.allbinary.graphics *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)

let tOP_LEFT : int ref = ref (((Obj.magic (java_call_static "Graphics.get_tOP" (Obj.repr ()))) land (Obj.magic (java_call_static "Graphics.get_lEFT" (Obj.repr ())))))
let get_tOP_LEFT () = !tOP_LEFT
let set_tOP_LEFT value' = tOP_LEFT := value'
let () = java_register_static "Anchor.get_tOP_LEFT" (fun _ -> Obj.repr (get_tOP_LEFT ()))
class anchor () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "Anchor" (fun arguments -> Obj.repr (new anchor (Obj.obj arguments)))


