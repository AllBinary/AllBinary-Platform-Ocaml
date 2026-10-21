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

class licenseStrings () =
  object
    val mutable lOCKED : string = ""
    method lOCKED = lOCKED
    method set_lOCKED value' = lOCKED <- value'

    initializer
      begin
        lOCKED <- "Demo Locked Feature";
        ()
      end
  end
let () = java_register_constructor "LicenseStrings" (fun arguments -> Obj.repr (new licenseStrings (Obj.obj arguments)))

let instance = (new licenseStrings ())
let get_instance () = instance
let () = java_register_static "LicenseStrings.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "LicenseStrings.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


