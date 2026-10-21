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

let hASHMAP : string = "MULTIPART_REQUEST_HASHMAP"
let get_hASHMAP () = hASHMAP
let () = java_register_static "MultipartRequestParamsData.get_hASHMAP" (fun _ -> Obj.repr (get_hASHMAP ()))
class multipartRequestParamsData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "MultipartRequestParamsData" (fun arguments -> Obj.repr (new multipartRequestParamsData (Obj.obj arguments)))


