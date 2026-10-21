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
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)


let processProfileActionConditions : 'any1. 'any1 * int -> unit = fun (vector, (frame : int)) ->
        let vector = Obj.repr vector in
        begin
        let logUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore ((Obj.magic !logUtil_arg)#putF (!commonStrings#sTART, "CaptureWorkerUtil", "processProfileActionConditions"));
        let size : int ref = ref (((Obj.magic vector)#size ())) in ();
        for index = 0 to !size - 1 do
            let profileActionConditionInterface : ProfileActionScriptConditionInterface.profileActionScriptConditionInterface ref = ref (((Obj.magic ((Obj.magic vector)#get (index))) :> ProfileActionScriptConditionInterface.profileActionScriptConditionInterface)) in ();
            if (!profileActionConditionInterface#shouldProcess (frame)) then begin
                ignore (!profileActionConditionInterface#process (frame))
            end else begin
                ()
            end
        done
        end [@@warning "-20"]

let () = java_register_static "CaptureWorkerUtil.processProfileActionConditions" (fun arguments -> Obj.repr (processProfileActionConditions (Obj.obj arguments)))
class captureWorkerUtil () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "CaptureWorkerUtil" (fun arguments -> Obj.repr (new captureWorkerUtil (Obj.obj arguments)))


