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
(* import org.allbinary.business.user.modules.UserFactory *)
(* import org.allbinary.business.user.modules.admin.AdminUserFactory *)
(* import org.allbinary.business.user.modules.admin.store.StoreAdminUserFactory *)
(* import org.allbinary.business.user.modules.admin.store.customer.CustomerStoreAdminUserFactory *)
(* import org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory *)
(* import org.allbinary.business.user.modules.admin.store.order.adjust.AdjustOrderStoreAdminUserFactory *)
(* import org.allbinary.business.user.modules.admin.store.order.review.ReviewOrderStoreAdminUserFactory *)
(* import org.allbinary.business.user.modules.admin.store.order.ship.ShipOrderStoreAdminUserFactory *)
(* import org.allbinary.business.user.modules.admin.store.payment.PaymentStoreAdminUserFactory *)
(* import org.allbinary.business.user.modules.admin.store.product.ProductStoreAdminUserFactory *)
(* import org.allbinary.business.user.modules.admin.store.web.WebStoreAdminUserFactory *)
(* import org.allbinary.business.user.modules.admin.store.web.view.editor.ViewEditorWebStoreAdminUserFactory *)
(* import org.allbinary.business.user.modules.admin.store.web.wizard.WizardWebStoreAdminUserFactory *)
(* import org.allbinary.business.user.modules.admin.store.web.workflow.editor.WorkflowEditorWebStoreAdminUserFactory *)
(* import org.allbinary.business.user.modules.customer.subscriber.SubscriberUserFactory *)
(* import org.allbinary.business.user.modules.customer.wholesale.WholesaleUserFactory *)

class userRoleFactory () =
  object
    val mutable basicUserRoleFactory : BasicUserRoleFactory.basicUserRoleFactory = (Obj.magic 0)
    method basicUserRoleFactory = basicUserRoleFactory
    method set_basicUserRoleFactory value' = basicUserRoleFactory <- value'
    val mutable iNSTALLER : UserRole.userRole = (Obj.magic 0)
    method iNSTALLER = iNSTALLER
    method set_iNSTALLER value' = iNSTALLER <- value'
    val mutable aDMINISTRATOR : UserRole.userRole = (Obj.magic 0)
    method aDMINISTRATOR = aDMINISTRATOR
    method set_aDMINISTRATOR value' = aDMINISTRATOR <- value'
    val mutable cUSTOMER : UserRole.userRole = (Obj.magic 0)
    method cUSTOMER = cUSTOMER
    method set_cUSTOMER value' = cUSTOMER <- value'
    val mutable sUBSCRIBERCUSTOMER : UserRole.userRole = (Obj.magic 0)
    method sUBSCRIBERCUSTOMER = sUBSCRIBERCUSTOMER
    method set_sUBSCRIBERCUSTOMER value' = sUBSCRIBERCUSTOMER <- value'
    val mutable wHOLESALECUSTOMER : UserRole.userRole = (Obj.magic 0)
    method wHOLESALECUSTOMER = wHOLESALECUSTOMER
    method set_wHOLESALECUSTOMER value' = wHOLESALECUSTOMER <- value'
    val mutable sTOREMANAGER : UserRole.userRole = (Obj.magic 0)
    method sTOREMANAGER = sTOREMANAGER
    method set_sTOREMANAGER value' = sTOREMANAGER <- value'
    val mutable pRODUCTMANAGER : UserRole.userRole = (Obj.magic 0)
    method pRODUCTMANAGER = pRODUCTMANAGER
    method set_pRODUCTMANAGER value' = pRODUCTMANAGER <- value'
    val mutable cUSTOMERMANAGER : UserRole.userRole = (Obj.magic 0)
    method cUSTOMERMANAGER = cUSTOMERMANAGER
    method set_cUSTOMERMANAGER value' = cUSTOMERMANAGER <- value'
    val mutable pAYMENTMANAGER : UserRole.userRole = (Obj.magic 0)
    method pAYMENTMANAGER = pAYMENTMANAGER
    method set_pAYMENTMANAGER value' = pAYMENTMANAGER <- value'
    val mutable oRDERMANAGER : UserRole.userRole = (Obj.magic 0)
    method oRDERMANAGER = oRDERMANAGER
    method set_oRDERMANAGER value' = oRDERMANAGER <- value'
    val mutable wEBMANAGER : UserRole.userRole = (Obj.magic 0)
    method wEBMANAGER = wEBMANAGER
    method set_wEBMANAGER value' = wEBMANAGER <- value'
    val mutable rEVIEWER : UserRole.userRole = (Obj.magic 0)
    method rEVIEWER = rEVIEWER
    method set_rEVIEWER value' = rEVIEWER <- value'
    val mutable sHIPPING : UserRole.userRole = (Obj.magic 0)
    method sHIPPING = sHIPPING
    method set_sHIPPING value' = sHIPPING <- value'
    val mutable aDJUSTER : UserRole.userRole = (Obj.magic 0)
    method aDJUSTER = aDJUSTER
    method set_aDJUSTER value' = aDJUSTER <- value'
    val mutable wORKFLOWEDITOR : UserRole.userRole = (Obj.magic 0)
    method wORKFLOWEDITOR = wORKFLOWEDITOR
    method set_wORKFLOWEDITOR value' = wORKFLOWEDITOR <- value'
    val mutable wIZARD : UserRole.userRole = (Obj.magic 0)
    method wIZARD = wIZARD
    method set_wIZARD value' = wIZARD <- value'
    val mutable vIEWEDITOR : UserRole.userRole = (Obj.magic 0)
    method vIEWEDITOR = vIEWEDITOR
    method set_vIEWEDITOR value' = vIEWEDITOR <- value'

    initializer
      begin
        basicUserRoleFactory <- ((BasicUserRoleFactory.getInstance ()) :> BasicUserRoleFactory.basicUserRoleFactory);
        iNSTALLER <- ((new UserRoleB.userRoleB (basicUserRoleFactory#iNSTALLER, (Obj.magic 0))) :> UserRole.userRole);
        aDMINISTRATOR <- ((new UserRoleB.userRoleB (basicUserRoleFactory#aDMINISTRATOR, (new AdminUserFactory.adminUserFactory ()))) :> UserRole.userRole);
        cUSTOMER <- ((new UserRoleB.userRoleB (basicUserRoleFactory#cUSTOMER, (new UserFactory.userFactory ()))) :> UserRole.userRole);
        sUBSCRIBERCUSTOMER <- ((new UserRoleB.userRoleB (basicUserRoleFactory#sUBSCRIBERCUSTOMER, (new SubscriberUserFactory.subscriberUserFactory ()))) :> UserRole.userRole);
        wHOLESALECUSTOMER <- ((new UserRoleB.userRoleB (basicUserRoleFactory#wHOLESALECUSTOMER, (new WholesaleUserFactory.wholesaleUserFactory ()))) :> UserRole.userRole);
        sTOREMANAGER <- ((new UserRoleB.userRoleB (basicUserRoleFactory#sTOREMANAGER, (new StoreAdminUserFactory.storeAdminUserFactory ()))) :> UserRole.userRole);
        pRODUCTMANAGER <- ((new UserRoleB.userRoleB (basicUserRoleFactory#pRODUCTMANAGER, (new ProductStoreAdminUserFactory.productStoreAdminUserFactory ()))) :> UserRole.userRole);
        cUSTOMERMANAGER <- ((new UserRoleB.userRoleB (basicUserRoleFactory#cUSTOMERMANAGER, (new CustomerStoreAdminUserFactory.customerStoreAdminUserFactory ()))) :> UserRole.userRole);
        pAYMENTMANAGER <- ((new UserRoleB.userRoleB (basicUserRoleFactory#pAYMENTMANAGER, (new PaymentStoreAdminUserFactory.paymentStoreAdminUserFactory ()))) :> UserRole.userRole);
        oRDERMANAGER <- ((new UserRoleB.userRoleB (basicUserRoleFactory#oRDERMANAGER, (new OrderStoreAdminUserFactory.orderStoreAdminUserFactory ()))) :> UserRole.userRole);
        wEBMANAGER <- ((new UserRoleB.userRoleB (basicUserRoleFactory#wEBMANAGER, (new WebStoreAdminUserFactory.webStoreAdminUserFactory ()))) :> UserRole.userRole);
        rEVIEWER <- ((new UserRoleB.userRoleB (basicUserRoleFactory#rEVIEWER, (new ReviewOrderStoreAdminUserFactory.reviewOrderStoreAdminUserFactory ()))) :> UserRole.userRole);
        sHIPPING <- ((new UserRoleB.userRoleB (basicUserRoleFactory#sHIPPING, (new ShipOrderStoreAdminUserFactory.shipOrderStoreAdminUserFactory ()))) :> UserRole.userRole);
        aDJUSTER <- ((new UserRoleB.userRoleB (basicUserRoleFactory#aDJUSTER, (new AdjustOrderStoreAdminUserFactory.adjustOrderStoreAdminUserFactory ()))) :> UserRole.userRole);
        wORKFLOWEDITOR <- ((new UserRoleB.userRoleB (basicUserRoleFactory#wORKFLOWEDITOR, (new WorkflowEditorWebStoreAdminUserFactory.workflowEditorWebStoreAdminUserFactory ()))) :> UserRole.userRole);
        wIZARD <- ((new UserRoleB.userRoleB (basicUserRoleFactory#wIZARD, (new WizardWebStoreAdminUserFactory.wizardWebStoreAdminUserFactory ()))) :> UserRole.userRole);
        vIEWEDITOR <- ((new UserRoleB.userRoleB (basicUserRoleFactory#vIEWEDITOR, (new ViewEditorWebStoreAdminUserFactory.viewEditorWebStoreAdminUserFactory ()))) :> UserRole.userRole);
        ()
      end
  end
let () = java_register_constructor "UserRoleFactory" (fun arguments -> Obj.repr (new userRoleFactory (Obj.obj arguments)))

let instance = (new userRoleFactory ())
let get_instance () = instance
let () = java_register_static "UserRoleFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "UserRoleFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


