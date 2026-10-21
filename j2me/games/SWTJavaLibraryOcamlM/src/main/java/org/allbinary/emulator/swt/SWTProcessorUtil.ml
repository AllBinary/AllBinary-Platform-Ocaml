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

class sWTProcessorUtil () =
  object
    val mutable swtProcessor : Obj.t = Obj.repr 0
    method swtProcessor : 'r. 'r = Obj.magic swtProcessor
    method set_swtProcessor : 'v. 'v -> unit = fun value' -> swtProcessor <- Obj.repr value'

    initializer
      begin
        swtProcessor <- (Obj.repr (Obj.magic (java_call_static "SWTProcessor.getInstance" (Obj.repr ()))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "SWTProcessorUtil" (fun arguments -> Obj.repr (new sWTProcessorUtil (Obj.obj arguments)))

let instance = (new sWTProcessorUtil ())
let get_instance () = instance
let () = java_register_static "SWTProcessorUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "SWTProcessorUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


