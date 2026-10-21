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
(* package bundle.input.automation.module.generic *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.input.automation.module.generic.InputAutomationGenericModuleServiceFactory *)
(* import org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator *)

class inputAutomationGenericModuleBundleActivator () =
  object (self)
    inherit InputAutomationModuleBundleActivator.inputAutomationModuleBundleActivator ()
    
    

    method init () : unit =
        begin
        let inputAutomationGenericModuleServiceFactory : InputAutomationGenericModuleServiceFactory.inputAutomationGenericModuleServiceFactory ref = ref (((InputAutomationGenericModuleServiceFactory.getInstance ()) :> InputAutomationGenericModuleServiceFactory.inputAutomationGenericModuleServiceFactory)) in ();
        ignore (self#setInputAutomationModuleInterface ((!inputAutomationGenericModuleServiceFactory#getInputAutomationModuleInterfaceArray ())));
        ignore (self#setServiceFactory (!inputAutomationGenericModuleServiceFactory))
        end [@@warning "-7"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "InputAutomationGenericModuleBundleActivator" (fun arguments -> Obj.repr (new inputAutomationGenericModuleBundleActivator (Obj.obj arguments)))


