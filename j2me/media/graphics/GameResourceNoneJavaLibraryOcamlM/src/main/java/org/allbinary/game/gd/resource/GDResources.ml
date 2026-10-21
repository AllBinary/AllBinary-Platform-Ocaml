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
(* package org.allbinary.game.gd.resource *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class gDResources () =
  object
    val mutable resourceStringArray : string array = (Obj.magic 0)
    method resourceStringArray = resourceStringArray
    method set_resourceStringArray value' = resourceStringArray <- value'
    val mutable currentLayoutRequiredTotal : int = 0
    method currentLayoutRequiredTotal = currentLayoutRequiredTotal
    method set_currentLayoutRequiredTotal value' = currentLayoutRequiredTotal <- value'

    initializer
      begin
        resourceStringArray <- [|  |];
        currentLayoutRequiredTotal <- 0;
        ()
      end
  end
let () = java_register_constructor "GDResources" (fun arguments -> Obj.repr (new gDResources (Obj.obj arguments)))

let instance = (new gDResources ())
let get_instance () = instance
let () = java_register_static "GDResources.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GDResources.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


