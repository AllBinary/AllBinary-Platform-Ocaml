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
(* package tags *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.lang.reflect.Method *)
(* import javax.servlet.jsp.JspTagException *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)

class xmlValidationTransformTag () =
  object (self)
    inherit TransformTag.transformTag () as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method isValid () : bool =
        begin
        (try
            let helperClass : string ref = ref ((java_get_class (Obj.repr (self#getHelper ())))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!helperClass#getMethod (commonStrings#iS_VALID, (Obj.magic 0))))) in ();
            let result : bool ref = ref ((Obj.magic ((Obj.magic !method_)#invoke ((self#getHelper ()), (Obj.magic 0))))) in ();
            !result
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#commonStrings)#iS_VALID, e))
            end;
            raise e
        end)
        end [@@warning "-7"]
    

    method doStartTag () : int =
        try
        begin
        (try
            ignore (self#setHelper ());
            if (self#isValid ()) then begin
                ignore (super#doStartTag ());
                raise (Java_return (Obj.repr ((self#eVAL_BODY_INCLUDE))))
            end else begin
                ignore (super#doStartTag ());
                raise (Java_return (Obj.repr ((self#sKIP_BODY))))
            end
        with e -> begin
            ignore (AbResponseHandler.sendJspTagLicensingRedirect ((self#pageContext), e));
            sKIP_BODY
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "XmlValidationTransformTag" (fun arguments -> Obj.repr (new xmlValidationTransformTag (Obj.obj arguments)))


