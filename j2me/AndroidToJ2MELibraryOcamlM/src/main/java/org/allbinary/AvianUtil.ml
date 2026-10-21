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


let isAvian () : bool =
        begin
        false
        end

let () = java_register_static "AvianUtil.isAvian" (fun arguments -> Obj.repr (isAvian (Obj.obj arguments)))
class avianUtil () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "AvianUtil" (fun arguments -> Obj.repr (new avianUtil (Obj.obj arguments)))


