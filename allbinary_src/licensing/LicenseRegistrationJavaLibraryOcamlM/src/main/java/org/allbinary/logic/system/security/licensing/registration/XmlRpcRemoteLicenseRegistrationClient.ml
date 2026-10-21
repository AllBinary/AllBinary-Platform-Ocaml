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
(* import java.io.IOException *)
(* import org.apache.xmlrpc.XmlRpcClient *)
(* import org.apache.xmlrpc.XmlRpcException *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.init.crypt.jcehelper.CryptInterface *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient *)
(* import org.allbinary.logic.java.exception.ExceptionUtil *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.util.ABHashtable *)

class xmlRpcRemoteLicenseRegistrationClient ((clientInfo : AbeClientInformationInterface.abeClientInformationInterface)) =
  object (self)
    inherit XmlRpcAbeClient.xmlRpcAbeClient (clientInfo, "LicenseRegistrationServer.process")
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable pAGE : string = ""
    method pAGE = pAGE
    method set_pAGE value' = pAGE <- value'
    
    

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
            let serverUrl : string ref = ref (((self#getClientInfo ())#getLicenseServer ((self#getServer ())))) in ();
            let index : int ref = ref ((java_string_last_index_of !serverUrl (Obj.repr ("/")))) in ();
            serverUrl := ((String.sub !serverUrl (0) (((!index + 1)) - (0))) ^ pAGE);
            let xmlRpcClient : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "XmlRpcClient" (Obj.repr (!serverUrl)))))) in ();
            ignore (self#setClient ((Obj.magic !xmlRpcClient)));
            ignore ((Obj.magic !xmlRpcClient)#setBasicAuthentication ((Obj.magic 0), (Obj.magic 0)));
            let hashtable : Obj.t ref = ref ((Obj.repr (Obj.magic anyType))) in ();
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (cLIENT_INFO)) ^ (java_string_of (Obj.repr (Obj.magic !hashtable)))), self, commonStrings#gET));
            ignore (!param#add ((Obj.magic !hashtable)));
            let result : Obj.t ref = ref ((Obj.repr ((Obj.magic !xmlRpcClient)#execute ((self#getRemoteMethod ()), !param, (Obj.magic cryptInterface))))) in ();
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (rESULT)) ^ (java_string_of (Obj.repr !result))), self, commonStrings#gET));
            isOnline <- true;
            (Obj.repr (!result))
        with e -> begin
            ignore ((Obj.magic logUtil)#putF ((tRYING_OTHER_SERVERS + ((Obj.magic (java_call_static "ExceptionUtil.getInstance" (Obj.repr ())))#getStackTrace (e))), self, commonStrings#gET));
            if (not ((Printexc.to_string e)#startsWith (hOST_NOT_RESOLVED))) then begin
                raise (Java_return (Obj.repr ((self#tryAnother (anyType)))))
            end else begin
                raise (Failure (hOST_NOT_RESOLVED_MSG))
            end
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        pAGE <- "licenseregistrationserverssl.php";
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setServer (0))
      end
  end [@@warning "-20"]
let () = java_register_constructor "XmlRpcRemoteLicenseRegistrationClient" (fun arguments -> Obj.repr (new xmlRpcRemoteLicenseRegistrationClient (Obj.obj arguments)))


