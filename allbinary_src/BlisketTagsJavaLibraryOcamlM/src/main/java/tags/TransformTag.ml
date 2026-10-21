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
(* import javax.servlet.jsp.JspTagException *)
(* import admin.taghelpers.TagHelperFactoryInterface *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)
(* import taghelpers.ViewHelperFactory *)
(* import tags.transform.info.TransformInfoTag *)

class transformTag () =
  object (self)
    inherit TransformInfoTag.transformInfoTag ((new ViewHelperFactory.viewHelperFactory ()))
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    
    

    method view () : string =
        begin
        (try
            let result : string ref = ref ((Obj.magic (((java_get_class (Obj.repr (self#getHelper ())))#getMethod ("view", (Obj.magic 0)))#invoke ((self#getHelper ()), (Obj.magic 0))))) in ();
            !result
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAGERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "view()", e))
            end;
            raise e
        end)
        end [@@warning "-7"]
    

    method doStartTag () : int =
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                ignore ((Obj.magic logUtil)#putF (("Creating with: \n" ^ (java_string_of (Obj.repr (self#getPropertiesHashMap ())))), self, tagStrings#dO_START_TAG))
            end;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!stringBuffer#append ("ViewTag Start For: "));
                ignore (!stringBuffer#append ((self#getName ())));
                ignore (!stringBuffer#append ("\nViewFile: "));
                ignore (!stringBuffer#append ((self#getObjectFile ())));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, tagStrings#dO_START_TAG))
            end;
            ignore (self#setHelper ());
            ignore ((pageContext#getOut ())#print ((self#view ())));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                ignore ((Obj.magic logUtil)#putF ("Tag End", self, tagStrings#dO_START_TAG))
            end;
            sKIP_BODY
        with e -> begin
            ignore (AbResponseHandler.sendJspTagLicensingRedirect (pageContext, e));
            sKIP_BODY
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#cONSTRUCTOR))
        end
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "TransformTag" (fun arguments -> Obj.repr (new transformTag (Obj.obj arguments)))


