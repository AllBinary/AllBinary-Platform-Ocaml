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
(* import org.allbinary.business.user.UserInterface *)
(* import org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface *)
(* import org.allbinary.logic.system.loader.AbeFactory *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)


let getInstance : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> UserEmailEventListenerInterface.userEmailEventListenerInterface = fun (abeClientInformation, userEmailEventConfigurationInterface, userInterface) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        let userEmailEventConfigurationInterface = Obj.repr userEmailEventConfigurationInterface in
        let userInterface = Obj.repr userInterface in
        begin
        let params : Obj.t array ref = ref ((Array.make (1) (Obj.magic 0))) in ();
        let classes : string array ref = ref ((Array.make (1) (Obj.magic 0))) in ();
        !classes.(0) <- "UserInterface";
        !params.(0) <- (Obj.repr ((Obj.magic (Obj.magic userInterface))));
        ((Obj.magic ((AbeFactory.getInstance ())#getInstance ((Obj.magic abeClientInformation), ((Obj.magic userEmailEventConfigurationInterface)#getEventListenerClassPath ()), !classes, !params))) :> UserEmailEventListenerInterface.userEmailEventListenerInterface)
        end [@@warning "-20"]

let () = java_register_static "UserEmailEventListenerFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class userEmailEventListenerFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "UserEmailEventListenerFactory" (fun arguments -> Obj.repr (new userEmailEventListenerFactory (Obj.obj arguments)))


