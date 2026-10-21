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
(* package org.allbinary.logic.communication.log.config.type *)

open Allbinary_java [@@warning "-33"]

class logConfigTypesData () =
  object
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable dESCRIPTION : string = ""
    method dESCRIPTION = dESCRIPTION
    method set_dESCRIPTION value' = dESCRIPTION <- value'

    initializer
      begin
        nAME <- "LOG_CONFIG_TYPES_NAME";
        dESCRIPTION <- "LOG_CONFIG_TYPES_DESCRIPTION";
        ()
      end
  end
let () = java_register_constructor "LogConfigTypesData" (fun arguments -> Obj.repr (new logConfigTypesData (Obj.obj arguments)))

let instance = (new logConfigTypesData ())
let get_instance () = instance
let () = java_register_static "LogConfigTypesData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "LogConfigTypesData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


