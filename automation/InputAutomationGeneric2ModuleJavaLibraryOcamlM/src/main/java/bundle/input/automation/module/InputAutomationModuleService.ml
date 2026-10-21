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
(* package bundle.input.automation.module *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface *)

class inputAutomationModuleService ((inputAutomationModuleInterfaceArray_arg : InputAutomationModuleFactoryInterface.inputAutomationModuleFactoryInterface array)) =
  object (self)
    val mutable inputAutomationModuleInterfaceArray : InputAutomationModuleFactoryInterface.inputAutomationModuleFactoryInterface array = (Obj.magic 0)
    method inputAutomationModuleInterfaceArray = inputAutomationModuleInterfaceArray
    method set_inputAutomationModuleInterfaceArray value' = inputAutomationModuleInterfaceArray <- value'
    
    

    method getInputAutomationModuleInterfaceArray () : InputAutomationModuleFactoryInterface.inputAutomationModuleFactoryInterface array =
        begin
        inputAutomationModuleInterfaceArray
        end
    

    method setInputAutomationModuleInterfaceArray ((inputAutomationModuleInterfaceArray_arg : InputAutomationModuleFactoryInterface.inputAutomationModuleFactoryInterface array)) : unit =
        begin
        inputAutomationModuleInterfaceArray <- inputAutomationModuleInterfaceArray_arg
        end

    initializer
      begin
        inputAutomationModuleInterfaceArray <- (Obj.magic 0);
        ();
        (self#setInputAutomationModuleInterfaceArray (inputAutomationModuleInterfaceArray_arg))
      end
  end
let () = java_register_constructor "InputAutomationModuleService" (fun arguments -> Obj.repr (new inputAutomationModuleService (Obj.obj arguments)))


