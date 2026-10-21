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
(* import org.allbinary.input.automation.robot.InputRobotInterface *)
(* import org.allbinary.osgi.OSGIServiceInterface *)

class virtual inputAutomationRobotServiceInterface =
  object
    inherit OSGIServiceInterface.oSGIServiceInterface
    method virtual getInputRobotInterfaceArray : unit -> InputRobotInterface.inputRobotInterface array
  end


