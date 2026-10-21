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
(* package org.allbinary.business.user.modules.admin.store.web.workflow.editor *)

open Allbinary_java [@@warning "-33"]
(* import java.util.HashMap *)
(* import org.allbinary.business.user.UserFactoryInterface *)
(* import org.allbinary.business.user.UserInterface *)

class workflowEditorWebStoreAdminUserFactory () =
  object
    
    

    method getInstance () : UserInterface.userInterface =
        begin
        ((Obj.obj (java_new "WorkflowEditorWebStoreAdminUser" (Obj.repr ()))) :> UserInterface.userInterface)
        end
    

    (* Java overload getInstance(HashMap) is not converted: OCaml has one method per name *)

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "WorkflowEditorWebStoreAdminUserFactory" (fun arguments -> Obj.repr (new workflowEditorWebStoreAdminUserFactory (Obj.obj arguments)))


