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
(* package org.allbinary.log *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.StdUtil *)

let logging : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList))
let get_logging () = !logging
let set_logging value' = logging := value'
let () = java_register_static "LOGGING.get_logging" (fun _ -> Obj.repr (get_logging ()))

let contains : 'any1. 'any1 -> bool = fun (logType) ->
        let logType = Obj.repr logType in
        begin
        (!logging#contains ((java_string_of (Obj.repr (Obj.magic logType)))))
        end [@@warning "-20"]

let () = java_register_static "LOGGING.contains" (fun arguments -> Obj.repr (contains (Obj.obj arguments)))
class lOGGING ((value : string)) =
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
        name <- value;
        ignore (!logging#add (value))
      end
  end
let () = java_register_constructor "LOGGING" (fun arguments -> Obj.repr (new lOGGING (Obj.obj arguments)))

let gRAPHICSPAINT = (new lOGGING ("Graphics Paint"))
let get_gRAPHICSPAINT () = gRAPHICSPAINT
let () = java_register_static "LOGGING.get_gRAPHICSPAINT" (fun _ -> Obj.repr (get_gRAPHICSPAINT ()))

let gRAPHICSCREATION = (new lOGGING ("Graphics Creation"))
let get_gRAPHICSCREATION () = gRAPHICSCREATION
let () = java_register_static "LOGGING.get_gRAPHICSCREATION" (fun _ -> Obj.repr (get_gRAPHICSCREATION ()))

let gRAPHICSDELETION = (new lOGGING ("Graphics Deletion"))
let get_gRAPHICSDELETION () = gRAPHICSDELETION
let () = java_register_static "LOGGING.get_gRAPHICSDELETION" (fun _ -> Obj.repr (get_gRAPHICSDELETION ()))

let lOADINGERROR = (new lOGGING ("Loading Error"))
let get_lOADINGERROR () = lOADINGERROR
let () = java_register_static "LOGGING.get_lOADINGERROR" (fun _ -> Obj.repr (get_lOADINGERROR ()))

let mENUEVENT = (new lOGGING ("Menu Action Event"))
let get_mENUEVENT () = mENUEVENT
let () = java_register_static "LOGGING.get_mENUEVENT" (fun _ -> Obj.repr (get_mENUEVENT ()))

let mOUSEEVENT = (new lOGGING ("Mouse Action Event"))
let get_mOUSEEVENT () = mOUSEEVENT
let () = java_register_static "LOGGING.get_mOUSEEVENT" (fun _ -> Obj.repr (get_mOUSEEVENT ()))

let kEYEVENT = (new lOGGING ("Keyboard Action Event"))
let get_kEYEVENT () = kEYEVENT
let () = java_register_static "LOGGING.get_kEYEVENT" (fun _ -> Obj.repr (get_kEYEVENT ()))

let aCTIONEVENT = (new lOGGING ("Action Event"))
let get_aCTIONEVENT () = aCTIONEVENT
let () = java_register_static "LOGGING.get_aCTIONEVENT" (fun _ -> Obj.repr (get_aCTIONEVENT ()))

let aDJUSTMENTEVENT = (new lOGGING ("Adjustment Action Event"))
let get_aDJUSTMENTEVENT () = aDJUSTMENTEVENT
let () = java_register_static "LOGGING.get_aDJUSTMENTEVENT" (fun _ -> Obj.repr (get_aDJUSTMENTEVENT ()))

let cOMPONENTEVENT = (new lOGGING ("Component Action Event"))
let get_cOMPONENTEVENT () = cOMPONENTEVENT
let () = java_register_static "LOGGING.get_cOMPONENTEVENT" (fun _ -> Obj.repr (get_cOMPONENTEVENT ()))

let cONTAINEREVENT = (new lOGGING ("Container Action Event"))
let get_cONTAINEREVENT () = cONTAINEREVENT
let () = java_register_static "LOGGING.get_cONTAINEREVENT" (fun _ -> Obj.repr (get_cONTAINEREVENT ()))

let fOCUSEVENT = (new lOGGING ("Focus Action Event"))
let get_fOCUSEVENT () = fOCUSEVENT
let () = java_register_static "LOGGING.get_fOCUSEVENT" (fun _ -> Obj.repr (get_fOCUSEVENT ()))

let hIERARCHYEVENT = (new lOGGING ("Hierarchy Action Event"))
let get_hIERARCHYEVENT () = hIERARCHYEVENT
let () = java_register_static "LOGGING.get_hIERARCHYEVENT" (fun _ -> Obj.repr (get_hIERARCHYEVENT ()))

let iNPUTEVENT = (new lOGGING ("Input Action Event"))
let get_iNPUTEVENT () = iNPUTEVENT
let () = java_register_static "LOGGING.get_iNPUTEVENT" (fun _ -> Obj.repr (get_iNPUTEVENT ()))

let iNVOCATIONEVENT = (new lOGGING ("Invocation Action Event"))
let get_iNVOCATIONEVENT () = iNVOCATIONEVENT
let () = java_register_static "LOGGING.get_iNVOCATIONEVENT" (fun _ -> Obj.repr (get_iNVOCATIONEVENT ()))

let iTEMEVENT = (new lOGGING ("Item Action Event"))
let get_iTEMEVENT () = iTEMEVENT
let () = java_register_static "LOGGING.get_iTEMEVENT" (fun _ -> Obj.repr (get_iTEMEVENT ()))

let pAINTEVENT = (new lOGGING ("Paint Action Event"))
let get_pAINTEVENT () = pAINTEVENT
let () = java_register_static "LOGGING.get_pAINTEVENT" (fun _ -> Obj.repr (get_pAINTEVENT ()))

let tEXTEVENT = (new lOGGING ("Text Action Event"))
let get_tEXTEVENT () = tEXTEVENT
let () = java_register_static "LOGGING.get_tEXTEVENT" (fun _ -> Obj.repr (get_tEXTEVENT ()))

let wINDOWEVENT = (new lOGGING ("Window Action Event"))
let get_wINDOWEVENT () = wINDOWEVENT
let () = java_register_static "LOGGING.get_wINDOWEVENT" (fun _ -> Obj.repr (get_wINDOWEVENT ()))


