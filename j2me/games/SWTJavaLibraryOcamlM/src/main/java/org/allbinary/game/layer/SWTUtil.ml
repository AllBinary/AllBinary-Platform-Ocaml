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
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]

let isSWT : bool ref = ref (true)
let get_isSWT () = !isSWT
let set_isSWT value' = isSWT := value'
let () = java_register_static "SWTUtil.get_isSWT" (fun _ -> Obj.repr (get_isSWT ()))
let sWT : string ref = ref ("SWT")
let get_sWT () = !sWT
let set_sWT value' = sWT := value'
let () = java_register_static "SWTUtil.get_sWT" (fun _ -> Obj.repr (get_sWT ()))
class sWTUtil () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "SWTUtil" (fun arguments -> Obj.repr (new sWTUtil (Obj.obj arguments)))


