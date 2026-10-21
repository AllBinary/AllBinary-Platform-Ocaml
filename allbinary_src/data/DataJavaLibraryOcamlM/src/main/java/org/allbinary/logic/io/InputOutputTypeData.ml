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
(* package org.allbinary.logic.io *)

open Allbinary_java [@@warning "-33"]

class inputOutputTypeData () =
  object
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable fILE : string = ""
    method fILE = fILE
    method set_fILE value' = fILE <- value'
    val mutable rESPONSE : string = ""
    method rESPONSE = rESPONSE
    method set_rESPONSE value' = rESPONSE <- value'
    val mutable dB : string = ""
    method dB = dB
    method set_dB value' = dB <- value'
    val mutable jSP : string = ""
    method jSP = jSP
    method set_jSP value' = jSP <- value'
    val mutable jSP_FRAGMENT : string = ""
    method jSP_FRAGMENT = jSP_FRAGMENT
    method set_jSP_FRAGMENT value' = jSP_FRAGMENT <- value'
    val mutable pHP : string = ""
    method pHP = pHP
    method set_pHP value' = pHP <- value'
    val mutable aSP : string = ""
    method aSP = aSP
    method set_aSP value' = aSP <- value'
    val mutable pL : string = ""
    method pL = pL
    method set_pL value' = pL <- value'
    val mutable dEFAULT : string = ""
    method dEFAULT = dEFAULT
    method set_dEFAULT value' = dEFAULT <- value'
    val mutable dEFAULT_FRAGMENT : string = ""
    method dEFAULT_FRAGMENT = dEFAULT_FRAGMENT
    method set_dEFAULT_FRAGMENT value' = dEFAULT_FRAGMENT <- value'
    

    initializer
      begin
        nAME <- "INPUT_OUTPUT_TYPE_NAME";
        fILE <- "INPUT_OUTPUT_TYPE_FILE";
        rESPONSE <- "INPUT_OUTPUT_TYPE_RESPONSE";
        dB <- "INPUT_OUTPUT_TYPE_DB";
        jSP <- "jsp";
        jSP_FRAGMENT <- "jspf";
        pHP <- "php";
        aSP <- "asp";
        pL <- "pl";
        dEFAULT <- jSP;
        dEFAULT_FRAGMENT <- jSP_FRAGMENT;
        ();
        ()
      end
  end
let () = java_register_constructor "InputOutputTypeData" (fun arguments -> Obj.repr (new inputOutputTypeData (Obj.obj arguments)))

let instance = (new inputOutputTypeData ())
let get_instance () = instance
let () = java_register_static "InputOutputTypeData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "InputOutputTypeData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


