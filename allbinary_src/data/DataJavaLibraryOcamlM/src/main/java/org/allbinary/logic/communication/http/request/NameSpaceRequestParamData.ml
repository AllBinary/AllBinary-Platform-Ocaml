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
(* package org.allbinary.logic.communication.http.request *)

open Allbinary_java [@@warning "-33"]

let nAME : string = "NAMESPACE_REQUESTDATA_NAME"
let get_nAME () = nAME
let () = java_register_static "NameSpaceRequestParamData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let vALUE : string = "INPUT_VALUE"
let get_vALUE () = vALUE
let () = java_register_static "NameSpaceRequestParamData.get_vALUE" (fun _ -> Obj.repr (get_vALUE ()))
let pROPERTIES : string = "_PROPERTIES_"
let get_pROPERTIES () = pROPERTIES
let () = java_register_static "NameSpaceRequestParamData.get_pROPERTIES" (fun _ -> Obj.repr (get_pROPERTIES ()))
let sEP : string = "_DOT_"
let get_sEP () = sEP
let () = java_register_static "NameSpaceRequestParamData.get_sEP" (fun _ -> Obj.repr (get_sEP ()))
let pROPERTIESSEPARATOR : string = "_PROPDOT_"
let get_pROPERTIESSEPARATOR () = pROPERTIESSEPARATOR
let () = java_register_static "NameSpaceRequestParamData.get_pROPERTIESSEPARATOR" (fun _ -> Obj.repr (get_pROPERTIESSEPARATOR ()))
let dOCUMENT : string = "NAMESPACE_REQUESTDATA_DOCUMENT"
let get_dOCUMENT () = dOCUMENT
let () = java_register_static "NameSpaceRequestParamData.get_dOCUMENT" (fun _ -> Obj.repr (get_dOCUMENT ()))
class nameSpaceRequestParamData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "NameSpaceRequestParamData" (fun arguments -> Obj.repr (new nameSpaceRequestParamData (Obj.obj arguments)))


