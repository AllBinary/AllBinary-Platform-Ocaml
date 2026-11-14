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
(* import org.allbinary.logic.string.StringUtil *)
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
  object
    inherit XmlRpcAbeClient.xmlRpcAbeClient (clientInfo, "LicServ.getLicense")
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    (* Java overload get(Any, CryptInterface) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "XmlRpcAbeLicenseRetrievalClient" (fun arguments -> Obj.repr (new xmlRpcAbeLicenseRetrievalClient (Obj.obj arguments)))


