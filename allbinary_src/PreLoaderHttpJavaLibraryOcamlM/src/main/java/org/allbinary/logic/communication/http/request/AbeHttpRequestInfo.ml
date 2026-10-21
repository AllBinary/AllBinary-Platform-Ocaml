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
(* package org.allbinary.logic.communication.http.request *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Enumeration *)
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.servlet.http.HttpServletRequest *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonSeps *)

class abeHttpRequestInfo ((hashMap : java_hash_map)) =
  object
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable abeHttpRequestInfoData : AbeHttpRequestInfoData.abeHttpRequestInfoData = (Obj.magic 0)
    method abeHttpRequestInfoData = abeHttpRequestInfoData
    method set_abeHttpRequestInfoData value' = abeHttpRequestInfoData <- value'
    val mutable commonSeps : CommonSeps.commonSeps = (Obj.magic 0)
    method commonSeps = commonSeps
    method set_commonSeps value' = commonSeps <- value'
    val mutable httpUserAgent : string = ""
    method httpUserAgent = httpUserAgent
    method set_httpUserAgent value' = httpUserAgent <- value'
    val mutable remoteAddress : string = ""
    method remoteAddress = remoteAddress
    method set_remoteAddress value' = remoteAddress <- value'
    val mutable remoteHost : string = ""
    method remoteHost = remoteHost
    method set_remoteHost value' = remoteHost <- value'
    val mutable remoteHostByAddr : string = ""
    method remoteHostByAddr = remoteHostByAddr
    method set_remoteHostByAddr value' = remoteHostByAddr <- value'
    val mutable remotePort : string = ""
    method remotePort = remotePort
    method set_remotePort value' = remotePort <- value'
    val mutable requestedFilePath : string = ""
    method requestedFilePath = requestedFilePath
    method set_requestedFilePath value' = requestedFilePath <- value'
    
    
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put (abeHttpRequestInfoData#hTTP_USER_AGENT, httpUserAgent));
        ignore (!hashMap#put (abeHttpRequestInfoData#rEMOTE_ADDRESS, remoteAddress));
        ignore (!hashMap#put (abeHttpRequestInfoData#rEMOTE_HOST, remoteHost));
        ignore (!hashMap#put (abeHttpRequestInfoData#rEMOTE_HOST_BY_ADDRESS, remoteHostByAddr));
        ignore (!hashMap#put (abeHttpRequestInfoData#rEMOTE_PORT, remotePort));
        ignore (!hashMap#put (abeHttpRequestInfoData#rEQUEST_FILE_PATH, requestedFilePath));
        (!hashMap :> java_hash_map)
        end
    

    method toVector () : BasicArrayList.basicArrayList =
        begin
        let vector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!vector#add (httpUserAgent));
        ignore (!vector#add (remoteAddress));
        ignore (!vector#add (remoteHost));
        ignore (!vector#add (remoteHostByAddr));
        ignore (!vector#add (remotePort));
        ignore (!vector#add (requestedFilePath));
        (!vector :> BasicArrayList.basicArrayList)
        end
    

    method toString () : string =
        begin
        (java_string_of (Obj.repr ((((((((((((((((((((((((((new StringMaker.stringMaker ())#append (nAME))#append (commonSeps#cOLON_SEP))#append (abeHttpRequestInfoData#hTTP_USER_AGENT))#append (commonSeps#cOLON_SEP))#append (httpUserAgent))#append (commonSeps#sPACE))#append (abeHttpRequestInfoData#rEMOTE_ADDRESS))#append (commonSeps#cOLON_SEP))#append (remoteAddress))#append (commonSeps#sPACE))#append (abeHttpRequestInfoData#rEMOTE_HOST))#append (commonSeps#cOLON_SEP))#append (remoteHost))#append (commonSeps#sPACE))#append (abeHttpRequestInfoData#rEMOTE_HOST_BY_ADDRESS))#append (commonSeps#cOLON_SEP))#append (remoteHostByAddr))#append (commonSeps#sPACE))#append (abeHttpRequestInfoData#rEMOTE_PORT))#append (commonSeps#cOLON_SEP))#append (remotePort))#append (commonSeps#sPACE))#append (abeHttpRequestInfoData#rEQUEST_FILE_PATH))#append (commonSeps#cOLON_SEP))#append (requestedFilePath))))
        end

    initializer
      begin
        nAME <- "AbeHttpRequestInfo";
        abeHttpRequestInfoData <- ((AbeHttpRequestInfoData.getInstance ()) :> AbeHttpRequestInfoData.abeHttpRequestInfoData);
        commonSeps <- ((CommonSeps.getInstance ()) :> CommonSeps.commonSeps);
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        httpUserAgent <- (!stringUtil#getNonNull ((Obj.magic (hashMap#get (abeHttpRequestInfoData#hTTP_USER_AGENT)))));
        remoteAddress <- (!stringUtil#getNonNull ((Obj.magic (hashMap#get (abeHttpRequestInfoData#rEMOTE_ADDRESS)))));
        remoteHost <- (!stringUtil#getNonNull ((Obj.magic (hashMap#get (abeHttpRequestInfoData#rEMOTE_HOST)))));
        remoteHostByAddr <- (!stringUtil#getNonNull ((Obj.magic (hashMap#get (abeHttpRequestInfoData#rEMOTE_HOST_BY_ADDRESS)))));
        remotePort <- (!stringUtil#getNonNull ((Obj.magic (hashMap#get (abeHttpRequestInfoData#rEMOTE_PORT)))));
        requestedFilePath <- (!stringUtil#getNonNull ((Obj.magic (hashMap#get (abeHttpRequestInfoData#rEQUEST_FILE_PATH)))))
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "AbeHttpRequestInfo" (fun arguments -> Obj.repr (new abeHttpRequestInfo (Obj.obj arguments)))


