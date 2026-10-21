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
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration *)
(* import org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface *)
(* import org.allbinary.string.CommonStrings *)

class userEmailConfiguration () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable userEmailEventsConfigurationInterface : UserEmailEventsConfigurationInterface.userEmailEventsConfigurationInterface = (Obj.magic 0)
    method userEmailEventsConfigurationInterface = userEmailEventsConfigurationInterface
    method set_userEmailEventsConfigurationInterface value' = userEmailEventsConfigurationInterface <- value'
    
    
    

    method getUserEmailEventsConfigurationInterface () : UserEmailEventsConfigurationInterface.userEmailEventsConfigurationInterface =
        begin
        (userEmailEventsConfigurationInterface :> UserEmailEventsConfigurationInterface.userEmailEventsConfigurationInterface)
        end
    

    method setUserEmailEventsConfigurationInterface : 'any1. 'any1 -> unit = fun (userEmailEventsConfigurationInterface_arg) ->
        let userEmailEventsConfigurationInterface_arg = Obj.repr userEmailEventsConfigurationInterface_arg in
        begin
        userEmailEventsConfigurationInterface <- (Obj.magic userEmailEventsConfigurationInterface_arg)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        userEmailEventsConfigurationInterface <- ((Obj.magic 0) :> UserEmailEventsConfigurationInterface.userEmailEventsConfigurationInterface);
        ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGING)) then begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#cONSTRUCTOR, self, commonStrings#cONSTRUCTOR))
        end;
        (self#setUserEmailEventsConfigurationInterface ((new UserEmailEventsConfiguration.userEmailEventsConfiguration ())))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "UserEmailConfiguration" (fun arguments -> Obj.repr (new userEmailConfiguration (Obj.obj arguments)))


