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

class simpleShaderInitializer () =
  object
    inherit ShaderInitializer.shaderInitializer ()

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "SimpleShaderInitializer" (fun arguments -> Obj.repr (new simpleShaderInitializer (Obj.obj arguments)))

let instanceC = (new simpleShaderInitializer ())
let get_instanceC () = instanceC
let () = java_register_static "SimpleShaderInitializer.get_instanceC" (fun _ -> Obj.repr (get_instanceC ()))

let getInstance () =
        begin
        instanceC
        end
let () = java_register_static "SimpleShaderInitializer.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


