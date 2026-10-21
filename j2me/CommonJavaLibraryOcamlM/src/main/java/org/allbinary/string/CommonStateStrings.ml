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

class commonStateStrings () =
  object
    val mutable cONTEXT : string = ""
    method cONTEXT = cONTEXT
    method set_cONTEXT value' = cONTEXT <- value'
    val mutable fINISH : string = ""
    method fINISH = fINISH
    method set_fINISH value' = fINISH <- value'
    val mutable cREATE : string = ""
    method cREATE = cREATE
    method set_cREATE value' = cREATE <- value'
    val mutable sTART : string = ""
    method sTART = sTART
    method set_sTART value' = sTART <- value'
    val mutable rESTART : string = ""
    method rESTART = rESTART
    method set_rESTART value' = rESTART <- value'
    val mutable rESUME : string = ""
    method rESUME = rESUME
    method set_rESUME value' = rESUME <- value'
    val mutable pAUSE : string = ""
    method pAUSE = pAUSE
    method set_pAUSE value' = pAUSE <- value'
    val mutable sTOP : string = ""
    method sTOP = sTOP
    method set_sTOP value' = sTOP <- value'
    val mutable dESTROY : string = ""
    method dESTROY = dESTROY
    method set_dESTROY value' = dESTROY <- value'
    val mutable bIND : string = ""
    method bIND = bIND
    method set_bIND value' = bIND <- value'
    val mutable oN_SAVE_INSTANCE_STATE : string = ""
    method oN_SAVE_INSTANCE_STATE = oN_SAVE_INSTANCE_STATE
    method set_oN_SAVE_INSTANCE_STATE value' = oN_SAVE_INSTANCE_STATE <- value'
    val mutable oN_START_COMMAND : string = ""
    method oN_START_COMMAND = oN_START_COMMAND
    method set_oN_START_COMMAND value' = oN_START_COMMAND <- value'

    initializer
      begin
        cONTEXT <- "Context: ";
        fINISH <- "finish";
        cREATE <- "onCreate";
        sTART <- "onStart";
        rESTART <- "onRestart";
        rESUME <- "onResume";
        pAUSE <- "onPause";
        sTOP <- "onStop";
        dESTROY <- "onDestroy";
        bIND <- "onBind";
        oN_SAVE_INSTANCE_STATE <- "onSaveInstanceState";
        oN_START_COMMAND <- "onStartCommand";
        ()
      end
  end
let () = java_register_constructor "CommonStateStrings" (fun arguments -> Obj.repr (new commonStateStrings (Obj.obj arguments)))

let instance = (new commonStateStrings ())
let get_instance () = instance
let () = java_register_static "CommonStateStrings.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "CommonStateStrings.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


