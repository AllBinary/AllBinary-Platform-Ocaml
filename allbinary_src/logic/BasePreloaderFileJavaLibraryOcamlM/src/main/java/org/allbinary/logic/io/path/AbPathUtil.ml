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
(* package org.allbinary.logic.io.path *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class abPathUtil () =
  object
    val mutable nO_ABPATH : AbPath.abPath = (Obj.magic 0)
    method nO_ABPATH = nO_ABPATH
    method set_nO_ABPATH value' = nO_ABPATH <- value'

    initializer
      begin
        nO_ABPATH <- ((AbPath.createAbPath ()) :> AbPath.abPath);
        ()
      end
  end
let () = java_register_constructor "AbPathUtil" (fun arguments -> Obj.repr (new abPathUtil (Obj.obj arguments)))

let instance = (new abPathUtil ())
let get_instance () = instance
let () = java_register_static "AbPathUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AbPathUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


