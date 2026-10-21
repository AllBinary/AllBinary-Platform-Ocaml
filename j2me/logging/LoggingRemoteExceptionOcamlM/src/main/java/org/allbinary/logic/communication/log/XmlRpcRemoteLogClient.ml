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
(* package org.allbinary.logic.communication.log *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.IOException *)
(* import org.apache.xmlrpc.XmlRpcClient *)
(* import org.apache.xmlrpc.XmlRpcException *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient *)
(* import org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.util.ABHashtable *)

class xmlRpcRemoteLogClient ((clientInfo : AbeClientInformationInterface.abeClientInformationInterface)) =
  object (self)
    inherit XmlRpcAbeClient.xmlRpcAbeClient (clientInfo, "SSLLogServ.logUtil")
    val mutable noCrypt : NoCrypt.noCrypt = (Obj.magic 0)
    method noCrypt = noCrypt
    method set_noCrypt value' = noCrypt <- value'
    
    

    method get : 'any1. 'any1 -> Obj.t = fun (anyType) ->
        let anyType = Obj.repr anyType in
        try
        begin
        (try
            let param : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            let serverUrl : string ref = ref (((self#getClientInfo ())#getLicenseServer ((self#getServer ())))) in ();
            let index : int ref = ref ((java_string_last_index_of !serverUrl (Obj.repr ("/")))) in ();
            serverUrl := ((String.sub !serverUrl (0) (((!index + 1)) - (0))) ^ "logservssl.php");
            let xmlRpcClient : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "XmlRpcClient" (Obj.repr (!serverUrl)))))) in ();
            ignore (self#setClient ((Obj.magic !xmlRpcClient)));
            ignore ((Obj.magic !xmlRpcClient)#setBasicAuthentication ((Obj.magic 0), (Obj.magic 0)));
            let hashtable : Obj.t ref = ref ((Obj.repr (Obj.magic anyType))) in ();
            ignore (!param#add ((Obj.magic !hashtable)));
            let result : Obj.t ref = ref ((Obj.repr ((Obj.magic !xmlRpcClient)#execute ((self#getRemoteMethod ()), !param, noCrypt)))) in ();
            (print_endline (java_string_of (Obj.repr ((java_string_of (Obj.repr (((CommonLabels.getInstance ())#rESULT_ + (CommonSeps.getInstance ())#nEW_LINE))) ^ (java_string_of (Obj.repr !result)))))));
            (Obj.repr (!result))
        with e -> begin
            (print_endline (java_string_of (Obj.repr ("IOException Trying Other Servers"))));
            if (not ((Printexc.to_string e)#startsWith (hOST_NOT_RESOLVED))) then begin
                raise (Java_return (Obj.repr ((self#tryAnother (anyType)))))
            end else begin
                raise (Failure (hOST_NOT_RESOLVED_MSG))
            end
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        noCrypt <- ((new NoCrypt.noCrypt ()) :> NoCrypt.noCrypt);
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "XmlRpcRemoteLogClient" (fun arguments -> Obj.repr (new xmlRpcRemoteLogClient (Obj.obj arguments)))


