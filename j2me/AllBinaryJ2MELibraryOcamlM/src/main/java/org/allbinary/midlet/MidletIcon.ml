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
(* package org.allbinary.midlet *)

open Allbinary_java [@@warning "-33"]

let rESOURCE : string ref = ref ("icon")
let get_rESOURCE () = !rESOURCE
let set_rESOURCE value' = rESOURCE := value'
let () = java_register_static "MidletIcon.get_rESOURCE" (fun _ -> Obj.repr (get_rESOURCE ()))
class midletIcon () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "MidletIcon" (fun arguments -> Obj.repr (new midletIcon (Obj.obj arguments)))


