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

let rEQUEST : string = "REQUESTDATA_REQUEST"
let get_rEQUEST () = rEQUEST
let () = java_register_static "RequestData.get_rEQUEST" (fun _ -> Obj.repr (get_rEQUEST ()))
let pARAMETER : string = "REQUESTDATA_PARAMETER"
let get_pARAMETER () = pARAMETER
let () = java_register_static "RequestData.get_pARAMETER" (fun _ -> Obj.repr (get_pARAMETER ()))
let vIEWS : string = "REQUESTDATA_VIEWS"
let get_vIEWS () = vIEWS
let () = java_register_static "RequestData.get_vIEWS" (fun _ -> Obj.repr (get_vIEWS ()))
let vISITORS : string = "REQUESTDATA_VISITORS"
let get_vISITORS () = vISITORS
let () = java_register_static "RequestData.get_vISITORS" (fun _ -> Obj.repr (get_vISITORS ()))
class requestData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "RequestData" (fun arguments -> Obj.repr (new requestData (Obj.obj arguments)))


