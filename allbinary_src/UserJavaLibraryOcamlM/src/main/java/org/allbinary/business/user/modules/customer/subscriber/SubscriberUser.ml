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
(* package org.allbinary.business.user.modules.customer.subscriber *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.business.user.modules.User *)
(* import org.allbinary.business.user.subscription.Subscription *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface *)

class subscriberUser () =
  object (self)
    inherit User.user () as super
    val mutable subscription : Subscription.subscription = (Obj.magic 0)
    method subscription = subscription
    method set_subscription value' = subscription <- value'
    
    
    

    method validateSession : 'any1. 'any1 -> unit = fun (weblisketSession) ->
        let weblisketSession = Obj.repr weblisketSession in
        begin
        ignore (super#validateSession ((Obj.magic weblisketSession)));
        (self#updateSession ((Obj.magic weblisketSession)))
        end [@@warning "-7-20"]
    

    method updateSession : 'any1. 'any1 -> unit = fun (weblisketSession) ->
        let weblisketSession = Obj.repr weblisketSession in
        begin
        ignore ((Obj.magic weblisketSession)#setStoreName ((self#getPermissions ())))
        end [@@warning "-7-20"]
    

    method isSessionValid () : bool =
        begin
        (subscription#isSubscribed ())
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        subscription <- (new Subscription.subscription ())
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "SubscriberUser" (fun arguments -> Obj.repr (new subscriberUser (Obj.obj arguments)))


