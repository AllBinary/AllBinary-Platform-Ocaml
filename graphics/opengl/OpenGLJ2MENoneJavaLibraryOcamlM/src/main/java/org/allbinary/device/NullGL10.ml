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
(* package org.allbinary.device *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.khronos.opengles.GL10 *)

class nullGL10 () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullGL10" (fun arguments -> Obj.repr (new nullGL10 (Obj.obj arguments)))

let nULL_GL10 = (new nullGL10 ())
let get_nULL_GL10 () = nULL_GL10
let () = java_register_static "NullGL10.get_nULL_GL10" (fun _ -> Obj.repr (get_nULL_GL10 ()))


