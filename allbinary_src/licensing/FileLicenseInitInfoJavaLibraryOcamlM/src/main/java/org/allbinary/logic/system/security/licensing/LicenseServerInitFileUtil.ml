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
(* import java.io.InputStream *)
(* import java.io.OutputStream *)
(* import org.allbinary.business.init.LicenseInitInfoUtil *)
(* import org.allbinary.data.resource.ResourceUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.FileStreamFactory *)
(* import org.allbinary.logic.io.StreamUtil *)
(* import org.allbinary.logic.io.file.FileFactory *)
(* import org.allbinary.logic.io.file.SimpleFileUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)

class licenseServerInitFileUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable nULL_OUTPUT_STREAM : Obj.t = Obj.repr 0
    method nULL_OUTPUT_STREAM : 'r. 'r = Obj.magic nULL_OUTPUT_STREAM
    method set_nULL_OUTPUT_STREAM : 'v. 'v -> unit = fun value' -> nULL_OUTPUT_STREAM <- Obj.repr value'
    

    method init () : unit =
        begin
        (try
            let filePath : string ref = ref ((Obj.magic (java_call_static "LicenseInitInfoUtil.getInstance" (Obj.repr ())))#iNITFILENAME) in ();
            ignore ((Obj.magic (java_call_static "LicenseInitInfoUtil.getInstance" (Obj.repr ())))#setFilePath ((StringUtil.getInstance ())#eMPTY_STRING));
            if ((Obj.magic (java_call_static "FileFactory.getInstance" (Obj.repr ())))#isFile (!filePath)) then begin
                ignore ((Obj.magic logUtil)#putF ("Using Existing License File", self, commonStrings#iNIT))
            end else begin
                (self#write ())
            end
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#iNIT, e))
        end)
        end
    

    method write () : unit =
        begin
        let fileOutputStream : Obj.t ref = ref ((Obj.repr (Obj.magic nULL_OUTPUT_STREAM))) in ();
        Fun.protect ~finally:(fun () -> 
            ignore ((StreamUtil.getInstance ())#close ((Obj.magic !fileOutputStream)))
        ) (fun () -> (try
            let resourceUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "ResourceUtil.getInstance" (Obj.repr ()))))) in ();
            let filePath : string ref = ref ((Obj.magic (java_call_static "LicenseInitInfoUtil.getInstance" (Obj.repr ())))#iNITFILENAME) in ();
            let inputStream : Obj.t ref = ref ((Obj.repr ((Obj.magic !resourceUtil)#getResourceAsStream (!filePath)))) in ();
            ignore ((Obj.magic logUtil)#putF ("Writing Default License File", self, commonStrings#iNIT));
            let fileStreamFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "FileStreamFactory.getInstance" (Obj.repr ()))))) in ();
            fileOutputStream := Obj.repr (((Obj.magic !fileStreamFactory)#getFileOutputStreamInstance ((StringUtil.getInstance ())#eMPTY_STRING, !filePath)));
            let b : int ref = ref (0) in ();
            let index : int ref = ref (0) in ();
            while true do
                b := ((Obj.magic !inputStream)#read ());
                if (!b = (-1)) then begin
                    raise Java_break
                end;
                ignore ((Obj.magic !fileOutputStream)#write (!b));
                index := !index + 1
            done;
            ignore ((Obj.magic logUtil)#putF (("Wrote Bytes: " ^ java_string_of (Obj.repr (!index))), self, commonStrings#iNIT));
            ignore ((Obj.magic !fileOutputStream)#flush ())
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#iNIT, e))
        end))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        nULL_OUTPUT_STREAM <- (Obj.repr (SimpleFileUtil.nullOutputStream ()));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "LicenseServerInitFileUtil" (fun arguments -> Obj.repr (new licenseServerInitFileUtil (Obj.obj arguments)))


