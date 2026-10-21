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
(* package org.allbinary.graphics.opengles.shader *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class shaderManagerFactory () =
  object
    

    method create : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (java_call_static "ShaderManager.getInstance" (Obj.repr ())))))
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ShaderManagerFactory" (fun arguments -> Obj.repr (new shaderManagerFactory (Obj.obj arguments)))

let instance = (new shaderManagerFactory ())
let get_instance () = instance
let () = java_register_static "ShaderManagerFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ShaderManagerFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


