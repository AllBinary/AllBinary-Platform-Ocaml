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
(* package org.allbinary.logic.system.security.licensing *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.string.CommonStrings *)

class licenseTypeFactory () =
  object
    val mutable uNKNOWN : LicenseType.licenseType = (Obj.magic 0)
    method uNKNOWN = uNKNOWN
    method set_uNKNOWN value' = uNKNOWN <- value'
    val mutable dEMO : LicenseType.licenseType = (Obj.magic 0)
    method dEMO = dEMO
    method set_dEMO value' = dEMO <- value'
    val mutable nORMAL : LicenseType.licenseType = (Obj.magic 0)
    method nORMAL = nORMAL
    method set_nORMAL value' = nORMAL <- value'
    

    (* Java overload getInstance(String) is not converted: OCaml has one method per name *)

    initializer
      begin
        uNKNOWN <- ((new LicenseType.licenseType ((CommonStrings.getInstance ())#uNKNOWN)) :> LicenseType.licenseType);
        dEMO <- ((new LicenseType.licenseType ("Demo")) :> LicenseType.licenseType);
        nORMAL <- ((new LicenseType.licenseType ("Normal")) :> LicenseType.licenseType);
        ()
      end
  end
let () = java_register_constructor "LicenseTypeFactory" (fun arguments -> Obj.repr (new licenseTypeFactory (Obj.obj arguments)))

let instance = (new licenseTypeFactory ())
let get_instance () = instance
let () = java_register_static "LicenseTypeFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "LicenseTypeFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


