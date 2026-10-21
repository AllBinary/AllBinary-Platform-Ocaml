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
(* package org.allbinary *)

open Allbinary_java [@@warning "-33"]

class threedResources () =
  object
    

    method add () : unit =
        begin
        ()
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ThreedResources" (fun arguments -> Obj.repr (new threedResources (Obj.obj arguments)))

let threedResources = (new threedResources ())
let get_threedResources () = threedResources
let () = java_register_static "ThreedResources.get_threedResources" (fun _ -> Obj.repr (get_threedResources ()))

let getThreedResources () =
        begin
        threedResources
        end
let () = java_register_static "ThreedResources.getThreedResources" (fun arguments -> Obj.repr (getThreedResources (Obj.obj arguments)))


