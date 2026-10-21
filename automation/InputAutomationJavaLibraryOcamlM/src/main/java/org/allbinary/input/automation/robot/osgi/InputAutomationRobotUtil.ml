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
(* import org.allbinary.input.automation.robot.InputRobotInterface *)

class inputAutomationRobotUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "InputAutomationRobotUtil" (fun arguments -> Obj.repr (new inputAutomationRobotUtil (Obj.obj arguments)))

let getChangeEvent : 'any1 'return. 'any1 -> 'return = fun (inputRobotInterface) ->
        let inputRobotInterface = Obj.repr inputRobotInterface in
        begin
        let inputAutomationRobotInterfaceWrapper : InputAutomationRobotInterfaceWrapper.inputAutomationRobotInterfaceWrapper ref = ref (((new InputAutomationRobotInterfaceWrapper.inputAutomationRobotInterfaceWrapper ((Obj.magic inputRobotInterface))) :> InputAutomationRobotInterfaceWrapper.inputAutomationRobotInterfaceWrapper)) in ();
        let inputAutomationRobotChangeEvent : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "InputAutomationRobotChangeEvent" (Obj.repr (!inputAutomationRobotInterfaceWrapper)))))) in ();
        (Obj.magic ((Obj.magic !inputAutomationRobotChangeEvent)))
        end [@@warning "-20"]
let () = java_register_static "InputAutomationRobotUtil.getChangeEvent" (fun arguments -> Obj.repr (getChangeEvent (Obj.obj arguments)))


