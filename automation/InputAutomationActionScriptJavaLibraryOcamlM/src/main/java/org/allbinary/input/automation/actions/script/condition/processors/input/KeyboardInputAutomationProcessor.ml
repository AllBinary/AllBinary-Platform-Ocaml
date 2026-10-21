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
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.time.TimeDelayHelper *)


let process : 'any1. 'any1 -> unit = fun (keyActionScriptInputInterface) ->
        let keyActionScriptInputInterface = Obj.repr keyActionScriptInputInterface in
        begin
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore ((Obj.magic !logUtil)#putF ((java_string_of (Obj.repr ((CommonLabels.getInstance ())#sTART)) ^ (java_string_of (Obj.repr (Obj.magic keyActionScriptInputInterface)))), "KeyInputAutomationProcessor", !commonStrings#pROCESS));
        let inputRobotInterface : InputRobotInterface.inputRobotInterface ref = ref ((((Obj.magic keyActionScriptInputInterface)#getInputRobotInterface ()) :> InputRobotInterface.inputRobotInterface)) in ();
        let integer : int array ref = ref (((Obj.magic keyActionScriptInputInterface)#getKeyArray ())) in ();
        if (((Obj.magic keyActionScriptInputInterface)#getDelayBetweenKeys ()) == 0) then begin
            for index = 0 to (Array.length ((Obj.magic keyActionScriptInputInterface)#getKeyArray ())) - 1 do
                if ((Obj.magic keyActionScriptInputInterface)#isPress ()) then begin
                    ignore (!inputRobotInterface#keyPress (!integer.(index)))
                end
            done;
            ignore (Unix.sleepf (Float.of_int (((Obj.magic keyActionScriptInputInterface)#getTime ())) /. 1000.0));
            for index = ((Array.length ((Obj.magic keyActionScriptInputInterface)#getKeyArray ())) - 1) downto 0 do
                if ((Obj.magic keyActionScriptInputInterface)#isRelease ()) then begin
                    ignore (!inputRobotInterface#keyRelease (!integer.(index)))
                end
            done
        end else begin
            for index = 0 to (Array.length ((Obj.magic keyActionScriptInputInterface)#getKeyArray ())) - 1 do
                if ((Obj.magic keyActionScriptInputInterface)#isPress ()) then begin
                    ignore (!inputRobotInterface#keyPress (!integer.(index)))
                end;
                ignore (Unix.sleepf (Float.of_int (((Obj.magic keyActionScriptInputInterface)#getTime ())) /. 1000.0));
                if ((Obj.magic keyActionScriptInputInterface)#isRelease ()) then begin
                    ignore (!inputRobotInterface#keyRelease (!integer.(index)))
                end;
                let timeHelper : TimeDelayHelper.timeDelayHelper ref = ref (((new TimeDelayHelper.timeDelayHelper (((Obj.magic keyActionScriptInputInterface)#getDelayBetweenKeys ()))) :> TimeDelayHelper.timeDelayHelper)) in ();
                let toLong : int ref = ref (0) in ();
                while ((not (!timeHelper#isTimeTNT ())) || (!toLong > 6000)) do
                    toLong := !toLong + 1;
                    ignore (Unix.sleepf (Float.of_int (50) /. 1000.0))
                done
            done
        end
        end [@@warning "-20"]

let () = java_register_static "KeyboardInputAutomationProcessor.process" (fun arguments -> Obj.repr (process (Obj.obj arguments)))
class keyboardInputAutomationProcessor () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "KeyboardInputAutomationProcessor" (fun arguments -> Obj.repr (new keyboardInputAutomationProcessor (Obj.obj arguments)))


