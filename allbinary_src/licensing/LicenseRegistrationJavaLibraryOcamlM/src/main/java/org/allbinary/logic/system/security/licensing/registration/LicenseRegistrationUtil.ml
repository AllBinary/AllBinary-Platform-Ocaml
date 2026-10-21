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
(* package org.allbinary.logic.system.security.licensing.registration *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.canvas.SpecialMessageUtil *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.util.ABHashtable *)


let process : 'any1. 'any1 * string -> unit = fun (abeClientInformation, (registrationId : string)) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        (try
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr ((CommonLabels.getInstance ())#sTART_LABEL)) ^ "License Registration"), "LicenseRegistrationUtil", !commonStrings#pROCESS))));
            let registrationConfiguration : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "RegistrationConfiguration.getInstance" (Obj.repr ()))))) in ();
            ignore ((Obj.magic !registrationConfiguration)#setRegistrationCode (registrationId));
            ignore ((Obj.magic !registrationConfiguration)#write ());
            let hashtable : Obj.t ref = ref ((Obj.repr ((Obj.magic abeClientInformation)#toHashtable ()))) in ();
            ignore ((Obj.magic !hashtable)#put ((Obj.magic (java_call_static "RegistrationConfiguration.getInstance" (Obj.repr ())))#nAME, registrationId));
            ignore ((Obj.magic !hashtable)#put ("message", ((SpecialMessageUtil.getInstance ())#get ())));
            ignore ((new XmlRpcRemoteLicenseRegistrationClient.xmlRpcRemoteLicenseRegistrationClient ((Obj.magic abeClientInformation)))#get ((Obj.magic !hashtable)))
        with e -> begin
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr ("License Registration Exception", "LicenseRegistrationUtil", "License Registration", e))))
        end)
        end [@@warning "-20"]

let () = java_register_static "LicenseRegistrationUtil.process" (fun arguments -> Obj.repr (process (Obj.obj arguments)))
class licenseRegistrationUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "LicenseRegistrationUtil" (fun arguments -> Obj.repr (new licenseRegistrationUtil (Obj.obj arguments)))


