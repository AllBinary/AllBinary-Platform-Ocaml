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
(* package org.allbinary.input.automation.osgi *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.osgi.framework.Bundle *)
(* import org.osgi.framework.ServiceFactory *)
(* import org.osgi.framework.ServiceRegistration *)
(* import org.allbinary.input.automation.InputAutomationJFrame *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class inputAutomationServiceFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    
    

    method getService : 'any1 'any2. 'any1 * 'any2 -> Obj.t = fun (_bundle, _registration) ->
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "getService"));
        (Obj.repr ((Obj.magic (java_call_static "InputAutomationJFrame.getInstance" (Obj.repr ())))))
        end [@@warning "-20"]
    

    method ungetService : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (_bundle, _registration, _service) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "InputAutomationServiceFactory" (fun arguments -> Obj.repr (new inputAutomationServiceFactory (Obj.obj arguments)))

let inputAutomationServiceFactory = (new inputAutomationServiceFactory ())
let get_inputAutomationServiceFactory () = inputAutomationServiceFactory
let () = java_register_static "InputAutomationServiceFactory.get_inputAutomationServiceFactory" (fun _ -> Obj.repr (get_inputAutomationServiceFactory ()))

let getInstance () =
        begin
        inputAutomationServiceFactory
        end
let () = java_register_static "InputAutomationServiceFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


