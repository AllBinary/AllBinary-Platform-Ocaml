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

class storeRoleFactory () =
  object
    val mutable roles : BasicArrayList.basicArrayList = (Obj.magic 0)
    method roles = roles
    method set_roles value' = roles <- value'
    val mutable subscriberRoles : BasicArrayList.basicArrayList = (Obj.magic 0)
    method subscriberRoles = subscriberRoles
    method set_subscriberRoles value' = subscriberRoles <- value'
    val mutable wholesaleRoles : BasicArrayList.basicArrayList = (Obj.magic 0)
    method wholesaleRoles = wholesaleRoles
    method set_wholesaleRoles value' = wholesaleRoles <- value'
    
    

    method getRoles () : BasicArrayList.basicArrayList =
        begin
        (roles :> BasicArrayList.basicArrayList)
        end
    

    method getSubscriberRoles () : BasicArrayList.basicArrayList =
        begin
        (subscriberRoles :> BasicArrayList.basicArrayList)
        end
    

    method getWholesaleRoles () : BasicArrayList.basicArrayList =
        begin
        (wholesaleRoles :> BasicArrayList.basicArrayList)
        end

    initializer
      begin
        roles <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        subscriberRoles <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        wholesaleRoles <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        let basicUserRoleFactory : BasicUserRoleFactory.basicUserRoleFactory ref = ref (((BasicUserRoleFactory.getInstance ()) :> BasicUserRoleFactory.basicUserRoleFactory)) in ();
        ignore (roles#add (!basicUserRoleFactory#cUSTOMER));
        ignore (roles#add (!basicUserRoleFactory#sUBSCRIBERCUSTOMER));
        ignore (roles#add (!basicUserRoleFactory#wHOLESALECUSTOMER));
        ignore (subscriberRoles#add (!basicUserRoleFactory#sUBSCRIBERCUSTOMER));
        ignore (wholesaleRoles#add (!basicUserRoleFactory#wHOLESALECUSTOMER))
      end
  end
let () = java_register_constructor "StoreRoleFactory" (fun arguments -> Obj.repr (new storeRoleFactory (Obj.obj arguments)))

let instance = (new storeRoleFactory ())
let get_instance () = instance
let () = java_register_static "StoreRoleFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "StoreRoleFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


