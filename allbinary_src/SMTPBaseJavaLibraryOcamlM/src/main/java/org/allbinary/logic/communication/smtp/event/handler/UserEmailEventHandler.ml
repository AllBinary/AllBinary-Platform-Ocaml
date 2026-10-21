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
(* package org.allbinary.logic.communication.smtp.event.handler *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.smtp.event.EmailEvent *)
(* import org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface *)
(* import org.allbinary.logic.communication.smtp.event.UserEmailEventNameData *)
(* import org.allbinary.logic.communication.smtp.info.EmailInfo *)

class userEmailEventHandler () =
  object (self)
    val mutable emailVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method emailVector = emailVector
    method set_emailVector value' = emailVector <- value'
    val mutable emailInfo : EmailInfo.emailInfo = (Obj.magic 0)
    method emailInfo = emailInfo
    method set_emailInfo value' = emailInfo <- value'
    val mutable userEmailEventNameData : UserEmailEventNameData.userEmailEventNameData = (Obj.magic 0)
    method userEmailEventNameData = userEmailEventNameData
    method set_userEmailEventNameData value' = userEmailEventNameData <- value'
    
    

    method receiveEmailInfo : 'any1 'any2. 'any1 * 'any2 -> unit = fun (userEmailEventNameData_arg, emailInfo_arg) ->
        let userEmailEventNameData_arg = Obj.repr userEmailEventNameData_arg in
        let emailInfo_arg = Obj.repr emailInfo_arg in
        begin
        userEmailEventNameData <- (Obj.magic userEmailEventNameData_arg);
        emailInfo <- (Obj.magic emailInfo_arg);
        (self#fireEmailEvent ())
        end [@@warning "-20"]
    

    method addListener : 'any1. 'any1 -> unit = fun (vector) ->
        let vector = Obj.repr vector in
        begin
        let size : int ref = ref (((Obj.magic vector)#size ())) in ();
        for index = 0 to !size - 1 do
            let userEmailEventListenerInterface : UserEmailEventListenerInterface.userEmailEventListenerInterface ref = ref (((Obj.magic ((Obj.magic vector)#get (index))) :> UserEmailEventListenerInterface.userEmailEventListenerInterface)) in ();
            (self#addListener (!userEmailEventListenerInterface))
        done
        end [@@warning "-20"]
    

    (* Java overload addListener(UserEmailEventListenerInterface) is not converted: OCaml has one method per name *)
    

    method removeListener : 'any1. 'any1 -> unit = fun (emailEventListenerInterface) ->
        let emailEventListenerInterface = Obj.repr emailEventListenerInterface in
        begin
        ignore (emailVector#remove ((Obj.magic emailEventListenerInterface)))
        end [@@warning "-20"]
    

    method fireEmailEvent () : unit =
        begin
        let emailEvent : EmailEvent.emailEvent ref = ref (((new EmailEvent.emailEvent (self, userEmailEventNameData, emailInfo, 0)) :> EmailEvent.emailEvent)) in ();
        let size : int ref = ref ((emailVector#size ())) in ();
        for index = 0 to !size - 1 do
            let emailEventListenerInterface : UserEmailEventListenerInterface.userEmailEventListenerInterface ref = ref (((Obj.magic (emailVector#get (index))) :> UserEmailEventListenerInterface.userEmailEventListenerInterface)) in ();
            ignore (!emailEventListenerInterface#onEmailSendRequest (!emailEvent))
        done
        end

    initializer
      begin
        ();
        emailInfo <- ((Obj.magic 0) :> EmailInfo.emailInfo);
        userEmailEventNameData <- ((Obj.magic 0) :> UserEmailEventNameData.userEmailEventNameData);
        ();
        emailVector <- (new BasicArrayListD.basicArrayListD ())
      end
  end
let () = java_register_constructor "UserEmailEventHandler" (fun arguments -> Obj.repr (new userEmailEventHandler (Obj.obj arguments)))


