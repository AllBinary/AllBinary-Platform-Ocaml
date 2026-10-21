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

class basicUserRoleFactory () =
  object
    val mutable iNACTIVITYTIMEOUT : int = 0
    method iNACTIVITYTIMEOUT = iNACTIVITYTIMEOUT
    method set_iNACTIVITYTIMEOUT value' = iNACTIVITYTIMEOUT <- value'
    val mutable cUSTOMERTIMEOUT : int = 0
    method cUSTOMERTIMEOUT = cUSTOMERTIMEOUT
    method set_cUSTOMERTIMEOUT value' = cUSTOMERTIMEOUT <- value'
    val mutable cUSTOMERMAXSESSIONTIME : int = 0
    method cUSTOMERMAXSESSIONTIME = cUSTOMERMAXSESSIONTIME
    method set_cUSTOMERMAXSESSIONTIME value' = cUSTOMERMAXSESSIONTIME <- value'
    val mutable mAXSESSIONTIME : int = 0
    method mAXSESSIONTIME = mAXSESSIONTIME
    method set_mAXSESSIONTIME value' = mAXSESSIONTIME <- value'
    val mutable iNSTALLER : BasicUserRole.basicUserRole = (Obj.magic 0)
    method iNSTALLER = iNSTALLER
    method set_iNSTALLER value' = iNSTALLER <- value'
    val mutable aDMINISTRATOR : BasicUserRole.basicUserRole = (Obj.magic 0)
    method aDMINISTRATOR = aDMINISTRATOR
    method set_aDMINISTRATOR value' = aDMINISTRATOR <- value'
    val mutable cUSTOMER : BasicUserRole.basicUserRole = (Obj.magic 0)
    method cUSTOMER = cUSTOMER
    method set_cUSTOMER value' = cUSTOMER <- value'
    val mutable sUBSCRIBERCUSTOMER : BasicUserRole.basicUserRole = (Obj.magic 0)
    method sUBSCRIBERCUSTOMER = sUBSCRIBERCUSTOMER
    method set_sUBSCRIBERCUSTOMER value' = sUBSCRIBERCUSTOMER <- value'
    val mutable wHOLESALECUSTOMER : BasicUserRole.basicUserRole = (Obj.magic 0)
    method wHOLESALECUSTOMER = wHOLESALECUSTOMER
    method set_wHOLESALECUSTOMER value' = wHOLESALECUSTOMER <- value'
    val mutable sTOREMANAGER : BasicUserRole.basicUserRole = (Obj.magic 0)
    method sTOREMANAGER = sTOREMANAGER
    method set_sTOREMANAGER value' = sTOREMANAGER <- value'
    val mutable pRODUCTMANAGER : BasicUserRole.basicUserRole = (Obj.magic 0)
    method pRODUCTMANAGER = pRODUCTMANAGER
    method set_pRODUCTMANAGER value' = pRODUCTMANAGER <- value'
    val mutable cUSTOMERMANAGER : BasicUserRole.basicUserRole = (Obj.magic 0)
    method cUSTOMERMANAGER = cUSTOMERMANAGER
    method set_cUSTOMERMANAGER value' = cUSTOMERMANAGER <- value'
    val mutable pAYMENTMANAGER : BasicUserRole.basicUserRole = (Obj.magic 0)
    method pAYMENTMANAGER = pAYMENTMANAGER
    method set_pAYMENTMANAGER value' = pAYMENTMANAGER <- value'
    val mutable oRDERMANAGER : BasicUserRole.basicUserRole = (Obj.magic 0)
    method oRDERMANAGER = oRDERMANAGER
    method set_oRDERMANAGER value' = oRDERMANAGER <- value'
    val mutable wEBMANAGER : BasicUserRole.basicUserRole = (Obj.magic 0)
    method wEBMANAGER = wEBMANAGER
    method set_wEBMANAGER value' = wEBMANAGER <- value'
    val mutable rEVIEWER : BasicUserRole.basicUserRole = (Obj.magic 0)
    method rEVIEWER = rEVIEWER
    method set_rEVIEWER value' = rEVIEWER <- value'
    val mutable sHIPPING : BasicUserRole.basicUserRole = (Obj.magic 0)
    method sHIPPING = sHIPPING
    method set_sHIPPING value' = sHIPPING <- value'
    val mutable aDJUSTER : BasicUserRole.basicUserRole = (Obj.magic 0)
    method aDJUSTER = aDJUSTER
    method set_aDJUSTER value' = aDJUSTER <- value'
    val mutable wORKFLOWEDITOR : BasicUserRole.basicUserRole = (Obj.magic 0)
    method wORKFLOWEDITOR = wORKFLOWEDITOR
    method set_wORKFLOWEDITOR value' = wORKFLOWEDITOR <- value'
    val mutable wIZARD : BasicUserRole.basicUserRole = (Obj.magic 0)
    method wIZARD = wIZARD
    method set_wIZARD value' = wIZARD <- value'
    val mutable vIEWEDITOR : BasicUserRole.basicUserRole = (Obj.magic 0)
    method vIEWEDITOR = vIEWEDITOR
    method set_vIEWEDITOR value' = vIEWEDITOR <- value'

    initializer
      begin
        iNACTIVITYTIMEOUT <- 360000000;
        cUSTOMERTIMEOUT <- 360000000;
        cUSTOMERMAXSESSIONTIME <- 360000000;
        mAXSESSIONTIME <- 360000000;
        iNSTALLER <- ((BasicUserRole.new_basicUserRole_4 ("Installer", 16, mAXSESSIONTIME, iNACTIVITYTIMEOUT)) :> BasicUserRole.basicUserRole);
        aDMINISTRATOR <- ((BasicUserRole.new_basicUserRole_4 ("Administrator", 0, mAXSESSIONTIME, iNACTIVITYTIMEOUT)) :> BasicUserRole.basicUserRole);
        cUSTOMER <- ((new BasicUserRole.basicUserRole ("CustomerUser", "Customer User", 1, cUSTOMERTIMEOUT, cUSTOMERMAXSESSIONTIME)) :> BasicUserRole.basicUserRole);
        sUBSCRIBERCUSTOMER <- ((new BasicUserRole.basicUserRole ("SubscriberUser", "Subscriber User", 2, cUSTOMERTIMEOUT, cUSTOMERMAXSESSIONTIME)) :> BasicUserRole.basicUserRole);
        wHOLESALECUSTOMER <- ((new BasicUserRole.basicUserRole ("WholesaleUser", "Wholesale User", 3, cUSTOMERTIMEOUT, cUSTOMERMAXSESSIONTIME)) :> BasicUserRole.basicUserRole);
        sTOREMANAGER <- ((new BasicUserRole.basicUserRole ("StoreManager", "Store Manager", 4, mAXSESSIONTIME, iNACTIVITYTIMEOUT)) :> BasicUserRole.basicUserRole);
        pRODUCTMANAGER <- ((new BasicUserRole.basicUserRole ("ProductManager", "Product Manager", 5, mAXSESSIONTIME, iNACTIVITYTIMEOUT)) :> BasicUserRole.basicUserRole);
        cUSTOMERMANAGER <- ((new BasicUserRole.basicUserRole ("UserManager", "User Manager", 6, mAXSESSIONTIME, iNACTIVITYTIMEOUT)) :> BasicUserRole.basicUserRole);
        pAYMENTMANAGER <- ((new BasicUserRole.basicUserRole ("PaymentManager", "Payment Manager", 7, mAXSESSIONTIME, iNACTIVITYTIMEOUT)) :> BasicUserRole.basicUserRole);
        oRDERMANAGER <- ((new BasicUserRole.basicUserRole ("OrderManager", "Order Manager", 8, mAXSESSIONTIME, iNACTIVITYTIMEOUT)) :> BasicUserRole.basicUserRole);
        wEBMANAGER <- ((new BasicUserRole.basicUserRole ("WebManager", "Web Manager", 9, mAXSESSIONTIME, iNACTIVITYTIMEOUT)) :> BasicUserRole.basicUserRole);
        rEVIEWER <- ((BasicUserRole.new_basicUserRole_4 ("Reviewer", 10, mAXSESSIONTIME, iNACTIVITYTIMEOUT)) :> BasicUserRole.basicUserRole);
        sHIPPING <- ((BasicUserRole.new_basicUserRole_4 ("Shipping", 11, mAXSESSIONTIME, iNACTIVITYTIMEOUT)) :> BasicUserRole.basicUserRole);
        aDJUSTER <- ((BasicUserRole.new_basicUserRole_4 ("Adjuster", 12, mAXSESSIONTIME, iNACTIVITYTIMEOUT)) :> BasicUserRole.basicUserRole);
        wORKFLOWEDITOR <- ((new BasicUserRole.basicUserRole ("WorkFlowEditor", "WorkFlow Editor", 13, mAXSESSIONTIME, iNACTIVITYTIMEOUT)) :> BasicUserRole.basicUserRole);
        wIZARD <- ((new BasicUserRole.basicUserRole ("WizardUser", "Wizard User", 14, mAXSESSIONTIME, iNACTIVITYTIMEOUT)) :> BasicUserRole.basicUserRole);
        vIEWEDITOR <- ((new BasicUserRole.basicUserRole ("ViewEditor", "View Editor", 15, mAXSESSIONTIME, iNACTIVITYTIMEOUT)) :> BasicUserRole.basicUserRole);
        ()
      end
  end
let () = java_register_constructor "BasicUserRoleFactory" (fun arguments -> Obj.repr (new basicUserRoleFactory (Obj.obj arguments)))

let instance = (new basicUserRoleFactory ())
let get_instance () = instance
let () = java_register_static "BasicUserRoleFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "BasicUserRoleFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


