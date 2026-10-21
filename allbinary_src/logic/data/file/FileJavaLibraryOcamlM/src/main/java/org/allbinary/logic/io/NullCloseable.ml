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
(* package org.allbinary.logic.io *)

open Allbinary_java [@@warning "-33"]
(* import java.io.Closeable *)
(* import java.io.IOException *)

class nullCloseable () =
  object
    

    method close () : unit =
        begin
        ()
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullCloseable" (fun arguments -> Obj.repr (new nullCloseable (Obj.obj arguments)))

let nULL_CLOSEABLE = (new nullCloseable ())
let get_nULL_CLOSEABLE () = nULL_CLOSEABLE
let () = java_register_static "NullCloseable.get_nULL_CLOSEABLE" (fun _ -> Obj.repr (get_nULL_CLOSEABLE ()))


