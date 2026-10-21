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
(* package org.allbinary.business.context.configuration *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.io.file.CommonDataFileStrings *)

class contextConfigurationData () =
  object
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable uNCRYPTED_EXTENSION : string = ""
    method uNCRYPTED_EXTENSION = uNCRYPTED_EXTENSION
    method set_uNCRYPTED_EXTENSION value' = uNCRYPTED_EXTENSION <- value'
    val mutable eNCRYPTED_EXTENSION : string = ""
    method eNCRYPTED_EXTENSION = eNCRYPTED_EXTENSION
    method set_eNCRYPTED_EXTENSION value' = eNCRYPTED_EXTENSION <- value'
    

    initializer
      begin
        nAME <- "CONTEXT_CONFIGURATION_NAME";
        uNCRYPTED_EXTENSION <- (CommonDataFileStrings.getInstance ())#uNCRYPTED_EXTENSION;
        eNCRYPTED_EXTENSION <- (CommonDataFileStrings.getInstance ())#eNCRYPTED_EXTENSION;
        ();
        ()
      end
  end
let () = java_register_constructor "ContextConfigurationData" (fun arguments -> Obj.repr (new contextConfigurationData (Obj.obj arguments)))

let instance = (new contextConfigurationData ())
let get_instance () = instance
let () = java_register_static "ContextConfigurationData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ContextConfigurationData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


