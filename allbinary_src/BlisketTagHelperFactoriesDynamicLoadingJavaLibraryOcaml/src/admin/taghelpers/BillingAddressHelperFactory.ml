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
(* package admin.taghelpers *)

open Allbinary_java [@@warning "-33"]
(* import java.util.HashMap *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)

class billingAddressHelperFactory () =
  object
    
    

    method getInstance ((hashMap : java_hash_map), pageContext) : Obj.t =
        begin
        (HelperFactory.getInstance (fACTORYNAME, cLASSNAME, hashMap, pageContext))
        end

    initializer
      begin
        ();
        ()
      end
  end

let cLASSNAME : string = "admin.taghelpers.BillingAddressHelper"
let fACTORYNAME : string = "BillingAddressHelperFactory"

