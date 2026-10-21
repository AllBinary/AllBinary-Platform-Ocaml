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
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.user.UserFactoryInterface *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)

let roleVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList))
let get_roleVector () = !roleVector
let set_roleVector value' = roleVector := value'
let () = java_register_static "UserRoleB.get_roleVector" (fun _ -> Obj.repr (get_roleVector ()))

let getAll () : BasicArrayList.basicArrayList =
        begin
        ignore (Obj.magic (java_call_static "UserRoleFactory.getInstance" (Obj.repr ())));
        (!roleVector :> BasicArrayList.basicArrayList)
        end

let () = java_register_static "UserRoleB.getAll" (fun arguments -> Obj.repr (getAll (Obj.obj arguments)))
class userRoleB ((aBasicUserRole : BasicUserRole.basicUserRole), (aUserFactoryInterface : UserFactoryInterface.userFactoryInterface)) =
  object (self)
    inherit UserRole.userRole (aBasicUserRole, aUserFactoryInterface)
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        ignore (!roleVector#add (self))
      end
  end
let () = java_register_constructor "UserRoleB" (fun arguments -> Obj.repr (new userRoleB (Obj.obj arguments)))

let getRole ((role : string)) : UserRole.userRole =
        try
        begin
        ignore (Obj.magic (java_call_static "UserRoleFactory.getInstance" (Obj.repr ())));
        if (not ((StringValidationUtil.getInstance ())#isEmpty (role))) then begin
            let roleVector_arg : BasicArrayList.basicArrayList ref = ref (((getAll ()) :> BasicArrayList.basicArrayList)) in ();
            let size : int ref = ref ((!roleVector_arg#size ())) in ();
            for index = 0 to !size - 1 do
                let userRole : UserRole.userRole ref = ref (((Obj.magic (!roleVector_arg#get (index))) :> UserRole.userRole)) in ();
                if ((String.compare role ((java_string_of (Obj.repr !userRole)))) == 0) then begin
                    raise (Java_return (Obj.repr (!userRole)))
                end
            done
        end;
        raise (Failure (("Unable to get role - Unknown Role = " ^ role)))
        end
        with Java_return value -> Obj.obj value
let () = java_register_static "UserRoleB.getRole" (fun arguments -> Obj.repr (getRole (Obj.obj arguments)))


