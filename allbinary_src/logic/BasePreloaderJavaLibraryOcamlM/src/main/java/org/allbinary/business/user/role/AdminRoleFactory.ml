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

class adminRoleFactory () =
  object
    val mutable adminRoles : BasicArrayList.basicArrayList = (Obj.magic 0)
    method adminRoles = adminRoles
    method set_adminRoles value' = adminRoles <- value'
    val mutable storeAdminRoles : BasicArrayList.basicArrayList = (Obj.magic 0)
    method storeAdminRoles = storeAdminRoles
    method set_storeAdminRoles value' = storeAdminRoles <- value'
    val mutable storeManagementRoles : BasicArrayList.basicArrayList = (Obj.magic 0)
    method storeManagementRoles = storeManagementRoles
    method set_storeManagementRoles value' = storeManagementRoles <- value'
    val mutable productManagementRoles : BasicArrayList.basicArrayList = (Obj.magic 0)
    method productManagementRoles = productManagementRoles
    method set_productManagementRoles value' = productManagementRoles <- value'
    val mutable reviewManagementRoles : BasicArrayList.basicArrayList = (Obj.magic 0)
    method reviewManagementRoles = reviewManagementRoles
    method set_reviewManagementRoles value' = reviewManagementRoles <- value'
    val mutable customerManagementRoles : BasicArrayList.basicArrayList = (Obj.magic 0)
    method customerManagementRoles = customerManagementRoles
    method set_customerManagementRoles value' = customerManagementRoles <- value'
    val mutable workflowManagementRoles : BasicArrayList.basicArrayList = (Obj.magic 0)
    method workflowManagementRoles = workflowManagementRoles
    method set_workflowManagementRoles value' = workflowManagementRoles <- value'
    val mutable orderManagementRoles : BasicArrayList.basicArrayList = (Obj.magic 0)
    method orderManagementRoles = orderManagementRoles
    method set_orderManagementRoles value' = orderManagementRoles <- value'
    val mutable adjusterManagementRoles : BasicArrayList.basicArrayList = (Obj.magic 0)
    method adjusterManagementRoles = adjusterManagementRoles
    method set_adjusterManagementRoles value' = adjusterManagementRoles <- value'
    val mutable shippingManagementRoles : BasicArrayList.basicArrayList = (Obj.magic 0)
    method shippingManagementRoles = shippingManagementRoles
    method set_shippingManagementRoles value' = shippingManagementRoles <- value'
    val mutable webManagementRoles : BasicArrayList.basicArrayList = (Obj.magic 0)
    method webManagementRoles = webManagementRoles
    method set_webManagementRoles value' = webManagementRoles <- value'
    
    

    method getProductManagementRoles () : BasicArrayList.basicArrayList =
        begin
        (productManagementRoles :> BasicArrayList.basicArrayList)
        end
    

    method getAdminRoles () : BasicArrayList.basicArrayList =
        begin
        (adminRoles :> BasicArrayList.basicArrayList)
        end
    

    method getStoreAdminRoles () : BasicArrayList.basicArrayList =
        begin
        (storeAdminRoles :> BasicArrayList.basicArrayList)
        end
    

    method getStoreManagementRoles () : BasicArrayList.basicArrayList =
        begin
        (storeManagementRoles :> BasicArrayList.basicArrayList)
        end
    

    method getReviewManagementRoles () : BasicArrayList.basicArrayList =
        begin
        (reviewManagementRoles :> BasicArrayList.basicArrayList)
        end
    

    method getCustomerManagementRoles () : BasicArrayList.basicArrayList =
        begin
        (customerManagementRoles :> BasicArrayList.basicArrayList)
        end
    

    method getWorkflowManagementRoles () : BasicArrayList.basicArrayList =
        begin
        (workflowManagementRoles :> BasicArrayList.basicArrayList)
        end
    

    method getWebManagementRoles () : BasicArrayList.basicArrayList =
        begin
        (webManagementRoles :> BasicArrayList.basicArrayList)
        end
    

    method getShippingManagementRoles () : BasicArrayList.basicArrayList =
        begin
        (shippingManagementRoles :> BasicArrayList.basicArrayList)
        end
    

    method getAdjusterManagementRoles () : BasicArrayList.basicArrayList =
        begin
        (adjusterManagementRoles :> BasicArrayList.basicArrayList)
        end
    

    method getOrderManagementRoles () : BasicArrayList.basicArrayList =
        begin
        (orderManagementRoles :> BasicArrayList.basicArrayList)
        end

    initializer
      begin
        adminRoles <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        storeAdminRoles <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        storeManagementRoles <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        productManagementRoles <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        reviewManagementRoles <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        customerManagementRoles <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        workflowManagementRoles <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        orderManagementRoles <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        adjusterManagementRoles <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        shippingManagementRoles <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        webManagementRoles <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        let basicUserRoleFactory : BasicUserRoleFactory.basicUserRoleFactory ref = ref (((BasicUserRoleFactory.getInstance ()) :> BasicUserRoleFactory.basicUserRoleFactory)) in ();
        ignore (adminRoles#add (!basicUserRoleFactory#aDMINISTRATOR));
        ignore (storeAdminRoles#add (!basicUserRoleFactory#aDMINISTRATOR));
        ignore (storeAdminRoles#add (!basicUserRoleFactory#sTOREMANAGER));
        ignore (storeManagementRoles#add (!basicUserRoleFactory#aDMINISTRATOR));
        ignore (storeManagementRoles#add (!basicUserRoleFactory#sTOREMANAGER));
        ignore (storeManagementRoles#add (!basicUserRoleFactory#cUSTOMERMANAGER));
        ignore (storeManagementRoles#add (!basicUserRoleFactory#aDJUSTER));
        ignore (storeManagementRoles#add (!basicUserRoleFactory#pRODUCTMANAGER));
        ignore (storeManagementRoles#add (!basicUserRoleFactory#rEVIEWER));
        ignore (storeManagementRoles#add (!basicUserRoleFactory#sHIPPING));
        ignore (productManagementRoles#add (!basicUserRoleFactory#aDMINISTRATOR));
        ignore (productManagementRoles#add (!basicUserRoleFactory#sTOREMANAGER));
        ignore (productManagementRoles#add (!basicUserRoleFactory#pRODUCTMANAGER));
        ignore (reviewManagementRoles#add (!basicUserRoleFactory#aDMINISTRATOR));
        ignore (reviewManagementRoles#add (!basicUserRoleFactory#sTOREMANAGER));
        ignore (reviewManagementRoles#add (!basicUserRoleFactory#rEVIEWER));
        ignore (customerManagementRoles#add (!basicUserRoleFactory#aDMINISTRATOR));
        ignore (customerManagementRoles#add (!basicUserRoleFactory#sTOREMANAGER));
        ignore (customerManagementRoles#add (!basicUserRoleFactory#cUSTOMERMANAGER));
        ignore (workflowManagementRoles#add (!basicUserRoleFactory#aDMINISTRATOR));
        ignore (workflowManagementRoles#add (!basicUserRoleFactory#sTOREMANAGER));
        ignore (workflowManagementRoles#add (!basicUserRoleFactory#wORKFLOWEDITOR));
        ignore (orderManagementRoles#add (!basicUserRoleFactory#aDMINISTRATOR));
        ignore (orderManagementRoles#add (!basicUserRoleFactory#sTOREMANAGER));
        ignore (adjusterManagementRoles#add (!basicUserRoleFactory#aDMINISTRATOR));
        ignore (adjusterManagementRoles#add (!basicUserRoleFactory#sTOREMANAGER));
        ignore (adjusterManagementRoles#add (!basicUserRoleFactory#aDJUSTER));
        ignore (shippingManagementRoles#add (!basicUserRoleFactory#aDMINISTRATOR));
        ignore (shippingManagementRoles#add (!basicUserRoleFactory#sTOREMANAGER));
        ignore (shippingManagementRoles#add (!basicUserRoleFactory#sHIPPING));
        ignore (webManagementRoles#add (!basicUserRoleFactory#aDMINISTRATOR));
        ignore (webManagementRoles#add (!basicUserRoleFactory#sTOREMANAGER));
        ignore (webManagementRoles#add (!basicUserRoleFactory#wEBMANAGER));
        ignore (webManagementRoles#add (!basicUserRoleFactory#wORKFLOWEDITOR));
        ignore (webManagementRoles#add (!basicUserRoleFactory#vIEWEDITOR))
      end
  end
let () = java_register_constructor "AdminRoleFactory" (fun arguments -> Obj.repr (new adminRoleFactory (Obj.obj arguments)))

let instance = (new adminRoleFactory ())
let get_instance () = instance
let () = java_register_static "AdminRoleFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AdminRoleFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


