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
(* package org.allbinary.business.user.modules.configuration *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.time.created.TimeCreated *)
(* import org.allbinary.business.time.modified.TimeLastModified *)
(* import org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration *)
(* import org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface *)

class userConfiguration () =
  object
    val mutable userEmailConfigurationInterface : UserEmailConfigurationInterface.userEmailConfigurationInterface = (Obj.magic 0)
    method userEmailConfigurationInterface = userEmailConfigurationInterface
    method set_userEmailConfigurationInterface value' = userEmailConfigurationInterface <- value'
    val mutable timeCreated : TimeCreated.timeCreated = (Obj.magic 0)
    method timeCreated = timeCreated
    method set_timeCreated value' = timeCreated <- value'
    val mutable timeLastModified : TimeLastModified.timeLastModified = (Obj.magic 0)
    method timeLastModified = timeLastModified
    method set_timeLastModified value' = timeLastModified <- value'
    
    
    

    method getUserEmailConfigurationInterface () : UserEmailConfigurationInterface.userEmailConfigurationInterface =
        begin
        (userEmailConfigurationInterface :> UserEmailConfigurationInterface.userEmailConfigurationInterface)
        end
    

    method setUserEmailConfigurationInterface : 'any1. 'any1 -> unit = fun (userEmailConfigurationInterface_arg) ->
        let userEmailConfigurationInterface_arg = Obj.repr userEmailConfigurationInterface_arg in
        begin
        userEmailConfigurationInterface <- (Obj.magic userEmailConfigurationInterface_arg)
        end [@@warning "-20"]
    

    method getTimeCreated () : TimeCreated.timeCreated =
        begin
        (timeCreated :> TimeCreated.timeCreated)
        end
    

    method getTimeLastModified () : TimeLastModified.timeLastModified =
        begin
        (timeLastModified :> TimeLastModified.timeLastModified)
        end
    

    method setTimeCreated : 'any1. 'any1 -> unit = fun (timeCreated_arg) ->
        let timeCreated_arg = Obj.repr timeCreated_arg in
        begin
        timeCreated <- (Obj.magic timeCreated_arg)
        end [@@warning "-20"]
    

    method setTimeLastModified : 'any1. 'any1 -> unit = fun (timeLastModified_arg) ->
        let timeLastModified_arg = Obj.repr timeLastModified_arg in
        begin
        timeLastModified <- (Obj.magic timeLastModified_arg)
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        ();
        ();
        userEmailConfigurationInterface <- (Obj.magic (new UserEmailConfiguration.userEmailConfiguration ()));
        timeCreated <- (new TimeCreated.timeCreated (0));
        timeLastModified <- (new TimeLastModified.timeLastModified (0))
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "UserConfiguration" (fun arguments -> Obj.repr (new userConfiguration (Obj.obj arguments)))


