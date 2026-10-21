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
(* package org.allbinary.logic.system.loader *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.system.security.AbKeys *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)

class securedNativeLibraryHelperWrapper ((securedNativeLibraryInterface_arg : SecuredNativeLibraryInterface.securedNativeLibraryInterface)) =
  object
    inherit NativeLibraryHelperWrapper.nativeLibraryHelperWrapper ((securedNativeLibraryInterface_arg#getLibraryName ()))
    val mutable securedNativeLibraryInterface : SecuredNativeLibraryInterface.securedNativeLibraryInterface = (Obj.magic 0)
    method securedNativeLibraryInterface = securedNativeLibraryInterface
    method set_securedNativeLibraryInterface value' = securedNativeLibraryInterface <- value'
    
    

    method unlock : 'any1. 'any1 -> bool = fun (abeClientInformation) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        (securedNativeLibraryInterface#unlock (((AbKeys.getInstance ())#getKey ((Obj.magic abeClientInformation), (securedNativeLibraryInterface#getName ())))))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        securedNativeLibraryInterface <- securedNativeLibraryInterface_arg
      end
  end
let () = java_register_constructor "SecuredNativeLibraryHelperWrapper" (fun arguments -> Obj.repr (new securedNativeLibraryHelperWrapper (Obj.obj arguments)))


