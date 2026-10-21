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
(* package org.allbinary.logic.communication.smtp.configuration.user.event *)

open Allbinary_java [@@warning "-33"]

let nAME : string = "EMAIL_EVENT_CONFIGURATION_NAME"
let get_nAME () = nAME
let () = java_register_static "UserEmailEventConfigurationData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let lISTENER_CLASSPATH : string = "EMAIL_EVENT_CONFIGURATION_LISTENER_CLASSPATH"
let get_lISTENER_CLASSPATH () = lISTENER_CLASSPATH
let () = java_register_static "UserEmailEventConfigurationData.get_lISTENER_CLASSPATH" (fun _ -> Obj.repr (get_lISTENER_CLASSPATH ()))
class userEmailEventConfigurationData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "UserEmailEventConfigurationData" (fun arguments -> Obj.repr (new userEmailEventConfigurationData (Obj.obj arguments)))


