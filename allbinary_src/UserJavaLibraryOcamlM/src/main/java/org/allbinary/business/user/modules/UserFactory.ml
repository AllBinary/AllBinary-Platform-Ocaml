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
(* package org.allbinary.business.user.modules *)

open Allbinary_java [@@warning "-33"]
(* import java.util.HashMap *)
(* import org.allbinary.business.user.UserFactoryInterface *)
(* import org.allbinary.business.user.UserInterface *)

class userFactory () =
  object
    
    

    method getInstance ((hashMap : java_hash_map)) : UserInterface.userInterface =
        begin
        ((Obj.obj (java_new "User" (Obj.repr (hashMap)))) :> UserInterface.userInterface)
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "UserFactory" (fun arguments -> Obj.repr (new userFactory (Obj.obj arguments)))


