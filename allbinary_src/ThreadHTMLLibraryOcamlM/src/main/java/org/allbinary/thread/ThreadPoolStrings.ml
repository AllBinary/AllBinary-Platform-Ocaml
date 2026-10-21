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
(* package org.allbinary.thread *)

open Allbinary_java [@@warning "-33"]

class threadPoolStrings () =
  object
    val mutable aDD_TASK : string = ""
    method aDD_TASK = aDD_TASK
    method set_aDD_TASK value' = aDD_TASK <- value'
    val mutable sTART_TASK : string = ""
    method sTART_TASK = sTART_TASK
    method set_sTART_TASK value' = sTART_TASK <- value'
    val mutable cOMPLETE_TASK : string = ""
    method cOMPLETE_TASK = cOMPLETE_TASK
    method set_cOMPLETE_TASK value' = cOMPLETE_TASK <- value'

    initializer
      begin
        aDD_TASK <- "addTask";
        sTART_TASK <- "Started Task: ";
        cOMPLETE_TASK <- "Completed Task: ";
        ()
      end
  end
let () = java_register_constructor "ThreadPoolStrings" (fun arguments -> Obj.repr (new threadPoolStrings (Obj.obj arguments)))

let instance = (new threadPoolStrings ())
let get_instance () = instance
let () = java_register_static "ThreadPoolStrings.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ThreadPoolStrings.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


