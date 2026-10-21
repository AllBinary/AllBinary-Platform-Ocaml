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

class inputAutomationRobotInterfaceWrapper ((inputRobotInterface_arg : InputRobotInterface.inputRobotInterface)) =
  object (self)
    val mutable inputRobotInterface : InputRobotInterface.inputRobotInterface = (Obj.magic 0)
    method inputRobotInterface = inputRobotInterface
    method set_inputRobotInterface value' = inputRobotInterface <- value'
    
    

    method getInputRobotInterface () : InputRobotInterface.inputRobotInterface =
        begin
        (inputRobotInterface :> InputRobotInterface.inputRobotInterface)
        end
    

    method setInputRobotInterface : 'any1. 'any1 -> unit = fun (inputRobotInterface_arg) ->
        let inputRobotInterface_arg = Obj.repr inputRobotInterface_arg in
        begin
        inputRobotInterface <- (Obj.magic inputRobotInterface_arg)
        end [@@warning "-20"]

    initializer
      begin
        inputRobotInterface <- ((Obj.magic 0) :> InputRobotInterface.inputRobotInterface);
        ();
        (self#setInputRobotInterface (inputRobotInterface_arg))
      end
  end
let () = java_register_constructor "InputAutomationRobotInterfaceWrapper" (fun arguments -> Obj.repr (new inputAutomationRobotInterfaceWrapper (Obj.obj arguments)))


