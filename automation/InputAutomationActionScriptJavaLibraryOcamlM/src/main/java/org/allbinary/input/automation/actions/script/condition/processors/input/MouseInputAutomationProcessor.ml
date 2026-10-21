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
[@@@warning "-20"]
(* import org.allbinary.input.automation.robot.InputRobotInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonStrings *)


let process : 'any1. 'any1 -> unit = fun (mouseActionScriptInputInterface) ->
        let mouseActionScriptInputInterface = Obj.repr mouseActionScriptInputInterface in
        begin
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore ((Obj.magic !logUtil)#putF ((java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append ("Start - Processing Mouse Input at: "))#append ((java_string_of (Obj.repr ((Obj.magic mouseActionScriptInputInterface)#getPoint ())))))#append (" clicks: "))#appendint ((java_to_int (Obj.repr (((Obj.magic mouseActionScriptInputInterface)#getButtonClicks ())))))))), "MouseInputAutomationProcessor", !commonStrings#pROCESS));
        let inputRobotInterface : InputRobotInterface.inputRobotInterface ref = ref ((((Obj.magic mouseActionScriptInputInterface)#getInputRobotInterface ()) :> InputRobotInterface.inputRobotInterface)) in ();
        if ((((Obj.magic mouseActionScriptInputInterface)#getPoint ())#x != (-1)) && (((Obj.magic mouseActionScriptInputInterface)#getPoint ())#y != (-1))) then begin
            ignore (!inputRobotInterface#mouseMove (((Obj.magic mouseActionScriptInputInterface)#getPoint ())))
        end;
        ignore (Unix.sleepf (Float.of_int (((Obj.magic mouseActionScriptInputInterface)#getTime ())) /. 1000.0));
        if (((Obj.magic mouseActionScriptInputInterface)#getButtonClicks ()) != 0) then begin
            ignore (!inputRobotInterface#mousePress (((Obj.magic mouseActionScriptInputInterface)#getButtonClicks ())));
            ignore (Unix.sleepf (Float.of_int (((Obj.magic mouseActionScriptInputInterface)#getTime ())) /. 1000.0));
            ignore (!inputRobotInterface#mouseRelease (((Obj.magic mouseActionScriptInputInterface)#getButtonClicks ())))
        end;
        ignore (Unix.sleepf (Float.of_int (((Obj.magic mouseActionScriptInputInterface)#getTime ())) /. 1000.0))
        end [@@warning "-20"]

let () = java_register_static "MouseInputAutomationProcessor.process" (fun arguments -> Obj.repr (process (Obj.obj arguments)))
class mouseInputAutomationProcessor () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "MouseInputAutomationProcessor" (fun arguments -> Obj.repr (new mouseInputAutomationProcessor (Obj.obj arguments)))


