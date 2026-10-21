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
(* import java.io.IOException *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.init.crypt.jcehelper.CryptInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient *)
(* import org.allbinary.logic.java.exception.ExceptionUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.AbeClientLicense *)
(* import org.allbinary.logic.system.security.licensing.AbeLicenseInterface *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.util.ABHashtable *)
(* import org.apache.xmlrpc.XmlRpcClient *)
(* import org.apache.xmlrpc.XmlRpcException *)

class xmlRpcAbeLicenseRetrievalClient ((clientInfo : AbeClientInformationInterface.abeClientInformationInterface)) =
  object (self)
    inherit XmlRpcAbeClient.xmlRpcAbeClient (clientInfo, "LicServ.getLicense")
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method get : 'any1 'any2. 'any1 * 'any2 -> Obj.t = fun (anyType, cryptInterface) ->
        let anyType = Obj.repr anyType in
        let cryptInterface = Obj.repr cryptInterface in
        try
        begin
        (try
            let server : string ref = ref (((self#getClientInfo ())#getLicenseServer ((self#getServer ())))) in ();
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append (tRYING));
            ignore (!stringBuffer#appendint ((java_to_int (Obj.repr ((self#getServer ()))))));
            ignore (!stringBuffer#append (SEP));
            ignore (!stringBuffer#append (!server));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((CommonLabels.getInstance ())#sTART_LABEL)) ^ (java_string_of (Obj.repr !stringBuffer))), self, commonStrings#gET));
            let param : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            let xmlRpcClient : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "XmlRpcClient" (Obj.repr (!server)))))) in ();
            ignore (self#setClient ((Obj.magic !xmlRpcClient)));
            ignore ((Obj.magic !xmlRpcClient)#setBasicAuthentication ((Obj.magic 0), (Obj.magic 0)));
            let hashtable : Obj.t ref = ref ((Obj.repr ((self#getClientInfo ())#toHashtable ()))) in ();
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (cLIENT_INFO)) ^ (java_string_of (Obj.repr (Obj.magic !hashtable)))), self, commonStrings#gET));
            ignore (!param#add ((Obj.magic !hashtable)));
            let result : Obj.t ref = ref ((Obj.repr ((Obj.magic !xmlRpcClient)#execute ((self#getRemoteMethod ()), !param, (Obj.magic cryptInterface))))) in ();
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (rESULT)) ^ (java_string_of (Obj.repr !result))), self, commonStrings#gET));
            let resultHashtable : Obj.t ref = ref ((Obj.repr (Obj.magic !result))) in ();
            if (not (AbeClientLicense.hasRequiredKeys ((Obj.magic !resultHashtable)))) then begin
                ignore ((Obj.magic logUtil)#putF (iNVALID, self, commonStrings#gET));
                raise (Java_return (Obj.repr ((self#tryAnother (anyType)))))
            end;
            let abeLicenseInterface : AbeLicenseInterface.abeLicenseInterface ref = ref (((new AbeClientLicense.abeClientLicense ((Obj.magic !resultHashtable))) :> AbeLicenseInterface.abeLicenseInterface)) in ();
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (commonStrings#eND)) ^ (java_string_of (Obj.repr !stringBuffer))), self, commonStrings#gET));
            isOnline <- true;
            (Obj.repr (!abeLicenseInterface))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (eXCEPTION_IN_CLIENT, self, commonStrings#gET, e));
            ignore ((Obj.magic logUtil)#putF ((tRYING_OTHER_SERVERS + ((Obj.magic (java_call_static "ExceptionUtil.getInstance" (Obj.repr ())))#getStackTrace (e))), self, commonStrings#gET));
            if (not ((Printexc.to_string e)#startsWith (hOST_NOT_RESOLVED))) then begin
                raise (Java_return (Obj.repr ((self#tryAnother (anyType)))))
            end else begin
                isOnline <- false;
                raise (Failure (hOST_NOT_RESOLVED_MSG))
            end
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "XmlRpcAbeLicenseRetrievalClient" (fun arguments -> Obj.repr (new xmlRpcAbeLicenseRetrievalClient (Obj.obj arguments)))


