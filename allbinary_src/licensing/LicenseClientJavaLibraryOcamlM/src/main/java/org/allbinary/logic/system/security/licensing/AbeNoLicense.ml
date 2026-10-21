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
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class abeNoLicense () =
  object
    val mutable serverVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method serverVector = serverVector
    method set_serverVector value' = serverVector <- value'
    
    

    method hasKey () : bool =
        begin
        false
        end
    

    method getKey ((_keyName : string)) : string =
        begin
        (StringUtil.getInstance ())#eMPTY_STRING
        end
    

    method getLicenseId () : string =
        begin
        (StringUtil.getInstance ())#eMPTY_STRING
        end
    

    method getSpecial () : string =
        begin
        (StringUtil.getInstance ())#eMPTY_STRING
        end
    

    method getServers () : BasicArrayList.basicArrayList =
        begin
        (serverVector :> BasicArrayList.basicArrayList)
        end
    

    method isValid () : bool =
        begin
        false
        end
    

    method getLicenseType () : LicenseType.licenseType =
        begin
        ((LicenseTypeFactory.getInstance ())#uNKNOWN :> LicenseType.licenseType)
        end

    initializer
      begin
        serverVector <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ()
      end
  end
let () = java_register_constructor "AbeNoLicense" (fun arguments -> Obj.repr (new abeNoLicense (Obj.obj arguments)))

let abeNoLicense = ref ((new abeNoLicense ()))
let get_abeNoLicense () = !abeNoLicense
let set_abeNoLicense value' = abeNoLicense := value'
let () = java_register_static "AbeNoLicense.get_abeNoLicense" (fun _ -> Obj.repr (get_abeNoLicense ()))

let getInstance () =
        begin
        !abeNoLicense
        end
let () = java_register_static "AbeNoLicense.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


