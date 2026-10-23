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
(* package org.allbinary.input.automation.module.generic *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface *)
(* import org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class inputAutomationGenericModuleServiceFactory () =
  object (self)
    inherit InputAutomationModuleServiceFactory.inputAutomationModuleServiceFactory ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (try
            let inputAutomationModuleInterfaceArray : InputAutomationModuleFactoryInterface.inputAutomationModuleFactoryInterface array ref = ref ((Array.make (1) (Obj.magic 0))) in ();
            !inputAutomationModuleInterfaceArray.(0) <- ((new GenericModuleFactory.genericModuleFactory ()) :> InputAutomationModuleFactoryInterface.inputAutomationModuleFactoryInterface);
            ignore (self#setInputAutomationModuleInterfaceArray (!inputAutomationModuleInterfaceArray))
        with e -> begin
            ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#commonStrings)#cONSTRUCTOR, e))
        end)
      end
  end [@@warning "-20"]
let () = java_register_constructor "InputAutomationGenericModuleServiceFactory" (fun arguments -> Obj.repr (new inputAutomationGenericModuleServiceFactory (Obj.obj arguments)))

let inputAutomationGenericModuleServiceFactory = ref ((new inputAutomationGenericModuleServiceFactory ()))
let get_inputAutomationGenericModuleServiceFactory () = !inputAutomationGenericModuleServiceFactory
let set_inputAutomationGenericModuleServiceFactory value' = inputAutomationGenericModuleServiceFactory := value'
let () = java_register_static "InputAutomationGenericModuleServiceFactory.get_inputAutomationGenericModuleServiceFactory" (fun _ -> Obj.repr (get_inputAutomationGenericModuleServiceFactory ()))

let getInstance () =
        begin
        !inputAutomationGenericModuleServiceFactory
        end
let () = java_register_static "InputAutomationGenericModuleServiceFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


