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
(* import java.io.DataInputStream *)
(* import java.io.InputStream *)
(* import java.io.OutputStream *)
(* import org.allbinary.logic.io.AbDataOutputStream *)
(* import org.allbinary.logic.io.FileStreamFactory *)
(* import org.allbinary.logic.io.StreamUtil *)
(* import org.allbinary.logic.io.file.FileFactory *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)

class registrationConfiguration () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable registrationCode : string = ""
    method registrationCode = registrationCode
    method set_registrationCode value' = registrationCode <- value'
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable fILE : string = ""
    method fILE = fILE
    method set_fILE value' = fILE <- value'
    
    

    method read () : unit =
        begin
        let fileInputStreamFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "FileStreamFactory.getInstance" (Obj.repr ()))))) in ();
        let fileInputStream : Obj.t ref = ref ((Obj.repr ((Obj.magic !fileInputStreamFactory)#getFileInputStreamInstance ((StringUtil.getInstance ())#eMPTY_STRING, fILE)))) in ();
        let dataInputStream : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "DataInputStream" (Obj.repr ((Obj.magic !fileInputStream))))))) in ();
        (self#setRegistrationCode (((Obj.magic !dataInputStream)#readUTF ())));
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Read Configuration: "))#append ((java_string_of (Obj.repr self)))))), self, "read"))))
        end
    

    method write () : unit =
        begin
        let dataOutputStream : AbDataOutputStream.abDataOutputStream ref = ref (((Obj.magic 0) :> AbDataOutputStream.abDataOutputStream)) in ();
        Fun.protect ~finally:(fun () -> 
            ignore ((StreamUtil.getInstance ())#close (!dataOutputStream))
        ) (fun () -> (try
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Write Configuration: "))#append ((java_string_of (Obj.repr self)))))), self, "write"));
            let fileInputStreamFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "FileStreamFactory.getInstance" (Obj.repr ()))))) in ();
            let fileOutputStream : Obj.t ref = ref ((Obj.repr ((Obj.magic !fileInputStreamFactory)#getFileOutputStreamInstance ((StringUtil.getInstance ())#eMPTY_STRING, fILE)))) in ();
            dataOutputStream := (new AbDataOutputStream.abDataOutputStream ((Obj.magic !fileOutputStream)));
            ignore (!dataOutputStream#writeUTF ((self#getRegistrationCode ())));
            ignore (!dataOutputStream#flush ())
        with exception_value -> raise exception_value))
        end
    

    method toString () : string =
        begin
        (java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Registration Code: "))#append ((self#getRegistrationCode ())))))
        end
    

    method setRegistrationCode ((registrationCode_arg : string)) : unit =
        begin
        registrationCode <- registrationCode_arg
        end
    

    method getRegistrationCode () : string =
        begin
        registrationCode
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        registrationCode <- "No Registration Code";
        nAME <- "registrationid";
        fILE <- "Registration.dat";
        ();
        (try
            if ((Obj.magic (java_call_static "FileFactory.getInstance" (Obj.repr ())))#isFile (fILE)) then begin
                (self#read ())
            end else begin
                (self#write ())
            end
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#cONSTRUCTOR, e))
        end)
      end
  end [@@warning "-20"]
let () = java_register_constructor "RegistrationConfiguration" (fun arguments -> Obj.repr (new registrationConfiguration (Obj.obj arguments)))

let sINGLETON = (new registrationConfiguration ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "RegistrationConfiguration.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "RegistrationConfiguration.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


