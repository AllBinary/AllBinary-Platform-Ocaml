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
(* import org.allbinary.input.automation.module.InputAutomationActionInterface *)
(* import org.allbinary.input.automation.robot.InputRobotInterface *)

class genericInputAutomationAction () =
  object
    
    

    method test () : unit =
        begin
        ()
        end
    

    method getInputRobotInterfaceArray () : InputRobotInterface.inputRobotInterface array =
        begin
        (Obj.magic 0)
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "GenericInputAutomationAction" (fun arguments -> Obj.repr (new genericInputAutomationAction (Obj.obj arguments)))


