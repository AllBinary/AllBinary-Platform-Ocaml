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
(* package org.allbinary.input.automation.robot.osgi *)

open Allbinary_java [@@warning "-33"]
(* import org.osgi.framework.BundleContext *)
(* import bundle.input.automation.robot.InputAutomationRobotServiceInterface *)
(* import org.allbinary.osgi.service.InputAutomationServiceConsumer *)

class inputAutomationRobotServiceConsumer (bundleContext) =
  object
    inherit InputAutomationServiceConsumer.inputAutomationServiceConsumer (("InputAutomationRobotServiceInterface"#getName ()), bundleContext, (new InputAutomationRobotOSGIServiceVisitor.inputAutomationRobotOSGIServiceVisitor ()))
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "InputAutomationRobotServiceConsumer" (fun arguments -> Obj.repr (new inputAutomationRobotServiceConsumer (Obj.obj arguments)))


