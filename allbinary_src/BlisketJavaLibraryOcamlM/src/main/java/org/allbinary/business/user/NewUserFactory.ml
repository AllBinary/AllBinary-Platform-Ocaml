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
(* import java.util.HashMap *)
(* import javax.servlet.http.HttpServletRequest *)
(* import org.allbinary.business.user.modules.User *)
(* import org.allbinary.business.user.role.UserRoleData *)
(* import org.allbinary.logic.communication.http.request.RequestParams *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)


(* Java overload getInstance(TransformInfoInterface) is not converted: OCaml has one method per name *)

(* Java overload getInstance(HttpServletRequest, HashMap) is not converted: OCaml has one method per name *)
class newUserFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "NewUserFactory" (fun arguments -> Obj.repr (new newUserFactory (Obj.obj arguments)))

let getInstance () : UserInterface.userInterface =
        begin
        ((Obj.obj (java_new "User" (Obj.repr ()))) :> UserInterface.userInterface)
        end
let () = java_register_static "NewUserFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


