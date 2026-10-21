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
(* package org.allbinary.media.image.comparison.motion *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.Rectangle *)
(* import java.awt.event.InputEvent *)
(* import java.awt.event.KeyEvent *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.input.automation.robot.InputRobotFactory *)
(* import org.allbinary.input.automation.robot.InputRobotInterface *)
(* import org.allbinary.input.automation.robot.TempInputRobotNames *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.time.TimeDelayHelper *)
(* import org.allbinary.util.ABHashtable *)

class testInputForMotionRectanglesResultsWorker () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable index : int = 0
    method index = index
    method set_index value' = index <- value'
    val mutable running : bool = false
    method running = running
    method set_running value' = running <- value'
    val mutable motionRectanglesVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method motionRectanglesVector = motionRectanglesVector
    method set_motionRectanglesVector value' = motionRectanglesVector <- value'
    
    

    method getMotionRectanglesVector () : BasicArrayList.basicArrayList =
        begin
        (motionRectanglesVector :> BasicArrayList.basicArrayList)
        end
    

    method onMotionRectanglesImageComparisonResultsEvent : 'any1. 'any1 -> unit = fun (motionRectanglesImageComparisonResultsEvent) ->
        let motionRectanglesImageComparisonResultsEvent = Obj.repr motionRectanglesImageComparisonResultsEvent in
        begin
        ignore ((self#getMotionRectanglesVector ())#add (((Obj.magic motionRectanglesImageComparisonResultsEvent)#getMotionRectangles ())));
        (self#run ())
        end [@@warning "-20"]
    

    method onEvent : 'any1. 'any1 -> unit = fun (allBinaryEventObject) ->
        let allBinaryEventObject = Obj.repr allBinaryEventObject in
        begin
        (self#onMotionRectanglesImageComparisonResultsEvent ((Obj.magic (Obj.magic allBinaryEventObject))))
        end [@@warning "-20"]
    

    method isRunning () : bool =
        begin
        running
        end
    

    method setRunning ((running_arg : bool)) : unit =
        begin
        running <- running_arg
        end
    

    method run () : unit =
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#rUN));
            (self#setRunning (true));
            let timeHelper : TimeDelayHelper.timeDelayHelper ref = ref (((new TimeDelayHelper.timeDelayHelper (1000)) :> TimeDelayHelper.timeDelayHelper)) in ();
            ignore (!timeHelper#setStartTimeTNT ());
            let motionRectangles : MotionRectangles.motionRectangles ref = ref (((Obj.magic ((self#getMotionRectanglesVector ())#get (0))) :> MotionRectangles.motionRectangles)) in ();
            let motionRectangleVector : BasicArrayList.basicArrayList ref = ref (((!motionRectangles#getVector ()) :> BasicArrayList.basicArrayList)) in ();
            if ((!motionRectangleVector#size ()) > 0) then begin
                let rectangle : Obj.t ref = ref ((Obj.repr (Obj.magic (!motionRectangleVector#get (0))))) in ();
                let robotHashtable : Obj.t ref = ref ((Obj.repr ((InputRobotFactory.getInstance ())#get ()))) in ();
                let inputTypeNameArray : Obj.t array ref = ref ((((Obj.magic !robotHashtable)#keySet ())#toArray ())) in ();
                let size : int ref = ref ((Array.length !inputTypeNameArray)) in ();
                for index_arg = 0 to !size - 1 do
                    let inputTypeNameString : string ref = ref ((Obj.magic !inputTypeNameArray.(index_arg))) in ();
                    let inputRobotInterface : InputRobotInterface.inputRobotInterface ref = ref (((Obj.magic ((Obj.magic !robotHashtable)#get (!inputTypeNameString))) :> InputRobotInterface.inputRobotInterface)) in ();
                    ignore (!inputRobotInterface#mouseMoveToTarget ((Obj.magic !rectangle)));
                    if (((!inputRobotInterface#getName ())#compareTo ((TempInputRobotNames.get_dX_NAME ()))) == 0) then begin
                        ignore (!inputRobotInterface#mousePress ((InputEvent.get_bUTTON1_MASK ())));
                        ignore (Unix.sleepf (Float.of_int (300) /. 1000.0));
                        ignore (!inputRobotInterface#mouseRelease ((InputEvent.get_bUTTON1_MASK ())));
                        ignore (!inputRobotInterface#mousePress ((InputEvent.get_bUTTON2_MASK ())));
                        ignore (Unix.sleepf (Float.of_int (300) /. 1000.0));
                        ignore (!inputRobotInterface#mouseRelease ((InputEvent.get_bUTTON2_MASK ())));
                        ignore (!inputRobotInterface#mousePress ((InputEvent.get_bUTTON3_MASK ())));
                        ignore (Unix.sleepf (Float.of_int (300) /. 1000.0));
                        ignore (!inputRobotInterface#mouseRelease ((InputEvent.get_bUTTON3_MASK ())));
                        ignore (!inputRobotInterface#keyPress ((KeyEvent.get_vK_1 ())));
                        ignore (Unix.sleepf (Float.of_int (300) /. 1000.0));
                        ignore (!inputRobotInterface#keyRelease ((KeyEvent.get_vK_1 ())));
                        ignore (!inputRobotInterface#keyPress ((KeyEvent.get_vK_2 ())));
                        ignore (Unix.sleepf (Float.of_int (300) /. 1000.0));
                        ignore (!inputRobotInterface#keyRelease ((KeyEvent.get_vK_2 ())));
                        ignore (!inputRobotInterface#keyPress ((KeyEvent.get_vK_3 ())));
                        ignore (Unix.sleepf (Float.of_int (300) /. 1000.0));
                        ignore (!inputRobotInterface#keyRelease ((KeyEvent.get_vK_3 ())));
                        ignore (!inputRobotInterface#keyPress ((KeyEvent.get_vK_4 ())));
                        ignore (Unix.sleepf (Float.of_int (300) /. 1000.0));
                        ignore (!inputRobotInterface#keyRelease ((KeyEvent.get_vK_4 ())));
                        ignore (!inputRobotInterface#keyPress ((KeyEvent.get_vK_F1 ())));
                        ignore (Unix.sleepf (Float.of_int (300) /. 1000.0));
                        ignore (!inputRobotInterface#keyRelease ((KeyEvent.get_vK_F1 ())))
                    end
                done
            end;
            index <- index + 1;
            ignore ((self#getMotionRectanglesVector ())#remove (!motionRectangles));
            ignore ((Obj.magic logUtil)#putF (((CommonLabels.getInstance ())#eLAPSED + (!timeHelper#getElapsedTNT ())), self, commonStrings#rUN));
            ignore ((Obj.magic logUtil)#putF (commonStrings#eND, self, commonStrings#rUN))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#rUN, e))
        end)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        index <- 0;
        running <- false;
        ();
        ();
        motionRectanglesVector <- (new BasicArrayListD.basicArrayListD ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "TestInputForMotionRectanglesResultsWorker" (fun arguments -> Obj.repr (new testInputForMotionRectanglesResultsWorker (Obj.obj arguments)))


