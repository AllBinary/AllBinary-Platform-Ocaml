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
(* package org.allbinary.business.user.role *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.Serializable *)
(* import org.allbinary.business.user.UserFactoryInterface *)

class userRole ((aBasicUserRole : BasicUserRole.basicUserRole), aUserFactoryInterface) =
  object
    val mutable basicUserRole : BasicUserRole.basicUserRole = (Obj.magic 0)
    method basicUserRole = basicUserRole
    method set_basicUserRole value' = basicUserRole <- value'
    val mutable userFactoryInterface : Obj.t = Obj.repr 0
    method userFactoryInterface : 'r. 'r = Obj.magic userFactoryInterface
    method set_userFactoryInterface : 'v. 'v -> unit = fun value' -> userFactoryInterface <- Obj.repr value'
    
    

    method toString () : string =
        begin
        (java_string_of (Obj.repr basicUserRole))
        end
    

    method getBasicUserRole () : BasicUserRole.basicUserRole =
        begin
        (basicUserRole :> BasicUserRole.basicUserRole)
        end
    

    method getUserFactory : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic userFactoryInterface)))
        end
    

    method getSessionTimeout () : int =
        begin
        (basicUserRole#getSessionTimeout ())
        end
    

    method getSessionInactivityTimeout () : int =
        begin
        (basicUserRole#getSessionInactivityTimeout ())
        end

    initializer
      begin
        ();
        ();
        ();
        basicUserRole <- aBasicUserRole;
        userFactoryInterface <- Obj.repr (aUserFactoryInterface)
      end
  end [@@warning "-20"]
let () = java_register_constructor "UserRole" (fun arguments -> Obj.repr (new userRole (Obj.obj arguments)))


