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
(* import org.allbinary.business.init.LicenseInitInfo *)
(* import org.allbinary.business.init.LicenseInitInfoUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.system.os.OperatingSystemFactory *)
(* import org.allbinary.string.CommonStrings *)

class abeClientInformation ((name : string), (version : string), (specialName : string), (shortName : string)) =
  object (self)
    inherit ClientInformation.clientInformation (name, version, specialName, shortName)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method init () : unit =
        begin
        (try
            ignore (self#setOperatingSystemInterface (((Obj.magic (java_call_static "OperatingSystemFactory.getInstance" (Obj.repr ())))#getOperatingSystemInstance ())));
            let licenseInitInfo : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "LicenseInitInfoUtil.getInstance" (Obj.repr ())))#read ()))) in ();
            ignore (self#setLicenseId (((Obj.magic !licenseInitInfo)#getLicenseId ())));
            ignore (self#setLicenseServers (((Obj.magic !licenseInitInfo)#getServerList ())));
            let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
            if (!stringValidationUtil#isEmpty ((self#getLicenseId ()))) then begin
                let nONE : string ref = ref ("No License Id") in ();
                ignore (self#setLicenseId (!nONE))
            end;
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Special Name: "))#append ((self#getSpecialName ()))))), self, !commonStrings#cONSTRUCTOR))))
        with e -> begin
            let logUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic !logUtil_arg)#put (!commonStrings#eXCEPTION, self, !commonStrings#cONSTRUCTOR, e))
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AbeClientInformation" (fun arguments -> Obj.repr (new abeClientInformation (Obj.obj arguments)))


