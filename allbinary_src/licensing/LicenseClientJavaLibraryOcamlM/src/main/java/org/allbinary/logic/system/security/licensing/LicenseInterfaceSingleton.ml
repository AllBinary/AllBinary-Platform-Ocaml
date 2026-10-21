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

let licenseInterface : AbeLicenseInterface.abeLicenseInterface ref = ref (((AbeNoLicense.getInstance ()) :> AbeLicenseInterface.abeLicenseInterface))
let get_licenseInterface () = !licenseInterface
let set_licenseInterface value' = licenseInterface := value'
let () = java_register_static "LicenseInterfaceSingleton.get_licenseInterface" (fun _ -> Obj.repr (get_licenseInterface ()))

let getInstance () : AbeLicenseInterface.abeLicenseInterface =
        begin
        (!licenseInterface :> AbeLicenseInterface.abeLicenseInterface)
        end

and init : 'any1. 'any1 -> unit = fun (licenseInterface_arg) ->
        let licenseInterface_arg = Obj.repr licenseInterface_arg in
        begin
        if ((Obj.magic licenseInterface_arg) != (Obj.magic 0)) then begin
            licenseInterface := (Obj.magic licenseInterface_arg)
        end
        end [@@warning "-20"]

let () = java_register_static "LicenseInterfaceSingleton.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
let () = java_register_static "LicenseInterfaceSingleton.init" (fun arguments -> Obj.repr (init (Obj.obj arguments)))
class licenseInterfaceSingleton () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "LicenseInterfaceSingleton" (fun arguments -> Obj.repr (new licenseInterfaceSingleton (Obj.obj arguments)))


