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
(* package org.allbinary.business.user *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.business.user.role.UserRole *)
(* import org.allbinary.business.user.role.UserRoleB *)
(* import org.allbinary.business.user.role.UserRoleData *)
(* import org.allbinary.logic.string.StringValidationUtil *)


let getInstance ((hashMap : java_hash_map)) : UserInterface.userInterface =
        try
        begin
        if (hashMap != (Obj.magic 0)) then begin
            let roleString : string ref = ref ((Obj.magic (hashMap#get ((java_string_of (Obj.repr (UserRoleData.get_nAME ()))))))) in ();
            if (not ((StringValidationUtil.getInstance ())#isEmpty (!roleString))) then begin
                let role : UserRole.userRole ref = ref (((UserRoleB.getRole (!roleString)) :> UserRole.userRole)) in ();
                raise (Java_return (Obj.repr (((!role#getUserFactory ())#getInstance (hashMap)))))
            end else begin
                raise (Failure ("No Role Specified"))
            end
        end else begin
            raise (Failure ("Null HashMap"))
        end
        end
        with Java_return value -> Obj.obj value

let () = java_register_static "CreateUserFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class createUserFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "CreateUserFactory" (fun arguments -> Obj.repr (new createUserFactory (Obj.obj arguments)))


