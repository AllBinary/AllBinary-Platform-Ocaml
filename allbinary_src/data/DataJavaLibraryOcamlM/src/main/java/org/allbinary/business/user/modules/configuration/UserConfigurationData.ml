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
(* package org.allbinary.business.user.modules.configuration *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.io.file.CommonDataFileStrings *)

let nAME : string = "USER_CONFIGURATION_NAME"
let get_nAME () = nAME
let () = java_register_static "UserConfigurationData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let uNCRYPTED_EXTENSION : string = (CommonDataFileStrings.getInstance ())#uNCRYPTED_EXTENSION
let get_uNCRYPTED_EXTENSION () = uNCRYPTED_EXTENSION
let () = java_register_static "UserConfigurationData.get_uNCRYPTED_EXTENSION" (fun _ -> Obj.repr (get_uNCRYPTED_EXTENSION ()))
let eNCRYPTED_EXTENSION : string = (CommonDataFileStrings.getInstance ())#eNCRYPTED_EXTENSION
let get_eNCRYPTED_EXTENSION () = eNCRYPTED_EXTENSION
let () = java_register_static "UserConfigurationData.get_eNCRYPTED_EXTENSION" (fun _ -> Obj.repr (get_eNCRYPTED_EXTENSION ()))
class userConfigurationData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "UserConfigurationData" (fun arguments -> Obj.repr (new userConfigurationData (Obj.obj arguments)))


