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
(* import org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration *)

class inputAutomationConfigurationModuleChangeEvent ((inputAutomationModuleConfiguration_arg : InputAutomationModuleConfiguration.inputAutomationModuleConfiguration)) =
  object (self)
    val mutable inputAutomationModuleConfiguration : InputAutomationModuleConfiguration.inputAutomationModuleConfiguration = (Obj.magic 0)
    method inputAutomationModuleConfiguration = inputAutomationModuleConfiguration
    method set_inputAutomationModuleConfiguration value' = inputAutomationModuleConfiguration <- value'
    
    

    method getInputAutomationModuleConfiguration () : InputAutomationModuleConfiguration.inputAutomationModuleConfiguration =
        begin
        (inputAutomationModuleConfiguration :> InputAutomationModuleConfiguration.inputAutomationModuleConfiguration)
        end
    

    method setInputAutomationModuleConfiguration : 'any1. 'any1 -> unit = fun (inputAutomationModuleConfiguration_arg) ->
        let inputAutomationModuleConfiguration_arg = Obj.repr inputAutomationModuleConfiguration_arg in
        begin
        inputAutomationModuleConfiguration <- (Obj.magic inputAutomationModuleConfiguration_arg)
        end [@@warning "-20"]

    initializer
      begin
        inputAutomationModuleConfiguration <- ((Obj.magic 0) :> InputAutomationModuleConfiguration.inputAutomationModuleConfiguration);
        ();
        (self#setInputAutomationModuleConfiguration (inputAutomationModuleConfiguration_arg))
      end
  end
let () = java_register_constructor "InputAutomationConfigurationModuleChangeEvent" (fun arguments -> Obj.repr (new inputAutomationConfigurationModuleChangeEvent (Obj.obj arguments)))


