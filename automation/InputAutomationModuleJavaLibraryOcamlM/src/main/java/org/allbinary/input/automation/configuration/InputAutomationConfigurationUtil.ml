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
(* package org.allbinary.input.automation.configuration *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface *)
(* import org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration *)


let getChangeEvent : 'any1. 'any1 -> InputAutomationConfigurationModuleChangeEvent.inputAutomationConfigurationModuleChangeEvent = fun (inputAutomationModuleInterface) ->
        let inputAutomationModuleInterface = Obj.repr inputAutomationModuleInterface in
        begin
        let inputAutomationModuleConfiguration : InputAutomationModuleConfiguration.inputAutomationModuleConfiguration ref = ref (((new InputAutomationModuleConfiguration.inputAutomationModuleConfiguration ((Obj.magic inputAutomationModuleInterface))) :> InputAutomationModuleConfiguration.inputAutomationModuleConfiguration)) in ();
        let inputAutomationConfigurationModuleChangeEvent : InputAutomationConfigurationModuleChangeEvent.inputAutomationConfigurationModuleChangeEvent ref = ref (((new InputAutomationConfigurationModuleChangeEvent.inputAutomationConfigurationModuleChangeEvent (!inputAutomationModuleConfiguration)) :> InputAutomationConfigurationModuleChangeEvent.inputAutomationConfigurationModuleChangeEvent)) in ();
        (!inputAutomationConfigurationModuleChangeEvent :> InputAutomationConfigurationModuleChangeEvent.inputAutomationConfigurationModuleChangeEvent)
        end [@@warning "-20"]

let () = java_register_static "InputAutomationConfigurationUtil.getChangeEvent" (fun arguments -> Obj.repr (getChangeEvent (Obj.obj arguments)))
class inputAutomationConfigurationUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "InputAutomationConfigurationUtil" (fun arguments -> Obj.repr (new inputAutomationConfigurationUtil (Obj.obj arguments)))


