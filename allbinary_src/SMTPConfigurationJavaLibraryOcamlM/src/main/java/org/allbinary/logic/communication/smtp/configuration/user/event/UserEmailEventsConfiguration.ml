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
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.business.user.UserInterface *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface *)
(* import org.allbinary.logic.communication.smtp.event.UserEmailEventNameData *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.string.CommonStrings *)

class userEmailEventsConfiguration () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable emailEventHashMap : java_hash_map = (Obj.magic 0)
    method emailEventHashMap = emailEventHashMap
    method set_emailEventHashMap value' = emailEventHashMap <- value'
    
    
    

    method init () : unit =
        begin
        emailEventHashMap <- ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ());
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGING)) then begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#cONSTRUCTOR, self, " Constructor"))
        end
        end
    

    method getEventConfigurationHashMap () : java_hash_map =
        begin
        (emailEventHashMap :> java_hash_map)
        end
    

    method addUserEmailEventConfiguration : 'any1. 'any1 -> unit = fun (userEmailEventConfigurationInterface) ->
        let userEmailEventConfigurationInterface = Obj.repr userEmailEventConfigurationInterface in
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGING)) then begin
            ignore ((Obj.magic logUtil)#putF (("Adding: " ^ java_string_of (Obj.repr (((Obj.magic userEmailEventConfigurationInterface)#log ())))), self, "addUserEmailEventConfiguration"))
        end;
        ignore (emailEventHashMap#put (((Obj.magic userEmailEventConfigurationInterface)#getName ()), (Obj.magic userEmailEventConfigurationInterface)))
        end [@@warning "-20"]
    

    method getEventListener : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> UserEmailEventListenerInterface.userEmailEventListenerInterface = fun (abeClientInformation, userEmailEventNameData, userInterface) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        let userEmailEventNameData = Obj.repr userEmailEventNameData in
        let userInterface = Obj.repr userInterface in
        begin
        let userEmailEventConfigurationInterface : UserEmailEventConfigurationInterface.userEmailEventConfigurationInterface ref = ref (((Obj.magic (emailEventHashMap#get ((java_string_of (Obj.repr (Obj.magic userEmailEventNameData)))))) :> UserEmailEventConfigurationInterface.userEmailEventConfigurationInterface)) in ();
        ((UserEmailEventListenerFactory.getInstance ((Obj.magic abeClientInformation), !userEmailEventConfigurationInterface, (Obj.magic userInterface))) :> UserEmailEventListenerInterface.userEmailEventListenerInterface)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        emailEventHashMap <- ((Obj.magic 0) :> java_hash_map);
        ();
        (self#init ())
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "UserEmailEventsConfiguration" (fun arguments -> Obj.repr (new userEmailEventsConfiguration (Obj.obj arguments)))


