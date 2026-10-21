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
(* package org.allbinary.logic.control.workflow *)

open Allbinary_java [@@warning "-33"]

class workFlowData () =
  object
    val mutable wORKFLOWS : string = ""
    method wORKFLOWS = wORKFLOWS
    method set_wORKFLOWS value' = wORKFLOWS <- value'
    val mutable wORKFLOW : string = ""
    method wORKFLOW = wORKFLOW
    method set_wORKFLOW value' = wORKFLOW <- value'
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable dATA : string = ""
    method dATA = dATA
    method set_dATA value' = dATA <- value'
    

    initializer
      begin
        wORKFLOWS <- "WORKFLOWS";
        wORKFLOW <- "WORKFLOW";
        nAME <- "WORKFLOW_NAME";
        dATA <- "WORKFLOW_DATA";
        ();
        ()
      end
  end
let () = java_register_constructor "WorkFlowData" (fun arguments -> Obj.repr (new workFlowData (Obj.obj arguments)))

let instance = (new workFlowData ())
let get_instance () = instance
let () = java_register_static "WorkFlowData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "WorkFlowData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


