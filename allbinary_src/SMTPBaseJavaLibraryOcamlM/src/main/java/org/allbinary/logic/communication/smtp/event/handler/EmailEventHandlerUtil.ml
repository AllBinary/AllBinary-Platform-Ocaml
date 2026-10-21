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
(* import org.allbinary.business.user.UserInterface *)
(* import org.allbinary.business.user.modules.configuration.UserConfigurationInterface *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface *)
(* import org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface *)
(* import org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface *)
(* import org.allbinary.logic.communication.smtp.event.UserEmailEventNameData *)
(* import org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)


let getUserEmailEventListenerVector : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> BasicArrayList.basicArrayList = fun (abeClientInformation, userEmailEventNameData, userInterface) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        let userEmailEventNameData = Obj.repr userEmailEventNameData in
        let userInterface = Obj.repr userInterface in
        begin
        let userConfigurationInterface : UserConfigurationInterface.userConfigurationInterface ref = ref ((((Obj.magic userInterface)#getUserConfigurationInterface ()) :> UserConfigurationInterface.userConfigurationInterface)) in ();
        let userEmailConfigurationInterface : UserEmailConfigurationInterface.userEmailConfigurationInterface ref = ref (((!userConfigurationInterface#getUserEmailConfigurationInterface ()) :> UserEmailConfigurationInterface.userEmailConfigurationInterface)) in ();
        let userEmailEventsConfigurationInterface : UserEmailEventsConfigurationInterface.userEmailEventsConfigurationInterface ref = ref (((!userEmailConfigurationInterface#getUserEmailEventsConfigurationInterface ()) :> UserEmailEventsConfigurationInterface.userEmailEventsConfigurationInterface)) in ();
        let userEmailEventListenerInterface : UserEmailEventListenerInterface.userEmailEventListenerInterface ref = ref (((!userEmailEventsConfigurationInterface#getEventListener ((Obj.magic abeClientInformation), (Obj.magic userEmailEventNameData), (Obj.magic userInterface))) :> UserEmailEventListenerInterface.userEmailEventListenerInterface)) in ();
        let vector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!vector#add (!userEmailEventListenerInterface));
        (!vector :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]

let () = java_register_static "EmailEventHandlerUtil.getUserEmailEventListenerVector" (fun arguments -> Obj.repr (getUserEmailEventListenerVector (Obj.obj arguments)))
class emailEventHandlerUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method getEventHandler : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> UserEmailEventHandler.userEmailEventHandler = fun (abeClientInformation, userEmailEventNameData, userVector) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        let userEmailEventNameData = Obj.repr userEmailEventNameData in
        let userVector = Obj.repr userVector in
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGING)) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("Returning UserEmailEventHandler for "));
            ignore (!stringBuffer#appendint (((Obj.magic userVector)#size ())));
            ignore (!stringBuffer#append (" users."));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "getEventHandler"))
        end;
        let userEmailEventHandler : UserEmailEventHandler.userEmailEventHandler ref = ref (((new UserEmailEventHandler.userEmailEventHandler ()) :> UserEmailEventHandler.userEmailEventHandler)) in ();
        ignore (!userEmailEventHandler#addListener ((new LogUserEmailEventListenerModule.logUserEmailEventListenerModule ())));
        let size : int ref = ref (((Obj.magic userVector)#size ())) in ();
        for index = 0 to !size - 1 do
            let userInterface : UserInterface.userInterface ref = ref (((Obj.magic ((Obj.magic userVector)#get (index))) :> UserInterface.userInterface)) in ();
            let vector : BasicArrayList.basicArrayList ref = ref (((getUserEmailEventListenerVector ((Obj.magic abeClientInformation), (Obj.magic userEmailEventNameData), !userInterface)) :> BasicArrayList.basicArrayList)) in ();
            ignore (!userEmailEventHandler#addListener (!vector))
        done;
        (!userEmailEventHandler :> UserEmailEventHandler.userEmailEventHandler)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "EmailEventHandlerUtil" (fun arguments -> Obj.repr (new emailEventHandlerUtil (Obj.obj arguments)))

let instance = (new emailEventHandlerUtil ())
let get_instance () = instance
let () = java_register_static "EmailEventHandlerUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "EmailEventHandlerUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


