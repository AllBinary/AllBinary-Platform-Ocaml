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
(* package org.allbinary.emulator.swt *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.eclipse.swt.widgets.Display *)
(* import org.allbinary.thread.NullRunnable *)

class sWTProcessor () =
  object
    val mutable runnable : java_runnable = (Obj.magic 0)
    method runnable = runnable
    method set_runnable value' = runnable <- value'
    

    method process : 'any1. 'any1 -> unit = fun (display) ->
        let display = Obj.repr display in
        begin
        ignore ((Obj.magic display)#sleep ())
        end [@@warning "-20"]

    initializer
      begin
        runnable <- ((NullRunnable.getInstance ()) :> java_runnable);
        ()
      end
  end
let () = java_register_constructor "SWTProcessor" (fun arguments -> Obj.repr (new sWTProcessor (Obj.obj arguments)))

let instance = (new sWTProcessor ())
let get_instance () = instance
let () = java_register_static "SWTProcessor.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "SWTProcessor.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


