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
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class abEmail ((server : string), (from : string), (to_ : string), (subject : string), (textBody : string), (htmlAttachment : string), (contentBase : string)) =
  object
    val mutable email : Email.email = (Obj.magic 0)
    method email = email
    method set_email value' = email <- value'
    
    

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
    

    method getEmail () : Email.email =
        begin
        ((Obj.magic email) :> Email.email)
        end
    

    method toXmlDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((email#toXmlDoc ())))
        end

    initializer
      begin
        email <- ((Obj.magic 0) :> Email.email);
        ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGINGERROR)) then begin
            email <- (new Email.email (from, to_, subject, server, textBody, htmlAttachment, contentBase, true))
        end else begin
            email <- (new Email.email (from, to_, subject, server, textBody, htmlAttachment, contentBase))
        end
      end
  end
let () = java_register_constructor "AbEmail" (fun arguments -> Obj.repr (new abEmail (Obj.obj arguments)))


