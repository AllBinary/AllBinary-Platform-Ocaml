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
(* package org.allbinary.logic.communication.smtp.queue *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.mail.Transport *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.smtp.EmailInterface *)
(* import org.allbinary.logic.util.queue.BasicQueue *)

let basicEmailQueue = ref ((Obj.magic 0))
let get_basicEmailQueue () = !basicEmailQueue
let set_basicEmailQueue value' = basicEmailQueue := value'
let () = java_register_static "BasicEmailQueue.get_basicEmailQueue" (fun _ -> Obj.repr (get_basicEmailQueue ()))
class basicEmailQueue () =
  object (self)
    inherit BasicQueue.basicQueue ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method offer : 'any1. 'any1 -> bool = fun (emailInterface) ->
        let emailInterface = Obj.repr emailInterface in
        begin
        ignore (self#offer ((Obj.magic (Obj.magic emailInterface))));
        (self#post ((Obj.magic emailInterface)));
        true
        end [@@warning "-7-20"]
    

    method remove : 'any1. 'any1 -> unit = fun (emailInterface) ->
        let emailInterface = Obj.repr emailInterface in
        begin
        ignore (self#remove ((Obj.magic (Obj.magic emailInterface))))
        end [@@warning "-7-20"]
    

    (* Java overload remove() is not converted: OCaml has one method per name *)
    

    method post : 'any1. 'any1 -> unit = fun (emailInterface) ->
        let emailInterface = Obj.repr emailInterface in
        begin
        if (self#send ((Obj.magic emailInterface))) then begin
            ignore (self#remove ((Obj.magic emailInterface)));
            (self#processAllUnsent ())
        end
        end [@@warning "-7-20"]
    

    method processAllUnsent () : unit =
        begin
        let size : int ref = ref ((queueVector#size ())) in ();
        for index = 0 to !size - 1 do
            let emailInterface : EmailInterface.emailInterface ref = ref (((Obj.magic (queueVector#get (index))) :> EmailInterface.emailInterface)) in ();
            if (self#send (!emailInterface)) then begin
                ignore (self#remove (!emailInterface));
                (self#processAllUnsent ())
            end
        done
        end [@@warning "-7"]
    

    method send : 'any1. 'any1 -> bool = fun (emailInterface) ->
        let emailInterface = Obj.repr emailInterface in
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF (("Sending: " ^ java_string_of (Obj.repr (((Obj.magic emailInterface)#log ())))), self, "send"))
            end;
            ignore (Transport.send (((Obj.magic emailInterface)#getMimeMessage ())));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF (("Email Send Debug: " ^ java_string_of (Obj.repr (((Obj.magic emailInterface)#getDebugInfo ())))), self, "send"))
            end;
            true
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (("Failed Email Send Debug: " ^ java_string_of (Obj.repr (((Obj.magic emailInterface)#getDebugInfo ())))), self, "send", e))
            end;
            false
        end)
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicEmailQueue" (fun arguments -> Obj.repr (new basicEmailQueue (Obj.obj arguments)))

let instance = (new basicEmailQueue ())
let get_instance () = instance
let () = java_register_static "BasicEmailQueue.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        if (!basicEmailQueue == (Obj.magic 0)) then begin
            basicEmailQueue := (new basicEmailQueue ())
        end;
        !basicEmailQueue
        end
let () = java_register_static "BasicEmailQueue.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


