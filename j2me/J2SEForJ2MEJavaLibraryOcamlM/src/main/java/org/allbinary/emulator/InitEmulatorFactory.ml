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
(* package org.allbinary.emulator *)

open Allbinary_java [@@warning "-33"]

class initEmulatorFactory () =
  object
    val mutable initEmulator : bool = false
    method initEmulator = initEmulator
    method set_initEmulator value' = initEmulator <- value'
    

    method setInitEmulator ((initEmulator_arg : bool)) : unit =
        begin
        initEmulator <- initEmulator_arg
        end
    

    method isInitEmulator () : bool =
        begin
        initEmulator
        end

    initializer
      begin
        initEmulator <- false;
        ()
      end
  end
let () = java_register_constructor "InitEmulatorFactory" (fun arguments -> Obj.repr (new initEmulatorFactory (Obj.obj arguments)))

let instance = (new initEmulatorFactory ())
let get_instance () = instance
let () = java_register_static "InitEmulatorFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "InitEmulatorFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


