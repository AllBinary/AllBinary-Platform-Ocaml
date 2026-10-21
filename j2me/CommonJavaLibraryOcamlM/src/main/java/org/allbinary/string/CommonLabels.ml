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
(* package org.allbinary.string *)

open Allbinary_java [@@warning "-33"]
(* import jsinterop.annotations.JsType *)
(* import jsinterop.annotations.JsMethod *)
(* import jsinterop.annotations.JsProperty *)

class commonLabels () =
  object
    val mutable wIDTH_LABEL : string = ""
    method wIDTH_LABEL = wIDTH_LABEL
    method set_wIDTH_LABEL value' = wIDTH_LABEL <- value'
    val mutable hEIGHT_LABEL : string = ""
    method hEIGHT_LABEL = hEIGHT_LABEL
    method set_hEIGHT_LABEL value' = hEIGHT_LABEL <- value'
    val mutable eND_LABEL : string = ""
    method eND_LABEL = eND_LABEL
    method set_eND_LABEL value' = eND_LABEL <- value'
    val mutable tOTAL_LABEL : string = ""
    method tOTAL_LABEL = tOTAL_LABEL
    method set_tOTAL_LABEL value' = tOTAL_LABEL <- value'
    val mutable iNDEX_LABEL : string = ""
    method iNDEX_LABEL = iNDEX_LABEL
    method set_iNDEX_LABEL value' = iNDEX_LABEL <- value'
    val mutable sTART_LABEL : string = ""
    method sTART_LABEL = sTART_LABEL
    method set_sTART_LABEL value' = sTART_LABEL <- value'
    val mutable cOMMAND_LABEL : string = ""
    method cOMMAND_LABEL = cOMMAND_LABEL
    method set_cOMMAND_LABEL value' = cOMMAND_LABEL <- value'
    val mutable nAME_LABEL : string = ""
    method nAME_LABEL = nAME_LABEL
    method set_nAME_LABEL value' = nAME_LABEL <- value'
    val mutable sTART : string = ""
    method sTART = sTART
    method set_sTART value' = sTART <- value'
    val mutable eLAPSED : string = ""
    method eLAPSED = eLAPSED
    method set_eLAPSED value' = eLAPSED <- value'
    val mutable cURRENT : string = ""
    method cURRENT = cURRENT
    method set_cURRENT value' = cURRENT <- value'
    val mutable nEXT : string = ""
    method nEXT = nEXT
    method set_nEXT value' = nEXT <- value'
    val mutable iTEM_LABEL : string = ""
    method iTEM_LABEL = iTEM_LABEL
    method set_iTEM_LABEL value' = iTEM_LABEL <- value'
    val mutable rESULT_ : string = ""
    method rESULT_ = rESULT_
    method set_rESULT_ value' = rESULT_ <- value'
    val mutable cOLON_SEP : string = ""
    method cOLON_SEP = cOLON_SEP
    method set_cOLON_SEP value' = cOLON_SEP <- value'

    initializer
      begin
        wIDTH_LABEL <- " Width: ";
        hEIGHT_LABEL <- " Height: ";
        eND_LABEL <- "End: ";
        tOTAL_LABEL <- "Total: ";
        iNDEX_LABEL <- "index: ";
        sTART_LABEL <- "Start: ";
        cOMMAND_LABEL <- "Command: ";
        nAME_LABEL <- "Name: ";
        sTART <- sTART_LABEL;
        eLAPSED <- " Elapsed: ";
        cURRENT <- " Current: ";
        nEXT <- "Next";
        iTEM_LABEL <- "Item: ";
        rESULT_ <- "Result: ";
        cOLON_SEP <- ": ";
        ()
      end
  end
let () = java_register_constructor "CommonLabels" (fun arguments -> Obj.repr (new commonLabels (Obj.obj arguments)))

let instance = (new commonLabels ())
let get_instance () = instance
let () = java_register_static "CommonLabels.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "CommonLabels.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


