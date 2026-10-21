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
(* package org.allbinary.logic.string *)

open Allbinary_java [@@warning "-33"]

class servletStrings () =
  object
    val mutable dOPOST : string = ""
    method dOPOST = dOPOST
    method set_dOPOST value' = dOPOST <- value'
    val mutable dOGET : string = ""
    method dOGET = dOGET
    method set_dOGET value' = dOGET <- value'
    val mutable rEQUEST_EXCEPTION : string = ""
    method rEQUEST_EXCEPTION = rEQUEST_EXCEPTION
    method set_rEQUEST_EXCEPTION value' = rEQUEST_EXCEPTION <- value'

    initializer
      begin
        dOPOST <- "doPost";
        dOGET <- "doGet";
        rEQUEST_EXCEPTION <- "Request Failed";
        ()
      end
  end
let () = java_register_constructor "ServletStrings" (fun arguments -> Obj.repr (new servletStrings (Obj.obj arguments)))

let instance = (new servletStrings ())
let get_instance () = instance
let () = java_register_static "ServletStrings.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ServletStrings.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


