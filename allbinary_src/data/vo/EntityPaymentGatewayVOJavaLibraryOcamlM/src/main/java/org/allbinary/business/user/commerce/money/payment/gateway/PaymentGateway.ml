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
(* package org.allbinary.business.user.commerce.money.payment.gateway *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.user.UserData *)
(* import org.allbinary.business.user.commerce.money.payment.PaymentData *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.control.crypt.SuperCrypt *)
(* import org.allbinary.logic.string.StringUtil *)

class paymentGateway ((hashMap : java_hash_map)) =
  object (self)
    val mutable storeName : string = ""
    method storeName = storeName
    method set_storeName value' = storeName <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable enable : string = ""
    method enable = enable
    method set_enable value' = enable <- value'
    val mutable paymentMethod : string = ""
    method paymentMethod = paymentMethod
    method set_paymentMethod value' = paymentMethod <- value'
    val mutable mode : string = ""
    method mode = mode
    method set_mode value' = mode <- value'
    val mutable testProtocol : string = ""
    method testProtocol = testProtocol
    method set_testProtocol value' = testProtocol <- value'
    val mutable testServer : string = ""
    method testServer = testServer
    method set_testServer value' = testServer <- value'
    val mutable testPort : string = ""
    method testPort = testPort
    method set_testPort value' = testPort <- value'
    val mutable testPath : string = ""
    method testPath = testPath
    method set_testPath value' = testPath <- value'
    val mutable serverProtocol : string = ""
    method serverProtocol = serverProtocol
    method set_serverProtocol value' = serverProtocol <- value'
    val mutable server : string = ""
    method server = server
    method set_server value' = server <- value'
    val mutable serverPort : string = ""
    method serverPort = serverPort
    method set_serverPort value' = serverPort <- value'
    val mutable serverPath : string = ""
    method serverPath = serverPath
    method set_serverPath value' = serverPath <- value'
    val mutable timeout : string = ""
    method timeout = timeout
    method set_timeout value' = timeout <- value'
    val mutable userName : string = ""
    method userName = userName
    method set_userName value' = userName <- value'
    val mutable password : string = ""
    method password = password
    method set_password value' = password <- value'
    val mutable proxyProtocol : string = ""
    method proxyProtocol = proxyProtocol
    method set_proxyProtocol value' = proxyProtocol <- value'
    val mutable proxyServer : string = ""
    method proxyServer = proxyServer
    method set_proxyServer value' = proxyServer <- value'
    val mutable proxyPort : string = ""
    method proxyPort = proxyPort
    method set_proxyPort value' = proxyPort <- value'
    val mutable proxyPath : string = ""
    method proxyPath = proxyPath
    method set_proxyPath value' = proxyPath <- value'
    val mutable proxyUserName : string = ""
    method proxyUserName = proxyUserName
    method set_proxyUserName value' = proxyUserName <- value'
    val mutable proxyPassword : string = ""
    method proxyPassword = proxyPassword
    method set_proxyPassword value' = proxyPassword <- value'
    val mutable proxyTimeout : string = ""
    method proxyTimeout = proxyTimeout
    method set_proxyTimeout value' = proxyTimeout <- value'
    val mutable special1 : string = ""
    method special1 = special1
    method set_special1 value' = special1 <- value'
    val mutable special2 : string = ""
    method special2 = special2
    method set_special2 value' = special2 <- value'
    val mutable special3 : string = ""
    method special3 = special3
    method set_special3 value' = special3 <- value'
    val mutable special4 : string = ""
    method special4 = special4
    method set_special4 value' = special4 <- value'
    val mutable special5 : string = ""
    method special5 = special5
    method set_special5 value' = special5 <- value'
    val mutable special6 : string = ""
    method special6 = special6
    method set_special6 value' = special6 <- value'
    val mutable special7 : string = ""
    method special7 = special7
    method set_special7 value' = special7 <- value'
    val mutable special8 : string = ""
    method special8 = special8
    method set_special8 value' = special8 <- value'
    val mutable special9 : string = ""
    method special9 = special9
    method set_special9 value' = special9 <- value'
    val mutable lastModified : string = ""
    method lastModified = lastModified
    method set_lastModified value' = lastModified <- value'
    val mutable timeEntered : string = ""
    method timeEntered = timeEntered
    method set_timeEntered value' = timeEntered <- value'
    
    

    method getFormData ((hashMap : java_hash_map)) : unit =
        begin
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        let empty : string ref = ref (!stringUtil#eMPTY_STRING) in ();
        storeName <- (Obj.magic (hashMap#get ((java_string_of (Obj.repr (StoreFrontData.getInstance ())#nAME)))));
        name <- (Obj.magic (hashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_nAME ()))))));
        enable <- (!stringUtil#getNonNull ((Obj.magic (hashMap#get ((java_string_of (Obj.repr (EntryData.getInstance ())#eNABLE)))))));
        paymentMethod <- (!stringUtil#getNonNull ((Obj.magic (hashMap#get ((java_string_of (Obj.repr (PaymentData.get_mETHOD ()))))))));
        mode <- (!stringUtil#getNonNull ((Obj.magic (hashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_mODE ()))))))));
        testProtocol <- (!stringUtil#getNonNull ((Obj.magic (hashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_tESTPROTOCOL ()))))))));
        testServer <- (!stringUtil#getNonNull ((Obj.magic (hashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_tESTSERVER ()))))))));
        testPort <- (!stringUtil#getNonNull ((Obj.magic (hashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_tESTPORT ()))))))));
        testPath <- (Obj.magic (hashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_tESTPATH ()))))));
        if (testPath = (Obj.magic 0)) then begin
            testPath <- !empty
        end;
        serverProtocol <- (Obj.magic (hashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_sERVERPROTOCOL ()))))));
        if (serverProtocol = (Obj.magic 0)) then begin
            serverProtocol <- !empty
        end;
        server <- (Obj.magic (hashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_sERVER ()))))));
        if (server = (Obj.magic 0)) then begin
            server <- !empty
        end;
        serverPort <- (Obj.magic (hashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_sERVERPORT ()))))));
        if (serverPort = (Obj.magic 0)) then begin
            serverPort <- !empty
        end;
        serverPath <- (Obj.magic (hashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_sERVERPATH ()))))));
        if (serverPath = (Obj.magic 0)) then begin
            serverPath <- !empty
        end;
        userName <- (Obj.magic (hashMap#get ((java_string_of (Obj.repr (UserData.get_uSERNAME ()))))));
        if (userName = (Obj.magic 0)) then begin
            userName <- !empty
        end;
        password <- (Obj.magic (hashMap#get ((java_string_of (Obj.repr (UserData.get_pASSWORD ()))))));
        if (password = (Obj.magic 0)) then begin
            password <- !empty
        end;
        timeout <- (Obj.magic (hashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_tIMEOUT ()))))));
        if (timeout = (Obj.magic 0)) then begin
            timeout <- !empty
        end;
        proxyProtocol <- (Obj.magic (hashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_pROXYPROTOCOL ()))))));
        if (proxyProtocol = (Obj.magic 0)) then begin
            proxyProtocol <- !empty
        end;
        proxyServer <- (Obj.magic (hashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_pROXYSERVER ()))))));
        if (proxyServer = (Obj.magic 0)) then begin
            proxyServer <- !empty
        end;
        proxyPort <- (Obj.magic (hashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_pROXYPORT ()))))));
        if (proxyPort = (Obj.magic 0)) then begin
            proxyPort <- !empty
        end;
        proxyPath <- (Obj.magic (hashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_pROXYPATH ()))))));
        if (proxyPath = (Obj.magic 0)) then begin
            proxyPath <- !empty
        end;
        proxyUserName <- (Obj.magic (hashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_pROXYUSERNAME ()))))));
        if (proxyUserName = (Obj.magic 0)) then begin
            proxyUserName <- !empty
        end;
        proxyPassword <- (Obj.magic (hashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_pROXYPASSWORD ()))))));
        if (proxyPassword = (Obj.magic 0)) then begin
            proxyPassword <- !empty
        end;
        proxyTimeout <- (Obj.magic (hashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_pROXYTIMEOUT ()))))));
        if (proxyTimeout = (Obj.magic 0)) then begin
            proxyTimeout <- !empty
        end;
        special1 <- (Obj.magic (hashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL1 ()))))));
        if (special1 = (Obj.magic 0)) then begin
            special1 <- !empty
        end;
        special2 <- (Obj.magic (hashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL2 ()))))));
        if (special2 = (Obj.magic 0)) then begin
            special2 <- !empty
        end;
        special3 <- (Obj.magic (hashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL3 ()))))));
        if (special3 = (Obj.magic 0)) then begin
            special3 <- !empty
        end;
        special4 <- (Obj.magic (hashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL4 ()))))));
        if (special4 = (Obj.magic 0)) then begin
            special4 <- !empty
        end;
        special5 <- (Obj.magic (hashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL5 ()))))));
        if (special5 = (Obj.magic 0)) then begin
            special5 <- !empty
        end;
        special6 <- (Obj.magic (hashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL6 ()))))));
        if (special6 = (Obj.magic 0)) then begin
            special6 <- !empty
        end;
        special7 <- (Obj.magic (hashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL7 ()))))));
        if (special7 = (Obj.magic 0)) then begin
            special7 <- !empty
        end;
        special8 <- (Obj.magic (hashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL8 ()))))));
        if (special8 = (Obj.magic 0)) then begin
            special8 <- !empty
        end;
        special9 <- (Obj.magic (hashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL9 ()))))));
        if (special9 = (Obj.magic 0)) then begin
            special9 <- !empty
        end;
        lastModified <- (Obj.magic (hashMap#get ((java_string_of (Obj.repr (EntryData.getInstance ())#lASTMODIFIED)))));
        if (lastModified = (Obj.magic 0)) then begin
            lastModified <- !empty
        end;
        timeEntered <- (Obj.magic (hashMap#get ((java_string_of (Obj.repr (EntryData.getInstance ())#tIMECREATED)))));
        if (timeEntered = (Obj.magic 0)) then begin
            timeEntered <- !empty
        end
        end
    

    method getStoreName () : string =
        begin
        storeName
        end
    

    method getName () : string =
        begin
        name
        end
    

    method getEnable () : string =
        begin
        enable
        end
    

    method getPaymentMethod () : string =
        begin
        paymentMethod
        end
    

    method getMode () : string =
        begin
        mode
        end
    

    method getTestProtocol () : string =
        begin
        testProtocol
        end
    

    method getTestServer () : string =
        begin
        testServer
        end
    

    method getTestPort () : string =
        begin
        testPort
        end
    

    method getTestPath () : string =
        begin
        testPath
        end
    

    method getServerProtocol () : string =
        begin
        serverProtocol
        end
    

    method getServer () : string =
        begin
        server
        end
    

    method getServerPort () : string =
        begin
        serverPort
        end
    

    method getServerPath () : string =
        begin
        serverPath
        end
    

    method getUserName () : string =
        begin
        userName
        end
    

    method getPassword () : string =
        begin
        password
        end
    

    method getProxyProtocol () : string =
        begin
        proxyProtocol
        end
    

    method getProxyServer () : string =
        begin
        proxyServer
        end
    

    method getProxyPath () : string =
        begin
        proxyPath
        end
    

    method getProxyPort () : string =
        begin
        proxyPort
        end
    

    method getProxyUserName () : string =
        begin
        proxyUserName
        end
    

    method getProxyPassword () : string =
        begin
        proxyPassword
        end
    

    method getTimeout () : string =
        begin
        timeout
        end
    

    method getProxyTimeout () : string =
        begin
        proxyTimeout
        end
    

    method getSpecial1 () : string =
        begin
        special1
        end
    

    method getSpecial2 () : string =
        begin
        special2
        end
    

    method getSpecial3 () : string =
        begin
        special3
        end
    

    method getSpecial4 () : string =
        begin
        special4
        end
    

    method getSpecial5 () : string =
        begin
        special5
        end
    

    method getSpecial6 () : string =
        begin
        special6
        end
    

    method getSpecial7 () : string =
        begin
        special7
        end
    

    method getSpecial8 () : string =
        begin
        special8
        end
    

    method getSpecial9 () : string =
        begin
        special9
        end
    

    method getLastModified () : string =
        begin
        lastModified
        end
    

    method getTimeEntered () : string =
        begin
        timeEntered
        end
    

    method setEnable ((value : string)) : unit =
        begin
        enable <- value
        end
    

    method setStoreName ((value : string)) : unit =
        begin
        storeName <- value
        end
    

    method setName ((value : string)) : unit =
        begin
        name <- value
        end
    

    method setPaymentMethod ((value : string)) : unit =
        begin
        paymentMethod <- value
        end
    

    method setMode ((value : string)) : unit =
        begin
        mode <- value
        end
    

    method setTestProtocol ((value : string)) : unit =
        begin
        testProtocol <- value
        end
    

    method setTestServer ((value : string)) : unit =
        begin
        testServer <- value
        end
    

    method setTestPort ((value : string)) : unit =
        begin
        testPort <- value
        end
    

    method setTestPath ((value : string)) : unit =
        begin
        testPath <- value
        end
    

    method setServerProtocol ((value : string)) : unit =
        begin
        serverProtocol <- value
        end
    

    method setServer ((value : string)) : unit =
        begin
        server <- value
        end
    

    method setServerPort ((value : string)) : unit =
        begin
        serverPort <- value
        end
    

    method setServerPath ((value : string)) : unit =
        begin
        serverPath <- value
        end
    

    method setTimeout ((value : string)) : unit =
        begin
        timeout <- value
        end
    

    method setUserName ((value : string)) : unit =
        begin
        userName <- value
        end
    

    method setPassword ((value : string)) : unit =
        begin
        password <- value
        end
    

    method setProxyProtocol ((value : string)) : unit =
        begin
        proxyProtocol <- value
        end
    

    method setProxyServer ((value : string)) : unit =
        begin
        proxyServer <- value
        end
    

    method setProxyPort ((value : string)) : unit =
        begin
        proxyPort <- value
        end
    

    method setProxyPath ((value : string)) : unit =
        begin
        proxyPath <- value
        end
    

    method setProxyUserName ((value : string)) : unit =
        begin
        proxyUserName <- value
        end
    

    method setProxyPassword ((value : string)) : unit =
        begin
        proxyPassword <- value
        end
    

    method setProxyTimeout ((value : string)) : unit =
        begin
        proxyTimeout <- value
        end
    

    method setSpecial1 ((value : string)) : unit =
        begin
        special1 <- value
        end
    

    method setSpecial2 ((value : string)) : unit =
        begin
        special2 <- value
        end
    

    method setSpecial3 ((value : string)) : unit =
        begin
        special3 <- value
        end
    

    method setSpecial4 ((value : string)) : unit =
        begin
        special4 <- value
        end
    

    method setSpecial5 ((value : string)) : unit =
        begin
        special5 <- value
        end
    

    method setSpecial6 ((value : string)) : unit =
        begin
        special6 <- value
        end
    

    method setSpecial7 ((value : string)) : unit =
        begin
        special7 <- value
        end
    

    method setSpecial8 ((value : string)) : unit =
        begin
        special8 <- value
        end
    

    method setSpecial9 ((value : string)) : unit =
        begin
        special9 <- value
        end
    

    method setLastModified ((value : string)) : unit =
        begin
        lastModified <- value
        end
    

    method setTimeEntered ((value : string)) : unit =
        begin
        timeEntered <- value
        end
    

    method toHashMap () : java_hash_map =
        begin
        ((self#toHashMap (true)) :> java_hash_map)
        end
    

    (* Java overload toHashMap(BOOLEAN) is not converted: OCaml has one method per name *)
    

    method toVector () : BasicArrayList.basicArrayList =
        begin
        ((self#toVector (true)) :> BasicArrayList.basicArrayList)
        end
    

    (* Java overload toVector(BOOLEAN) is not converted: OCaml has one method per name *)
    

    method getKey () : Obj.t =
        begin
        (Obj.repr ((Obj.magic (Obj.obj (java_new "PaymentGatewayPrimaryKey" (Obj.repr ((self#getStoreName ()), (self#getName ()))))))))
        end

    initializer
      begin
        storeName <- "";
        name <- "";
        enable <- "";
        paymentMethod <- "";
        mode <- "";
        testProtocol <- "";
        testServer <- "";
        testPort <- "";
        testPath <- "";
        serverProtocol <- "";
        server <- "";
        serverPort <- "";
        serverPath <- "";
        timeout <- "";
        userName <- "";
        password <- "";
        proxyProtocol <- "";
        proxyServer <- "";
        proxyPort <- "";
        proxyPath <- "";
        proxyUserName <- "";
        proxyPassword <- "";
        proxyTimeout <- "";
        special1 <- "";
        special2 <- "";
        special3 <- "";
        special4 <- "";
        special5 <- "";
        special6 <- "";
        special7 <- "";
        special8 <- "";
        special9 <- "";
        lastModified <- "";
        timeEntered <- "";
        ();
        (self#getFormData (hashMap))
      end
  end
let () = java_register_constructor "PaymentGateway" (fun arguments -> Obj.repr (new paymentGateway (Obj.obj arguments)))


