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
(* package org.allbinary.logic.system.security.licensing *)

open Allbinary_java [@@warning "-33"]

let instance : InputAutomationClientInformation.inputAutomationClientInformation = ((new InputAutomationClientInformation.inputAutomationClientInformation ()) :> InputAutomationClientInformation.inputAutomationClientInformation)
let get_instance () = instance
let () = java_register_static "InputAutomationClientInformationFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () : InputAutomationClientInformation.inputAutomationClientInformation =
        begin
        (instance :> InputAutomationClientInformation.inputAutomationClientInformation)
        end

let () = java_register_static "InputAutomationClientInformationFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class inputAutomationClientInformationFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "InputAutomationClientInformationFactory" (fun arguments -> Obj.repr (new inputAutomationClientInformationFactory (Obj.obj arguments)))


