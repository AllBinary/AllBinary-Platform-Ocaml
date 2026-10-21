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
(* package org.allbinary *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.init.LicenseInitInfoUtil *)
(* import org.allbinary.data.resource.ResourceUtil *)
(* import org.allbinary.logic.system.security.licensing.PartnerIdentifierFileUtil *)


let init () : unit =
        begin
        let resourceUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "ResourceUtil.getInstance" (Obj.repr ()))))) in ();
        let androidResources : AndroidResources.androidResources ref = ref (((AndroidResources.getInstance ()) :> AndroidResources.androidResources)) in ();
        let licenseInitInfoUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LicenseInitInfoUtil.getInstance" (Obj.repr ()))))) in ();
        ignore ((Obj.magic !resourceUtil)#addResource ((Obj.magic !licenseInitInfoUtil)#iNITFILENAME, (string_of_int (!androidResources#raw#licenseinitdata))));
        ignore ((Obj.magic !resourceUtil)#addResource ((PartnerIdentifierFileUtil.getInstance ())#fILE_NAME, (string_of_int (!androidResources#raw#partner))))
        end

let () = java_register_static "AllBinaryAndroidGameInitializationUtil.init" (fun arguments -> Obj.repr (init (Obj.obj arguments)))
class allBinaryAndroidGameInitializationUtil () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "AllBinaryAndroidGameInitializationUtil" (fun arguments -> Obj.repr (new allBinaryAndroidGameInitializationUtil (Obj.obj arguments)))


