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
(* package admin.tags *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.lang.reflect.Method *)
(* import java.util.HashMap *)
(* import javax.servlet.jsp.JspTagException *)
(* import admin.taghelpers.BasicTextEmailHelperFactory *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import tags.CustomTagSupport *)

class basicTextEmailTag () =
  object (self)
    inherit CustomTagSupport.customTagSupport ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable subject : string = ""
    method subject = subject
    method set_subject value' = subject <- value'
    val mutable body : string = ""
    method body = body
    method set_body value' = body <- value'
    
    

    method setSubject ((value : string)) : unit =
        begin
        subject <- value
        end [@@warning "-7"]
    

    method setBody ((value : string)) : unit =
        begin
        body <- value
        end [@@warning "-7"]
    

    method send () : string =
        begin
        (try
            let propertiesHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            ignore (!propertiesHashMap#put ("Subject", subject));
            ignore (!propertiesHashMap#put ("Body", body));
            let anyType : Obj.t ref = ref ((Obj.repr ((new BasicTextEmailHelperFactory.basicTextEmailHelperFactory ())#getInstance (!propertiesHashMap, pageContext)))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr ((java_get_class (Obj.repr !anyType))#getMethod ("send", (Obj.magic 0))))) in ();
            ignore ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0)));
            "Email Sent"
        with e -> begin
            let error : string ref = ref ("Failed to Send Email.") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "send()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method doStartTag () : int =
        begin
        (try
            ignore ((pageContext#getOut ())#print ((self#send ())));
            sKIP_BODY
        with e -> begin
            ignore (AbResponseHandler.sendJspTagRedirect (pageContext, e));
            sKIP_BODY
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        subject <- "";
        body <- "";
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicTextEmailTag" (fun arguments -> Obj.repr (new basicTextEmailTag (Obj.obj arguments)))


