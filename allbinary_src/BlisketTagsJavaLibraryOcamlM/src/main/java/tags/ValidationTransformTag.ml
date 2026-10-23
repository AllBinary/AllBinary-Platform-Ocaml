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
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.jsp.JspTagException *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)
(* import taghelpers.ValidatedViewHelperFactory *)

class validationTransformTag () =
  object (self)
    inherit TransformTag.transformTag ((new ValidatedViewHelperFactory.validatedViewHelperFactory ())) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable xslFile : string = ""
    method xslFile = xslFile
    method set_xslFile value' = xslFile <- value'
    val mutable logic : bool = false
    method logic = logic
    method set_logic value' = logic <- value'
    
    

    method setXsl ((value : string)) : unit =
        begin
        xslFile <- value;
        ignore (self#setTemplateFile (xslFile))
        end [@@warning "-7"]
    

    method setLogic ((logic_arg : bool)) : unit =
        begin
        logic <- logic_arg
        end [@@warning "-7"]
    

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
    

    method validationInfo () : string =
        begin
        (try
            let addressHelperClass : string ref = ref ((java_get_class (Obj.repr (self#getHelper ())))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!addressHelperClass#getMethod ("validationInfo", (Obj.magic 0))))) in ();
            let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke ((self#getHelper ()), (Obj.magic 0))))) in ();
            !result
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "validationInfo()", e))
            end;
            raise e
        end)
        end [@@warning "-7"]
    

    method doStartTag () : int =
        try
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                let request : Obj.t ref = ref ((Obj.repr (Obj.magic ((self#pageContext)#getRequest ())))) in ();
                ignore (!stringBuffer#append ("ValidationViewTag Start For: "));
                ignore (!stringBuffer#append ((self#getName ())));
                ignore (!stringBuffer#append ("\nView FIle: "));
                ignore (!stringBuffer#append ((self#getObjectFile ())));
                ignore (!stringBuffer#append ("\nRequest URI: "));
                ignore (!stringBuffer#append (((Obj.magic !request)#getRequestURI ())));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, tagStrings#dO_START_TAG))
            end;
            ignore (self#setHelper ());
            if (self#isValid ()) then begin
                ignore (super#doStartTag ());
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                    let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                    ignore (!stringBuffer#append ("View File: "));
                    ignore (!stringBuffer#append ((self#getObjectFile ())));
                    ignore (!stringBuffer#append ("\nLogic includes body if true="));
                    ignore (!stringBuffer#appendboolean (logic));
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, tagStrings#dO_START_TAG))
                end;
                if logic then begin
                    raise (Java_return (Obj.repr (eVAL_BODY_INCLUDE)))
                end else begin
                    raise (Java_return (Obj.repr (sKIP_BODY)))
                end
            end else begin
                ignore ((pageContext#getOut ())#print ((self#validationInfo ())));
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                    let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                    ignore (!stringBuffer#append ("View File: "));
                    ignore (!stringBuffer#append ((self#getObjectFile ())));
                    ignore (!stringBuffer#append ("\nisValid()=false"));
                    ignore (!stringBuffer#append ("\nLogic skips body if true="));
                    ignore (!stringBuffer#appendboolean (logic));
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, tagStrings#dO_START_TAG))
                end;
                if logic then begin
                    raise (Java_return (Obj.repr (sKIP_BODY)))
                end else begin
                    raise (Java_return (Obj.repr (eVAL_BODY_INCLUDE)))
                end
            end
        with e -> begin
            ignore (AbResponseHandler.sendJspTagLicensingRedirect ((self#pageContext), e));
            sKIP_BODY
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method doEndTag () : int =
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
            ignore ((Obj.magic logUtil)#putF ("Tag Ended", self, "doEndTag"))
        end;
        logic <- true;
        (super#doEndTag ())
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        xslFile <- "";
        ();
        ();
        (* super(...) is the inherit clause *) ();
        logic <- true
      end
  end [@@warning "-20"]
let () = java_register_constructor "ValidationTransformTag" (fun arguments -> Obj.repr (new validationTransformTag (Obj.obj arguments)))


