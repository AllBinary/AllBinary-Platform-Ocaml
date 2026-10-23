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
(* import admin.taghelpers.TagHelperFactoryInterface *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)
(* import org.allbinary.string.CommonStrings *)

class modifyTag (tagHelperFactoryInterface) =
  object (self)
    inherit HelperTag.helperTag (tagHelperFactoryInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method insert () : string =
        begin
        (try
            let helperClass : string ref = ref ((java_get_class (Obj.repr (self#getHelper ())))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!helperClass#getMethod ("insert", (Obj.magic 0))))) in ();
            let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke ((self#getHelper ()), (Obj.magic 0))))) in ();
            !result
        with e -> begin
            let error : string ref = ref ("Failed to insert") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "insert()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method delete () : string =
        begin
        (try
            let helperClass : string ref = ref ((java_get_class (Obj.repr (self#getHelper ())))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!helperClass#getMethod (commonStrings#delete, (Obj.magic 0))))) in ();
            let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke ((self#getHelper ()), (Obj.magic 0))))) in ();
            !result
        with e -> begin
            let error : string ref = ref ("Failed to delete") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "delete()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method update () : string =
        begin
        (try
            let helperClass : string ref = ref ((java_get_class (Obj.repr (self#getHelper ())))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!helperClass#getMethod ("update", (Obj.magic 0))))) in ();
            let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke ((self#getHelper ()), (Obj.magic 0))))) in ();
            !result
        with e -> begin
            let error : string ref = ref ("Failed to update") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "update()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method doStartTag () : int =
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                let request : Obj.t ref = ref ((Obj.repr (Obj.magic ((self#pageContext)#getRequest ())))) in ();
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!stringBuffer#append ("Command: "));
                ignore (!stringBuffer#append ((self#getCommand ())));
                ignore (!stringBuffer#append (" Request URI: "));
                ignore (!stringBuffer#append (((Obj.magic !request)#getRequestURI ())));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, tagStrings#dO_START_TAG))
            end;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                ()
            end;
            if ((self#getCommand ()) != (Obj.magic 0)) then begin
                ignore (self#setHelper ());
                let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
                if (((self#getCommand ())#compareTo (!commonStrings#iNSERT)) == 0) then begin
                    let output : string ref = ref ((self#insert ())) in ();
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAGEXTRAOUTPUT)) then begin
                        ignore (((self#pageContext)#getOut ())#print ((!output ^ "<br />")))
                    end
                end else if (((self#getCommand ())#compareTo (!commonStrings#dELETE)) == 0) then begin
                    let output : string ref = ref ((self#delete ())) in ();
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAGEXTRAOUTPUT)) then begin
                        ignore (((self#pageContext)#getOut ())#print ((!output ^ "<br />")))
                    end
                end else if (((self#getCommand ())#compareTo (!commonStrings#uPDATE)) == 0) then begin
                    let output : string ref = ref ((self#update ())) in ();
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAGEXTRAOUTPUT)) then begin
                        ignore (((self#pageContext)#getOut ())#print ((!output ^ "<br />")))
                    end
                end
            end;
            (self#eVAL_BODY_INCLUDE)
        with e -> begin
            ignore (AbResponseHandler.sendJspTagLicensingRedirect ((self#pageContext), e));
            sKIP_BODY
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
            ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sTART, self, (self#commonStrings)#cONSTRUCTOR))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "ModifyTag" (fun arguments -> Obj.repr (new modifyTag (Obj.obj arguments)))


