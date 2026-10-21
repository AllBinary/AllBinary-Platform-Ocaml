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
(* package org.allbinary.logic.communication.xmlrpc *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.rand.MyRandomFactory *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import org.apache.xmlrpc.NullXmlRpcHandler *)
(* import org.apache.xmlrpc.XmlRpcClient *)
(* import org.apache.xmlrpc.XmlRpcHandler *)

let isOnline : bool ref = ref (true)
let get_isOnline () = !isOnline
let set_isOnline value' = isOnline := value'
let () = java_register_static "XmlRpcAbeClient.get_isOnline" (fun _ -> Obj.repr (get_isOnline ()))
class xmlRpcAbeClient ((clientInfo_arg : AbeClientInformationInterface.abeClientInformationInterface), (remoteMethod_arg : string)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable remoteMethod : string = ""
    method remoteMethod = remoteMethod
    method set_remoteMethod value' = remoteMethod <- value'
    val mutable clientInfo : AbeClientInformationInterface.abeClientInformationInterface = (Obj.magic 0)
    method clientInfo = clientInfo
    method set_clientInfo value' = clientInfo <- value'
    val mutable client : Obj.t = Obj.repr 0
    method client : 'r. 'r = Obj.magic client
    method set_client : 'v. 'v -> unit = fun value' -> client <- Obj.repr value'
    val mutable server : int = 0
    method server = server
    method set_server value' = server <- value'
    val mutable start : int = 0
    method start = start
    method set_start value' = start <- value'
    val mutable maxServers : int = 0
    method maxServers = maxServers
    method set_maxServers value' = maxServers <- value'
    val mutable isDone : bool = false
    method isDone = isDone
    method set_isDone value' = isDone <- value'
    val mutable sTART_SERVER : string = ""
    method sTART_SERVER = sTART_SERVER
    method set_sTART_SERVER value' = sTART_SERVER <- value'
    val mutable tRYING : string = ""
    method tRYING = tRYING
    method set_tRYING value' = tRYING <- value'
    val mutable sEP : string = ""
    method sEP = sEP
    method set_sEP value' = sEP <- value'
    val mutable cLIENT_INFO : string = ""
    method cLIENT_INFO = cLIENT_INFO
    method set_cLIENT_INFO value' = cLIENT_INFO <- value'
    val mutable rESULT : string = ""
    method rESULT = rESULT
    method set_rESULT value' = rESULT <- value'
    val mutable iNVALID : string = ""
    method iNVALID = iNVALID
    method set_iNVALID value' = iNVALID <- value'
    val mutable eXCEPTION_IN_CLIENT : string = ""
    method eXCEPTION_IN_CLIENT = eXCEPTION_IN_CLIENT
    method set_eXCEPTION_IN_CLIENT value' = eXCEPTION_IN_CLIENT <- value'
    val mutable sERVER_REPORTED_ERROR : string = ""
    method sERVER_REPORTED_ERROR = sERVER_REPORTED_ERROR
    method set_sERVER_REPORTED_ERROR value' = sERVER_REPORTED_ERROR <- value'
    val mutable uNKNOWN_ERROR : string = ""
    method uNKNOWN_ERROR = uNKNOWN_ERROR
    method set_uNKNOWN_ERROR value' = uNKNOWN_ERROR <- value'
    val mutable tRYING_OTHER_SERVERS : string = ""
    method tRYING_OTHER_SERVERS = tRYING_OTHER_SERVERS
    method set_tRYING_OTHER_SERVERS value' = tRYING_OTHER_SERVERS <- value'
    val mutable hOST_NOT_RESOLVED_MSG : string = ""
    method hOST_NOT_RESOLVED_MSG = hOST_NOT_RESOLVED_MSG
    method set_hOST_NOT_RESOLVED_MSG value' = hOST_NOT_RESOLVED_MSG <- value'
    val mutable hOST_NOT_RESOLVED : string = ""
    method hOST_NOT_RESOLVED = hOST_NOT_RESOLVED
    method set_hOST_NOT_RESOLVED value' = hOST_NOT_RESOLVED <- value'
    val mutable myRandomFactory : MyRandomFactory.myRandomFactory = (Obj.magic 0)
    method myRandomFactory = myRandomFactory
    method set_myRandomFactory value' = myRandomFactory <- value'
    
    

    method get : 'any1. 'any1 -> Obj.t = fun (_anyType) ->
        begin
        ignore (ForcedLogUtil.log (commonStrings#nOT_IMPLEMENTED, self));
        (Obj.repr ((NullUtil.getInstance ())#nULL_OBJECT))
        end
    

    method tryAnother : 'any1. 'any1 -> Obj.t = fun (anyType) ->
        let anyType = Obj.repr anyType in
        try
        begin
        if ((self#getServer ()) < (self#getMaxServers ())) then begin
            (self#setServer (((self#getServer ()) + 1)))
        end else begin
            (self#setServer (0))
        end;
        if (((self#getServer ()) <> (self#getStart ())) && (not (self#isIsDone ()))) then begin
            raise (Java_return (Obj.repr ((self#get (anyType)))))
        end else begin
            (self#setIsDone (true))
        end;
        raise (Failure ("Tried All Servers But Still Failed"))
        end
        with Java_return value -> Obj.obj value
    

    method getClientInfo () : AbeClientInformationInterface.abeClientInformationInterface =
        begin
        (clientInfo :> AbeClientInformationInterface.abeClientInformationInterface)
        end
    

    method getClient : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic client)))
        end
    

    method setClient : 'any1. 'any1 -> unit = fun (client_arg) ->
        let client_arg = Obj.repr client_arg in
        begin
        client <- Obj.repr ((Obj.magic client_arg))
        end [@@warning "-20"]
    

    method getServer () : int =
        begin
        server
        end
    

    method setServer ((server_arg : int)) : unit =
        begin
        server <- server_arg
        end
    

    method getStart () : int =
        begin
        start
        end
    

    method setStart ((start_arg : int)) : unit =
        begin
        start <- start_arg
        end
    

    method getMaxServers () : int =
        begin
        maxServers
        end
    

    method setMaxServers ((maxServers_arg : int)) : unit =
        begin
        maxServers <- maxServers_arg
        end
    

    method isIsDone () : bool =
        begin
        isDone
        end
    

    method setIsDone ((isDone_arg : bool)) : unit =
        begin
        isDone <- isDone_arg
        end
    

    method getRemoteMethod () : string =
        begin
        remoteMethod
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        client <- (Obj.repr (NullXmlRpcHandler.get_nULL_XML_RPC_HANDLER ()));
        ();
        start <- 0;
        maxServers <- 0;
        ();
        sTART_SERVER <- "Start With Server #";
        tRYING <- "Trying Server #";
        sEP <- (CommonLabels.getInstance ())#cOLON_SEP;
        cLIENT_INFO <- "Client Info: \n";
        rESULT <- ((CommonLabels.getInstance ())#rESULT_ + (CommonSeps.getInstance ())#nEW_LINE);
        iNVALID <- "License data is Invalid Trying Other Servers";
        eXCEPTION_IN_CLIENT <- "Exception in client";
        sERVER_REPORTED_ERROR <- "Server reported error";
        uNKNOWN_ERROR <- "Unknown License Retrieval Failure";
        tRYING_OTHER_SERVERS <- "IOException Trying Other Servers";
        hOST_NOT_RESOLVED_MSG <- "Not Trying Again Since Host Unresolved";
        hOST_NOT_RESOLVED <- "Host is unresolved";
        myRandomFactory <- ((MyRandomFactory.getInstance ()) :> MyRandomFactory.myRandomFactory);
        ();
        remoteMethod <- remoteMethod_arg;
        clientInfo <- clientInfo_arg;
        if ((clientInfo_arg#getNumberOfLicenseServers ()) > 1) then begin
            maxServers <- ((clientInfo_arg#getNumberOfLicenseServers ()) - 2);
            start <- ((myRandomFactory#getAbsoluteNextInt (maxServers)) + 1)
        end else if ((clientInfo_arg#getNumberOfLicenseServers ()) == 1) then begin
            maxServers <- 0;
            start <- 0
        end;
        isDone <- false;
        server <- start;
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (sTART_SERVER));
        ignore (!stringBuffer#appendint ((self#getServer ())));
        ignore (!stringBuffer#append (sEP));
        ignore (!stringBuffer#append ((clientInfo_arg#getLicenseServer ((self#getServer ())))));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, commonStrings#cONSTRUCTOR))
      end
  end [@@warning "-20"]
let () = java_register_constructor "XmlRpcAbeClient" (fun arguments -> Obj.repr (new xmlRpcAbeClient (Obj.obj arguments)))


