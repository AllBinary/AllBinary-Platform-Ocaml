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
(* package org.allbinary.input.automation.module.osgi *)

open Allbinary_java [@@warning "-33"]
(* import org.osgi.framework.BundleContext *)
(* import bundle.input.automation.module.InputAutomationModuleServiceInterface *)
(* import org.allbinary.osgi.service.InputAutomationServiceConsumer *)

class inputAutomationModuleServiceConsumer (bundleContext) =
  object
    inherit InputAutomationServiceConsumer.inputAutomationServiceConsumer (("InputAutomationModuleServiceInterface"#getName ()), bundleContext, (new InputAutomationModuleOSGIServiceVisitor.inputAutomationModuleOSGIServiceVisitor ()))
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "InputAutomationModuleServiceConsumer" (fun arguments -> Obj.repr (new inputAutomationModuleServiceConsumer (Obj.obj arguments)))


