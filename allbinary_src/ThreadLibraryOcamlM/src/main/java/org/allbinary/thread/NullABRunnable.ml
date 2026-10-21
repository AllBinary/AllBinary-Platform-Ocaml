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
(* package org.allbinary.thread *)

open Allbinary_java [@@warning "-33"]

class nullABRunnable () =
  object
    inherit ABRunnable.aBRunnable ()
    

    method isRunning () : bool =
        begin
        false
        end [@@warning "-7"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullABRunnable" (fun arguments -> Obj.repr (new nullABRunnable (Obj.obj arguments)))

let instance = (new nullABRunnable ())
let get_instance () = instance
let () = java_register_static "NullABRunnable.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "NullABRunnable.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


