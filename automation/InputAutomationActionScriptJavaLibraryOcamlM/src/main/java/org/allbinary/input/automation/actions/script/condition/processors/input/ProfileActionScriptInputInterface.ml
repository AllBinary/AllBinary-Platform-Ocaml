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
(* package org.allbinary.input.automation.actions.script.condition.processors.input *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface *)
(* import org.allbinary.input.automation.robot.InputRobotInterface *)

class virtual profileActionScriptInputInterface =
  object
    inherit ProfileActionScriptProcessorInterface.profileActionScriptProcessorInterface
    method virtual setInputRobotInterface : 'any1 . 'any1 -> unit
    method virtual getInputRobotInterface : unit -> InputRobotInterface.inputRobotInterface
    method virtual getTime : unit -> int
    method virtual setTime : int -> unit
  end


