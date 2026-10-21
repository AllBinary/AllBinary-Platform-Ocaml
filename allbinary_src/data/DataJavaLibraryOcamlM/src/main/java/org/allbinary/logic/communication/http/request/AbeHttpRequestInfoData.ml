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

class abeHttpRequestInfoData () =
  object
    val mutable hTTP_USER_AGENT : string = ""
    method hTTP_USER_AGENT = hTTP_USER_AGENT
    method set_hTTP_USER_AGENT value' = hTTP_USER_AGENT <- value'
    val mutable rEMOTE_ADDRESS : string = ""
    method rEMOTE_ADDRESS = rEMOTE_ADDRESS
    method set_rEMOTE_ADDRESS value' = rEMOTE_ADDRESS <- value'
    val mutable rEMOTE_HOST : string = ""
    method rEMOTE_HOST = rEMOTE_HOST
    method set_rEMOTE_HOST value' = rEMOTE_HOST <- value'
    val mutable rEMOTE_HOST_BY_ADDRESS : string = ""
    method rEMOTE_HOST_BY_ADDRESS = rEMOTE_HOST_BY_ADDRESS
    method set_rEMOTE_HOST_BY_ADDRESS value' = rEMOTE_HOST_BY_ADDRESS <- value'
    val mutable rEMOTE_PORT : string = ""
    method rEMOTE_PORT = rEMOTE_PORT
    method set_rEMOTE_PORT value' = rEMOTE_PORT <- value'
    val mutable rEQUEST_FILE_PATH : string = ""
    method rEQUEST_FILE_PATH = rEQUEST_FILE_PATH
    method set_rEQUEST_FILE_PATH value' = rEQUEST_FILE_PATH <- value'
    

    initializer
      begin
        hTTP_USER_AGENT <- "HTTP_USER_AGENT";
        rEMOTE_ADDRESS <- "REMOTE_ADDRESS";
        rEMOTE_HOST <- "REMOTE_HOST";
        rEMOTE_HOST_BY_ADDRESS <- "REMOTE_HOST_BY_ADDRESS";
        rEMOTE_PORT <- "REMOTE_PORT";
        rEQUEST_FILE_PATH <- "REQUEST_FILE_PATH";
        ();
        ()
      end
  end
let () = java_register_constructor "AbeHttpRequestInfoData" (fun arguments -> Obj.repr (new abeHttpRequestInfoData (Obj.obj arguments)))

let instance = (new abeHttpRequestInfoData ())
let get_instance () = instance
let () = java_register_static "AbeHttpRequestInfoData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AbeHttpRequestInfoData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


