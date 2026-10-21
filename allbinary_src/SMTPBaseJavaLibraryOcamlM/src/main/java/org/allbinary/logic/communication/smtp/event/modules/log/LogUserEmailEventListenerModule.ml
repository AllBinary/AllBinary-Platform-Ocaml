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
(* package org.allbinary.logic.communication.smtp.event.modules.log *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.smtp.event.EmailEvent *)
(* import org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface *)

class logUserEmailEventListenerModule () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method onEmailSendRequest : 'any1. 'any1 -> unit = fun (userEmailInfoEvent) ->
        let userEmailInfoEvent = Obj.repr userEmailInfoEvent in
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGING)) then begin
            let message : string ref = ref (("Logging EmailEvent - Temporary Listener for debugging.\n\n" ^ (java_string_of (Obj.repr (Obj.magic userEmailInfoEvent))))) in ();
            ignore ((Obj.magic logUtil)#putF (!message, self, "onEmailSendRequest"))
        end
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "LogUserEmailEventListenerModule" (fun arguments -> Obj.repr (new logUserEmailEventListenerModule (Obj.obj arguments)))


