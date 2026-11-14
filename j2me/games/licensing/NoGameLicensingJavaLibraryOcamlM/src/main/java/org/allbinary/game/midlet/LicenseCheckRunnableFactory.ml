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
(* package org.allbinary.game.midlet *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.thread.ABRunnable *)
(* import org.allbinary.thread.NullABRunnable *)

class licenseCheckRunnableFactory () =
  object
    

    method getInstance : 'any1 'return. 'any1 -> 'return = fun (_specialDemoGameMidlet) ->
        begin
        (Obj.magic ((NullABRunnable.getInstance ())))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "LicenseCheckRunnableFactory" (fun arguments -> Obj.repr (new licenseCheckRunnableFactory (Obj.obj arguments)))


