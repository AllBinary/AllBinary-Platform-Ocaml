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
(* package org.allbinary.logic.communication.smtp.configuration.user *)

open Allbinary_java [@@warning "-33"]

let nAME : string = "USER_EMAIL_CONFIGURATION_NAME"
let get_nAME () = nAME
let () = java_register_static "UserEmailConfigurationData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
class userEmailConfigurationData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "UserEmailConfigurationData" (fun arguments -> Obj.repr (new userEmailConfigurationData (Obj.obj arguments)))


