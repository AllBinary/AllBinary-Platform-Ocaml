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
(* package org.allbinary.game.midlet *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class licenseLoadingTypeFactory () =
  object
    val mutable iNITIAL_LOADING : Obj.t = Obj.repr 0
    method iNITIAL_LOADING : 'r. 'r = Obj.magic iNITIAL_LOADING
    method set_iNITIAL_LOADING : 'v. 'v -> unit = fun value' -> iNITIAL_LOADING <- Obj.repr value'
    val mutable gAME_START : Obj.t = Obj.repr 0
    method gAME_START : 'r. 'r = Obj.magic gAME_START
    method set_gAME_START : 'v. 'v -> unit = fun value' -> gAME_START <- Obj.repr value'
    val mutable lOGIN : Obj.t = Obj.repr 0
    method lOGIN : 'r. 'r = Obj.magic lOGIN
    method set_lOGIN : 'v. 'v -> unit = fun value' -> lOGIN <- Obj.repr value'
    val mutable oTHER : Obj.t = Obj.repr 0
    method oTHER : 'r. 'r = Obj.magic oTHER
    method set_oTHER : 'v. 'v -> unit = fun value' -> oTHER <- Obj.repr value'

    initializer
      begin
        iNITIAL_LOADING <- (Obj.repr (Obj.obj (java_new "LicenseLoadingType" (Obj.repr ("Initial Loading")))));
        gAME_START <- (Obj.repr (Obj.obj (java_new "LicenseLoadingType" (Obj.repr ("Game Start")))));
        lOGIN <- (Obj.repr (Obj.obj (java_new "LicenseLoadingType" (Obj.repr ("Login")))));
        oTHER <- (Obj.repr (Obj.obj (java_new "LicenseLoadingType" (Obj.repr ("Other/Usually The First Non Demo Level")))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "LicenseLoadingTypeFactory" (fun arguments -> Obj.repr (new licenseLoadingTypeFactory (Obj.obj arguments)))

let instance = (new licenseLoadingTypeFactory ())
let get_instance () = instance
let () = java_register_static "LicenseLoadingTypeFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getIntance () =
        begin
        instance
        end
let () = java_register_static "LicenseLoadingTypeFactory.getIntance" (fun arguments -> Obj.repr (getIntance (Obj.obj arguments)))


