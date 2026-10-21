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
(* package org.allbinary.logic.communication.smtp.event.modules.event.user *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.user.UserInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.smtp.BasicEmail *)
(* import org.allbinary.logic.communication.smtp.EmailInterface *)
(* import org.allbinary.logic.communication.smtp.event.EmailEvent *)
(* import org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface *)
(* import org.allbinary.logic.communication.smtp.queue.EmailQueueFactory *)

class userEmailEventListenerModule ((userInterface_arg : UserInterface.userInterface)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable userInterface : UserInterface.userInterface = (Obj.magic 0)
    method userInterface = userInterface
    method set_userInterface value' = userInterface <- value'
    
    

    method onEmailSendFailure : 'any1. 'any1 -> unit = fun (emailEvent) ->
        let emailEvent = Obj.repr emailEvent in
        begin
        let to_ : string ref = ref ((userInterface#getSecondaryEmail ())) in ();
        let email : BasicEmail.basicEmail ref = ref (((new BasicEmail.basicEmail (((Obj.magic emailEvent)#getEmailInfo ()), !to_)) :> BasicEmail.basicEmail)) in ();
        ignore ((EmailQueueFactory.getInstance ())#offer ((Obj.magic (!email#getEmail ()))))
        end [@@warning "-20"]
    

    method onEmailSendRequest : 'any1. 'any1 -> unit = fun (emailEvent) ->
        let emailEvent = Obj.repr emailEvent in
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGING)) then begin
            ignore ((Obj.magic logUtil)#putF (("Add Email To Que For Sending: " ^ (java_string_of (Obj.repr (Obj.magic emailEvent)))), self, "onEmailSendRequest"))
        end;
        let to_ : string ref = ref ((userInterface#getMainEmail ())) in ();
        let email : BasicEmail.basicEmail ref = ref (((new BasicEmail.basicEmail (((Obj.magic emailEvent)#getEmailInfo ()), !to_)) :> BasicEmail.basicEmail)) in ();
        ignore ((EmailQueueFactory.getInstance ())#offer ((Obj.magic (!email#getEmail ()))))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        userInterface <- userInterface_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "UserEmailEventListenerModule" (fun arguments -> Obj.repr (new userEmailEventListenerModule (Obj.obj arguments)))


