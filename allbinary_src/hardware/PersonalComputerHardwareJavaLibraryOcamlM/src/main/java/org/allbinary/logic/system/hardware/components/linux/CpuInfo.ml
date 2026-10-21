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
(* package org.allbinary.logic.system.hardware.components.linux *)

open Allbinary_java [@@warning "-33"]

class cpuInfo ((name_arg : string)) =
  object
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    
    

    method toString () : string =
        begin
        name
        end

    initializer
      begin
        ();
        ();
        name <- name_arg
      end
  end
let () = java_register_constructor "CpuInfo" (fun arguments -> Obj.repr (new cpuInfo (Obj.obj arguments)))

let pROCESSOR = (new cpuInfo ("processor"))
let get_pROCESSOR () = pROCESSOR
let () = java_register_static "CpuInfo.get_pROCESSOR" (fun _ -> Obj.repr (get_pROCESSOR ()))

let vENDORID = (new cpuInfo ("vendor_id"))
let get_vENDORID () = vENDORID
let () = java_register_static "CpuInfo.get_vENDORID" (fun _ -> Obj.repr (get_vENDORID ()))

let cPUFAMILY = (new cpuInfo ("cpu family"))
let get_cPUFAMILY () = cPUFAMILY
let () = java_register_static "CpuInfo.get_cPUFAMILY" (fun _ -> Obj.repr (get_cPUFAMILY ()))

let mODEL = (new cpuInfo ("model"))
let get_mODEL () = mODEL
let () = java_register_static "CpuInfo.get_mODEL" (fun _ -> Obj.repr (get_mODEL ()))

let mODELNAME = (new cpuInfo ("model name"))
let get_mODELNAME () = mODELNAME
let () = java_register_static "CpuInfo.get_mODELNAME" (fun _ -> Obj.repr (get_mODELNAME ()))

let sTEPPING = (new cpuInfo ("stepping"))
let get_sTEPPING () = sTEPPING
let () = java_register_static "CpuInfo.get_sTEPPING" (fun _ -> Obj.repr (get_sTEPPING ()))

let cPUMHZ = (new cpuInfo ("cpu MHz"))
let get_cPUMHZ () = cPUMHZ
let () = java_register_static "CpuInfo.get_cPUMHZ" (fun _ -> Obj.repr (get_cPUMHZ ()))

let cACHESIZE = (new cpuInfo ("cache size"))
let get_cACHESIZE () = cACHESIZE
let () = java_register_static "CpuInfo.get_cACHESIZE" (fun _ -> Obj.repr (get_cACHESIZE ()))

let fDIVBUG = (new cpuInfo ("fdiv_bug"))
let get_fDIVBUG () = fDIVBUG
let () = java_register_static "CpuInfo.get_fDIVBUG" (fun _ -> Obj.repr (get_fDIVBUG ()))

let hLTBUG = (new cpuInfo ("hlt_bug"))
let get_hLTBUG () = hLTBUG
let () = java_register_static "CpuInfo.get_hLTBUG" (fun _ -> Obj.repr (get_hLTBUG ()))

let f00FBUG = (new cpuInfo ("f00f_bug"))
let get_f00FBUG () = f00FBUG
let () = java_register_static "CpuInfo.get_f00FBUG" (fun _ -> Obj.repr (get_f00FBUG ()))

let cOMABUG = (new cpuInfo ("coma_bug"))
let get_cOMABUG () = cOMABUG
let () = java_register_static "CpuInfo.get_cOMABUG" (fun _ -> Obj.repr (get_cOMABUG ()))

let fPU = (new cpuInfo ("fpu"))
let get_fPU () = fPU
let () = java_register_static "CpuInfo.get_fPU" (fun _ -> Obj.repr (get_fPU ()))

let fPUEXCEPTION = (new cpuInfo ("fpu_exception"))
let get_fPUEXCEPTION () = fPUEXCEPTION
let () = java_register_static "CpuInfo.get_fPUEXCEPTION" (fun _ -> Obj.repr (get_fPUEXCEPTION ()))

let cPUIDLEVEL = (new cpuInfo ("cache size"))
let get_cPUIDLEVEL () = cPUIDLEVEL
let () = java_register_static "CpuInfo.get_cPUIDLEVEL" (fun _ -> Obj.repr (get_cPUIDLEVEL ()))

let wP = (new cpuInfo ("yes"))
let get_wP () = wP
let () = java_register_static "CpuInfo.get_wP" (fun _ -> Obj.repr (get_wP ()))

let fLAGS = (new cpuInfo ("flags"))
let get_fLAGS () = fLAGS
let () = java_register_static "CpuInfo.get_fLAGS" (fun _ -> Obj.repr (get_fLAGS ()))

let bOGOMIPS = (new cpuInfo ("bogomips"))
let get_bOGOMIPS () = bOGOMIPS
let () = java_register_static "CpuInfo.get_bOGOMIPS" (fun _ -> Obj.repr (get_bOGOMIPS ()))


