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
[@@@warning "-20"]

class inputAutomationRobotChangeEvent ((inputAutomationRobotInterfaceWrapper_arg : InputAutomationRobotInterfaceWrapper.inputAutomationRobotInterfaceWrapper)) =
  object (self)
    val mutable inputAutomationRobotInterfaceWrapper : InputAutomationRobotInterfaceWrapper.inputAutomationRobotInterfaceWrapper = (Obj.magic 0)
    method inputAutomationRobotInterfaceWrapper = inputAutomationRobotInterfaceWrapper
    method set_inputAutomationRobotInterfaceWrapper value' = inputAutomationRobotInterfaceWrapper <- value'
    
    

    method getInputAutomationRobotInterfaceWrapper () : InputAutomationRobotInterfaceWrapper.inputAutomationRobotInterfaceWrapper =
        begin
        (inputAutomationRobotInterfaceWrapper :> InputAutomationRobotInterfaceWrapper.inputAutomationRobotInterfaceWrapper)
        end
    

    method setInputAutomationRobotInterfaceWrapper : 'any1. 'any1 -> unit = fun (inputAutomationRobotInterfaceWrapper_arg) ->
        let inputAutomationRobotInterfaceWrapper_arg = Obj.repr inputAutomationRobotInterfaceWrapper_arg in
        begin
        inputAutomationRobotInterfaceWrapper <- (Obj.magic inputAutomationRobotInterfaceWrapper_arg)
        end [@@warning "-20"]

    initializer
      begin
        inputAutomationRobotInterfaceWrapper <- ((Obj.magic 0) :> InputAutomationRobotInterfaceWrapper.inputAutomationRobotInterfaceWrapper);
        ();
        (self#setInputAutomationRobotInterfaceWrapper (inputAutomationRobotInterfaceWrapper_arg))
      end
  end
let () = java_register_constructor "InputAutomationRobotChangeEvent" (fun arguments -> Obj.repr (new inputAutomationRobotChangeEvent (Obj.obj arguments)))


