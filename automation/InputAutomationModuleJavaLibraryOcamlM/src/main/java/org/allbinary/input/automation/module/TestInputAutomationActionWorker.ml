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
(* package org.allbinary.input.automation.module *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Set *)
(* import org.allbinary.input.automation.robot.InputRobotFactory *)
(* import org.allbinary.input.automation.robot.InputRobotInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface *)
(* import org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface *)
(* import org.allbinary.util.ABHashtable *)

class testInputAutomationActionWorker ((sleep_arg : int), (inputAutomationActionInterface : InputAutomationActionInterface.inputAutomationActionInterface), (_imageComparatorConstraintsInterface : ImageComparatorConstraintsInterface.imageComparatorConstraintsInterface), (_motionRectangleConstraintsInterface : MotionRectangleConstraintsInterface.motionRectangleConstraintsInterface)) =
  object (self)
    inherit AbstractInputAutomationWorker.abstractInputAutomationWorker (inputAutomationActionInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable sleep : int = 0
    method sleep = sleep
    method set_sleep value' = sleep <- value'
    
    

    method processBetweenWorkers () : unit =
        begin
        ignore (Unix.sleepf (Float.of_int (2000) /. 1000.0))
        end [@@warning "-7"]
    

    method process () : unit =
        begin
        ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sTART, self, (self#commonStrings)#pROCESS));
        let hashtable : Obj.t ref = ref ((Obj.repr ((InputRobotFactory.getInstance ())#get ()))) in ();
        let set : Obj.t ref = ref ((Obj.repr ((Obj.magic !hashtable)#keySet ()))) in ();
        let inputTypeNameArray : Obj.t array ref = ref (((Obj.magic !set)#toArray ())) in ();
        let size : int ref = ref ((Array.length !inputTypeNameArray)) in ();
        for index = 0 to !size - 1 do
            let inputTypeNameString : string ref = ref ((Obj.magic !inputTypeNameArray.(index))) in ();
            let robot : InputRobotInterface.inputRobotInterface ref = ref (((Obj.magic ((Obj.magic !hashtable)#get (!inputTypeNameString))) :> InputRobotInterface.inputRobotInterface)) in ();
            if (sleep > 0) then begin
                ignore (Unix.sleepf (Float.of_int (sleep) /. 1000.0))
            end
        done
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        (* super(...) is the inherit clause *) ();
        ignore ((Obj.magic logUtil)#putF ("BasicTestAttackWorder", self, (self#commonStrings)#cONSTRUCTOR));
        sleep <- sleep_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "TestInputAutomationActionWorker" (fun arguments -> Obj.repr (new testInputAutomationActionWorker (Obj.obj arguments)))


