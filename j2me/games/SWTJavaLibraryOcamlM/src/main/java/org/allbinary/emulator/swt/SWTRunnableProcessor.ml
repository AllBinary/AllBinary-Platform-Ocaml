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
(* import org.eclipse.swt.widgets.Display *)

class sWTRunnableProcessor () =
  object
    inherit SWTProcessor.sWTProcessor ()
    
    

    method process : 'any1. 'any1 -> unit = fun (_display) ->
        begin
        ignore (runnable#run ())
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "SWTRunnableProcessor" (fun arguments -> Obj.repr (new sWTRunnableProcessor (Obj.obj arguments)))

let instanceR = (new sWTRunnableProcessor ())
let get_instanceR () = instanceR
let () = java_register_static "SWTRunnableProcessor.get_instanceR" (fun _ -> Obj.repr (get_instanceR ()))

let getInstance () =
        begin
        instanceR
        end
let () = java_register_static "SWTRunnableProcessor.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


