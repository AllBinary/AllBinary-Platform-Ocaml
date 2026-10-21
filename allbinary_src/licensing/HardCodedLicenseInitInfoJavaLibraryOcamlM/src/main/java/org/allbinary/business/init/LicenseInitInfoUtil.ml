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
(* package org.allbinary.business.init *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class licenseInitInfoUtil () =
  object (self)
    val mutable iNITFILENAME : string = ""
    method iNITFILENAME = iNITFILENAME
    method set_iNITFILENAME value' = iNITFILENAME <- value'
    val mutable aBOUT : string = ""
    method aBOUT = aBOUT
    method set_aBOUT value' = aBOUT <- value'
    val mutable pRIVACY_POLICY : string = ""
    method pRIVACY_POLICY = pRIVACY_POLICY
    method set_pRIVACY_POLICY value' = pRIVACY_POLICY <- value'
    val mutable oFFICIAL_ALLBINARY_SERVICES_SERVER : string = ""
    method oFFICIAL_ALLBINARY_SERVICES_SERVER = oFFICIAL_ALLBINARY_SERVICES_SERVER
    method set_oFFICIAL_ALLBINARY_SERVICES_SERVER value' = oFFICIAL_ALLBINARY_SERVICES_SERVER <- value'
    

    method setFilePath ((_filePath : string)) : unit =
        begin
        ()
        end
    
    

    method write : 'any1. 'any1 -> unit = fun (_initData) ->
        begin
        ()
        end [@@warning "-20"]
    

    method read : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((self#readAgain (0))))
        end
    

    method readAgain : 'return. int -> 'return = fun ((_initializeCounter : int)) ->
        begin
        let licenseInitInfo : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "LicenseInitInfo" (Obj.repr ()))))) in ();
        ignore ((Obj.magic !licenseInitInfo)#clearServers ());
        ignore ((Obj.magic !licenseInitInfo)#addServer (oFFICIAL_ALLBINARY_SERVICES_SERVER));
        (Obj.magic ((Obj.magic !licenseInitInfo)))
        end

    initializer
      begin
        iNITFILENAME <- "licenseinitdata.dat";
        aBOUT <- "about";
        pRIVACY_POLICY <- "privacy_policy";
        oFFICIAL_ALLBINARY_SERVICES_SERVER <- "https://services.allbinary.com/LicServ/serverssl.php";
        ();
        ()
      end
  end
let () = java_register_constructor "LicenseInitInfoUtil" (fun arguments -> Obj.repr (new licenseInitInfoUtil (Obj.obj arguments)))

let instance = (new licenseInitInfoUtil ())
let get_instance () = instance
let () = java_register_static "LicenseInitInfoUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "LicenseInitInfoUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


