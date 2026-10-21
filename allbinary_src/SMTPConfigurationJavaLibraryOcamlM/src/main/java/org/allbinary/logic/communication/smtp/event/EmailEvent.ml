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
(* package org.allbinary.logic.communication.smtp.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.EventObject *)
(* import org.allbinary.logic.communication.smtp.info.EmailInfo *)
(* import org.allbinary.logic.string.StringMaker *)

class emailEvent ((emailEventHandler : Obj.t), (userEmailEventNameData_arg : UserEmailEventNameData.userEmailEventNameData), (emailInfo_arg : EmailInfo.emailInfo), (_attempts_arg : int)) =
  object (self)
    inherit EventObject.eventObject (emailEventHandler)
    val mutable emailInfo : EmailInfo.emailInfo = (Obj.magic 0)
    method emailInfo = emailInfo
    method set_emailInfo value' = emailInfo <- value'
    val mutable userEmailEventNameData : UserEmailEventNameData.userEmailEventNameData = (Obj.magic 0)
    method userEmailEventNameData = userEmailEventNameData
    method set_userEmailEventNameData value' = userEmailEventNameData <- value'
    val mutable attempts : int = 0
    method attempts = attempts
    method set_attempts value' = attempts <- value'
    
    

    method getEmailInfo () : EmailInfo.emailInfo =
        begin
        (emailInfo :> EmailInfo.emailInfo)
        end [@@warning "-7"]
    

    method getAttempts () : int =
        begin
        attempts
        end [@@warning "-7"]
    

    method setAttempts ((attempts_arg : int)) : unit =
        begin
        attempts <- attempts_arg
        end [@@warning "-7"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("EmailEvent Log: \n"));
        ignore (!stringBuffer#append ("Event Name: "));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr userEmailEventNameData))));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (self#getEmailInfo ())))));
        ignore (!stringBuffer#append ("\nNumber of Attempts: "));
        ignore (!stringBuffer#appendint ((self#getAttempts ())));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        attempts <- 0;
        ();
        (* super(...) is the inherit clause *) ();
        userEmailEventNameData <- userEmailEventNameData_arg;
        emailInfo <- emailInfo_arg
      end
  end
let () = java_register_constructor "EmailEvent" (fun arguments -> Obj.repr (new emailEvent (Obj.obj arguments)))


