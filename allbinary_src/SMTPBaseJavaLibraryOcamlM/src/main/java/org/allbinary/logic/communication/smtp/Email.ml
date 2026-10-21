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
(* package org.allbinary.logic.communication.smtp *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.ByteArrayOutputStream *)
(* import java.io.PrintStream *)
(* import java.util.HashMap *)
(* import java.util.Properties *)
(* import javax.mail.Address *)
(* import javax.mail.Authenticator *)
(* import javax.mail.Message *)
(* import javax.mail.MessagingException *)
(* import javax.mail.Session *)
(* import javax.mail.internet.InternetAddress *)
(* import javax.mail.internet.InternetHeaders *)
(* import javax.mail.internet.MimeBodyPart *)
(* import javax.mail.internet.MimeMessage *)
(* import javax.mail.internet.MimeMultipart *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

let dEBUG : string = "mail.debug"
let get_dEBUG () = dEBUG
let () = java_register_static "Email.get_dEBUG" (fun _ -> Obj.repr (get_dEBUG ()))
let sMTP_HOST : string = "mail.smtp.host"
let get_sMTP_HOST () = sMTP_HOST
let () = java_register_static "Email.get_sMTP_HOST" (fun _ -> Obj.repr (get_sMTP_HOST ()))
let sMTP_PORT : string = "mail.smtp.port"
let get_sMTP_PORT () = sMTP_PORT
let () = java_register_static "Email.get_sMTP_PORT" (fun _ -> Obj.repr (get_sMTP_PORT ()))
let sMTP_USER : string = "mail.smtp.user"
let get_sMTP_USER () = sMTP_USER
let () = java_register_static "Email.get_sMTP_USER" (fun _ -> Obj.repr (get_sMTP_USER ()))
let sMTP_RETURN_ADDRESS : string = "mail.from"
let get_sMTP_RETURN_ADDRESS () = sMTP_RETURN_ADDRESS
let () = java_register_static "Email.get_sMTP_RETURN_ADDRESS" (fun _ -> Obj.repr (get_sMTP_RETURN_ADDRESS ()))
let sMTP_LOCAL_HOST : string = "mail.smtp.localhost"
let get_sMTP_LOCAL_HOST () = sMTP_LOCAL_HOST
let () = java_register_static "Email.get_sMTP_LOCAL_HOST" (fun _ -> Obj.repr (get_sMTP_LOCAL_HOST ()))
class email ((from : string), (to_ : string), (subject : string), (server : string), (textBody : string), (htmlAttachment : string), (contentBase : string)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable msg : Obj.t = Obj.repr 0
    method msg : 'r. 'r = Obj.magic msg
    method set_msg : 'v. 'v -> unit = fun value' -> msg <- Obj.repr value'
    val mutable properties : Obj.t = Obj.repr 0
    method properties : 'r. 'r = Obj.magic properties
    method set_properties : 'v. 'v -> unit = fun value' -> properties <- Obj.repr value'
    val mutable bs : java_byte_array_output_stream = (Obj.magic 0)
    method bs = bs
    method set_bs value' = bs <- value'
    val mutable isDebug : bool = false
    method isDebug = isDebug
    method set_isDebug value' = isDebug <- value'
    
    
    

    method init ((from : string), (to_ : string), (subject : string), (server : string), (textBody : string), (htmlAttachment : string), (contentBase : string)) : unit =
        begin
        (try
            let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
            let mimeBodyParts : Obj.t ref = ref ((Obj.repr (Array.make ((if (not (!stringValidationUtil#isEmpty (htmlAttachment))) then 2 else 1)) (Obj.magic 0)))) in ();
            (Obj.magic !mimeBodyParts).(0) <- (new MimeBodyPart.mimeBodyPart ());
            ignore ((Obj.magic !mimeBodyParts).(0)#setText (textBody));
            if (not (!stringValidationUtil#isEmpty (htmlAttachment))) then begin
                let internetHeaders : Obj.t ref = ref ((Obj.repr (new InternetHeaders.internetHeaders ()))) in ();
                ignore ((Obj.magic !internetHeaders)#addHeader ("Content-Type", "text/html"));
                if (not (!stringValidationUtil#isEmpty (contentBase))) then begin
                    ignore ((Obj.magic !internetHeaders)#addHeader ("Content-Base", contentBase))
                end;
                (Obj.magic !mimeBodyParts).(1) <- (new MimeBodyPart.mimeBodyPart ((Obj.magic !internetHeaders), (java_string_get_bytes htmlAttachment)))
            end;
            (self#init (server, (Obj.magic (Obj.magic 0)), [| (new InternetAddress.internetAddress (from)) |], [| (new InternetAddress.internetAddress (to_)) |], (Obj.magic (Obj.magic 0)), (Obj.magic (Obj.magic 0)), subject, (Obj.magic !mimeBodyParts)))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGINGERROR)) then begin
                let commonStrings_arg : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
                ignore ((Obj.magic logUtil)#put (!commonStrings_arg#eXCEPTION, self, "emailConstructor", e))
            end;
            raise e
        end)
        end
    

    (* Java overload init(String, Authenticator, ArrayType, ArrayType, ArrayType, ArrayType, String, ArrayType) is not converted: OCaml has one method per name *)
    

    method getMimeMessage : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic msg)))
        end
    

    method getDebugInfo () : string =
        try
        begin
        if isDebug then begin
            raise (Java_return (Obj.repr (("More Logging Before This To Standard Out: " ^ java_string_of (Obj.repr ((Obj.obj (java_new "String" (Obj.repr ((java_string_of (Obj.repr bs))))))))))))
        end else begin
            raise (Java_return (Obj.repr ("Debugging Is Off")))
        end
        end
        with Java_return value -> Obj.obj value
    

    method log () : string =
        begin
        ("\nHashMap: " ^ (java_string_of (Obj.repr (self#toHashMap ()))))
        end
    

    method toHashMap () : java_hash_map =
        begin
        (try
            let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            ignore (!hashMap#put ((EmailData.get_sERVER ()), (Obj.magic ((Obj.magic properties)#get (sMTP_HOST)))));
            let addresses : Obj.t ref = ref ((Obj.repr ((Obj.magic msg)#getFrom ()))) in ();
            if ((Obj.magic !addresses) != (Obj.magic 0)) then begin
                for index = 0 to (Array.length (Obj.magic !addresses)) - 1 do
                    ignore (!hashMap#put ((EmailData.get_fROM ()), (java_string_of (Obj.repr (Obj.magic !addresses).(index)))))
                done
            end;
            addresses := Obj.repr (((Obj.magic msg)#getRecipients ((Obj.magic (java_call_static "Message.get_recipientType" (Obj.repr ())))#tO)));
            if ((Obj.magic !addresses) != (Obj.magic 0)) then begin
                for index = 0 to (Array.length (Obj.magic !addresses)) - 1 do
                    ignore (!hashMap#put ((EmailData.get_tO ()), (java_string_of (Obj.repr (Obj.magic !addresses).(index)))))
                done
            end;
            addresses := Obj.repr (((Obj.magic msg)#getRecipients ((Obj.magic (java_call_static "Message.get_recipientType" (Obj.repr ())))#cC)));
            if ((Obj.magic !addresses) != (Obj.magic 0)) then begin
                for index = 0 to (Array.length (Obj.magic !addresses)) - 1 do
                    ignore (!hashMap#put ((EmailData.get_cC ()), (java_string_of (Obj.repr (Obj.magic !addresses).(index)))))
                done
            end;
            addresses := Obj.repr (((Obj.magic msg)#getRecipients ((Obj.magic (java_call_static "Message.get_recipientType" (Obj.repr ())))#bCC)));
            if ((Obj.magic !addresses) != (Obj.magic 0)) then begin
                for index = 0 to (Array.length (Obj.magic !addresses)) - 1 do
                    ignore (!hashMap#put ((EmailData.get_bCC ()), (java_string_of (Obj.repr (Obj.magic !addresses).(index)))))
                done
            end;
            ignore (!hashMap#put ((EmailData.get_sUBJECT ()), ((Obj.magic msg)#getSubject ())));
            let mimeMultipart : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic msg)#getContent ())))) in ();
            if ((Obj.magic !mimeMultipart) != (Obj.magic 0)) then begin
                for index = 0 to ((Obj.magic !mimeMultipart)#getCount ()) - 1 do
                    let content : string ref = ref ((Obj.magic (((Obj.magic !mimeMultipart)#getBodyPart (index))#getContent ()))) in ();
                    ignore (!hashMap#put ((EmailData.get_cONTENT ()), !content))
                done
            end;
            (!hashMap :> java_hash_map)
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "toHashMap()", e))
            end;
            raise e
        end)
        end
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNameValueNodes ((Obj.magic document), (EmailData.get_nAME ()), (self#toHashMap ()))))) in ();
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]
    

    method toXmlDoc : 'return. unit -> 'return = fun () ->
        begin
        raise (Failure ((CommonStrings.getInstance ())#nOT_IMPLEMENTED))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        msg <- (Obj.repr (Obj.magic 0));
        properties <- (Obj.repr (Obj.magic 0));
        bs <- (Obj.magic 0);
        ();
        ();
        isDebug <- false;
        (self#init (from, to_, subject, server, textBody, htmlAttachment, contentBase))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "Email" (fun arguments -> Obj.repr (new email (Obj.obj arguments)))


