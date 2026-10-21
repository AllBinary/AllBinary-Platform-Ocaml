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
(* package org.allbinary.logic.communication.log.config *)

open Allbinary_java [@@warning "-33"]

class logConfigsData () =
  object
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'

    initializer
      begin
        nAME <- "LOG_CONFIGS_NAME";
        ()
      end
  end
let () = java_register_constructor "LogConfigsData" (fun arguments -> Obj.repr (new logConfigsData (Obj.obj arguments)))

let instance = (new logConfigsData ())
let get_instance () = instance
let () = java_register_static "LogConfigsData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "LogConfigsData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


