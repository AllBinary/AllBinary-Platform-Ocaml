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

class modelViewProjection () =
  object
    

    method get () : float array =
        begin
        (Obj.magic 0)
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ModelViewProjection" (fun arguments -> Obj.repr (new modelViewProjection (Obj.obj arguments)))

let instance = (new modelViewProjection ())
let get_instance () = instance
let () = java_register_static "ModelViewProjection.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ModelViewProjection.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


