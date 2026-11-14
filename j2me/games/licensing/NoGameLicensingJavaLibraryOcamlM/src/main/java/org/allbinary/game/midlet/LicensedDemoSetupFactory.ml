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

class licensedDemoSetupFactory () =
  object
    

    method getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((new DemoSetup.demoSetup ())))
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "LicensedDemoSetupFactory" (fun arguments -> Obj.repr (new licensedDemoSetupFactory (Obj.obj arguments)))


