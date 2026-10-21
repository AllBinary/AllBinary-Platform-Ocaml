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
(* package bundle.input.automation.robot *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.input.automation.robot.InputRobotInterface *)

class inputAutomationRobotService ((inputRobotInterfaceArray_arg : InputRobotInterface.inputRobotInterface array)) =
  object (self)
    val mutable inputRobotInterfaceArray : InputRobotInterface.inputRobotInterface array = (Obj.magic 0)
    method inputRobotInterfaceArray = inputRobotInterfaceArray
    method set_inputRobotInterfaceArray value' = inputRobotInterfaceArray <- value'
    
    

    method getInputRobotInterfaceArray () : InputRobotInterface.inputRobotInterface array =
        begin
        inputRobotInterfaceArray
        end
    

    method setInputRobotInterfaceArray ((inputRobotInterfaceArray_arg : InputRobotInterface.inputRobotInterface array)) : unit =
        begin
        inputRobotInterfaceArray <- inputRobotInterfaceArray_arg
        end

    initializer
      begin
        inputRobotInterfaceArray <- (Obj.magic 0);
        ();
        (self#setInputRobotInterfaceArray (inputRobotInterfaceArray_arg))
      end
  end
let () = java_register_constructor "InputAutomationRobotService" (fun arguments -> Obj.repr (new inputAutomationRobotService (Obj.obj arguments)))


