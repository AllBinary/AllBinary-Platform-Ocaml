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
(* import java.util.HashMap *)
(* import javax.mail.internet.MimeMessage *)
(* import org.allbinary.logic.communication.smtp.info.BasicEmailInfo *)
(* import org.allbinary.logic.communication.smtp.info.EmailInfo *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class basicEmail ((emailInfo : EmailInfo.emailInfo), (to_ : string)) =
  object
    val mutable email : AbEmail.abEmail = (Obj.magic 0)
    method email = email
    method set_email value' = email <- value'
    
    

    method getEmail () : Email.email =
        begin
        ((Obj.magic (email#getEmail ())) :> Email.email)
        end
    

    method getMimeMessage : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((email#getMimeMessage ())))
        end
    

    method getDebugInfo () : string =
        begin
        (email#getDebugInfo ())
        end
    

    method log () : string =
        begin
        (email#log ())
        end
    

    method toHashMap () : java_hash_map =
        begin
        ((email#toHashMap ()) :> java_hash_map)
        end
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        (Obj.magic ((email#toXmlNode ((Obj.magic document)))))
        end [@@warning "-20"]
    

    method toXmlDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((email#toXmlDoc ())))
        end

    initializer
      begin
        ();
        ();
        let basicEmailInfo : BasicEmailInfo.basicEmailInfo ref = ref (((emailInfo#getBasicEmailInfo ()) :> BasicEmailInfo.basicEmailInfo)) in ();
        email <- (new AbEmail.abEmail (((!basicEmailInfo#getEmailServerConfigurationInterface ())#getSmtpServer ()), ((!basicEmailInfo#getEmailServerConfigurationInterface ())#getAccountName ()), to_, (!basicEmailInfo#getSubject ()), (!basicEmailInfo#getTextBody ()), (emailInfo#getHtmlAttachment ()), (emailInfo#getContentBase ())))
      end
  end
let () = java_register_constructor "BasicEmail" (fun arguments -> Obj.repr (new basicEmail (Obj.obj arguments)))


