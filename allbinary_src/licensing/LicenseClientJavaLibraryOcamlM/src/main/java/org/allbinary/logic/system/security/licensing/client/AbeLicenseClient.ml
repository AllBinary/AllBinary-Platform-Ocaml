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
(* package org.allbinary.logic.system.security.licensing.client *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.init.LicenseInitInfo *)
(* import org.allbinary.business.init.LicenseInitInfoUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.AbeLicenseInterface *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)

class abeLicenseClient () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable mINSERVERS : int = 0
    method mINSERVERS = mINSERVERS
    method set_mINSERVERS value' = mINSERVERS <- value'
    
    

    method get : 'any1. 'any1 -> AbeLicenseInterface.abeLicenseInterface = fun (abeClientInformation) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#gET));
            let xmlRpcAbeLicenseClient : XmlRpcAbeClient.xmlRpcAbeClient ref = ref (((new XmlRpcAbeLicenseRetrievalClient.xmlRpcAbeLicenseRetrievalClient ((Obj.magic abeClientInformation))) :> XmlRpcAbeClient.xmlRpcAbeClient)) in ();
            let abeLicenseInterface : AbeLicenseInterface.abeLicenseInterface ref = ref (((Obj.magic (!xmlRpcAbeLicenseClient#get ((Obj.magic 0)))) :> AbeLicenseInterface.abeLicenseInterface)) in ();
            let licenseId : string ref = ref ((!abeLicenseInterface#getLicenseId ())) in ();
            let servers : BasicArrayList.basicArrayList ref = ref (((!abeLicenseInterface#getServers ()) :> BasicArrayList.basicArrayList)) in ();
            let isNewLicenseId : bool ref = ref (false) in ();
            let isBetterServerList : bool ref = ref (false) in ();
            let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
            if ((!stringValidationUtil#isEmpty (((Obj.magic abeClientInformation)#getLicenseId ()))) && (not ((Obj.magic abeClientInformation)#isSameId (!licenseId)))) then begin
                isNewLicenseId := true
            end;
            if (((!servers#size ()) >= mINSERVERS) && ((Obj.magic abeClientInformation)#isLargerOrDifferentServerList (!servers))) then begin
                isBetterServerList := true
            end;
            if (!isBetterServerList || !isNewLicenseId) then begin
                let initInfo : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "LicenseInitInfoUtil.getInstance" (Obj.repr ())))#read ()))) in ();
                ignore ((Obj.magic !initInfo)#setLicenseId (!licenseId));
                ignore ((Obj.magic !initInfo)#setServerList (!servers));
                ignore ((Obj.magic (java_call_static "LicenseInitInfoUtil.getInstance" (Obj.repr ())))#write ((Obj.magic !initInfo)));
                ignore ((Obj.magic abeClientInformation)#init ())
            end;
            ignore ((Obj.magic logUtil)#putF (commonStrings#eND, self, commonStrings#gET));
            (!abeLicenseInterface :> AbeLicenseInterface.abeLicenseInterface)
        with e -> begin
            raise e
        end)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        mINSERVERS <- 3;
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AbeLicenseClient" (fun arguments -> Obj.repr (new abeLicenseClient (Obj.obj arguments)))


