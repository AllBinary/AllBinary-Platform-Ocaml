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
(* import java.io.File *)
(* import java.io.FileReader *)
(* import java.io.LineNumberReader *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.business.init.LicenseInitInfo *)
(* import org.allbinary.business.init.LicenseInitInfoUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.security.licensing.client.XmlRpcAbeLicenseRetrievalClient *)
(* import org.allbinary.globals.PATH_GLOBALS *)
(* import org.allbinary.util.BasicArrayList *)

class licenseClientAndServerTest ((options : string array)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable vector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method vector = vector
    method set_vector value' = vector <- value'
    
    

    method test () : unit =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        (try
            let list : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            let tESTING : string ref = ref ("Testing with new licence:<br/>") in ();
            let pROCESSING : string ref = ref ("Processing: <br/>") in ();
            let eND : string ref = ref ("<br/>End<br/>") in ();
            let rESULT : string ref = ref ("Test Result: ") in ();
            let size : int ref = ref ((vector#size ())) in ();
            for index = 0 to !size - 1 do
                ignore (!stringBuffer#append (!tESTING));
                let serverName : string ref = ref ((Obj.magic (vector#get (index)))) in ();
                (try
                    let licenseInitInfo : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "LicenseInitInfo" (Obj.repr ()))))) in ();
                    ignore ((Obj.magic !licenseInitInfo)#addServer (!serverName));
                    ignore ((Obj.magic (java_call_static "LicenseInitInfoUtil.getInstance" (Obj.repr ())))#write ((Obj.magic !licenseInitInfo)));
                    let abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface ref = ref (((AbeClientInformationInterfaceFactory.getInstance ()) :> AbeClientInformationInterface.abeClientInformationInterface)) in ();
                    let xmlRpcAbeLicenseClient : XmlRpcAbeLicenseRetrievalClient.xmlRpcAbeLicenseRetrievalClient ref = ref (((new XmlRpcAbeLicenseRetrievalClient.xmlRpcAbeLicenseRetrievalClient (!abeClientInformation)) :> XmlRpcAbeLicenseRetrievalClient.xmlRpcAbeLicenseRetrievalClient)) in ();
                    let abeLicenseInterface : AbeLicenseInterface.abeLicenseInterface ref = ref (((Obj.magic (!xmlRpcAbeLicenseClient#get ((Obj.magic 0)))) :> AbeLicenseInterface.abeLicenseInterface)) in ();
                    if (!abeLicenseInterface != (Obj.magic 0)) then begin
                        ignore (!stringBuffer#append (!pROCESSING));
                        ignore (!stringBuffer#append ((java_string_of (Obj.repr !abeLicenseInterface))))
                    end;
                    ignore (!stringBuffer#append (!eND));
                    ignore ((Obj.magic logUtil)#putF ((!rESULT ^ (java_string_of (Obj.repr !stringBuffer))), self, "test"));
                    ignore (!stringBuffer#delete (0, (!stringBuffer#length ())))
                with e -> begin
                    ignore (!list#add (!serverName));
                    ignore ((Obj.magic logUtil)#put (("Test Error: " ^ (java_string_of (Obj.repr !stringBuffer))), self, "test", e))
                end)
            done;
            ignore ((Obj.magic logUtil)#putF (((("Total Servers Failed: " ^ java_string_of (Obj.repr ((!list#size ())))) ^ " Failed Servers: ") ^ (java_string_of (Obj.repr !list))), self, "test"))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (("Test Error: " ^ (java_string_of (Obj.repr !stringBuffer))), self, "test", e))
        end)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        vector <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ignore ((Obj.magic (java_call_static "LicenseInitInfoUtil.getInstance" (Obj.repr ())))#setFilePath (((PrintLicenseInitInfo.get_pATH ()) + (PATH_GLOBALS.getInstance ())#iNIT_PATH)));
        for index = 1 to (Array.length options) - 1 do
            ignore (vector#add (options.(index)))
        done;
        if ((Array.length options) < 2) then begin
            let file : Obj.t ref = ref ((Obj.repr (new File.file ((java_string_of (Obj.repr ((PrintLicenseInitInfo.get_pATH ()))) ^ "testlicenseservers.txt"))))) in ();
            let reader : Obj.t ref = ref ((Obj.repr (new FileReader.fileReader ((Obj.magic !file))))) in ();
            let lineNumberReader : Obj.t ref = ref ((Obj.repr (new LineNumberReader.lineNumberReader ((Obj.magic !reader))))) in ();
            while true do
                let line : string ref = ref (((Obj.magic !lineNumberReader)#readLine ())) in ();
                if (!line <> (Obj.magic 0)) then begin
                    ignore (vector#add (!line))
                end else begin
                    raise Java_break
                end
            done
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "LicenseClientAndServerTest" (fun arguments -> Obj.repr (new licenseClientAndServerTest (Obj.obj arguments)))

let main ((args : string array)) : unit =
        begin
        (try
            let licensingTest : Obj.t ref = ref ((Obj.repr (new licenseClientAndServerTest (args)))) in ();
            ignore ((Obj.magic !licensingTest)#test ())
        with e -> begin
            let logUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, "main()", "main()", e))
        end)
        end
let () = java_register_static "LicenseClientAndServerTest.main" (fun arguments -> Obj.repr (main (Obj.obj arguments)))


