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
(* import javax.servlet.jsp.JspTagException *)
(* import admin.taghelpers.CategoryHelperFactory *)
(* import admin.taghelpers.CategoryRequestHelperFactory *)
(* import org.allbinary.business.category.CategoryData *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoData *)

class categoryTag () =
  object (self)
    inherit TableTag.tableTag () as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable xsl : string = ""
    method xsl = xsl
    method set_xsl value' = xsl <- value'
    
    

    method setXsl ((value : string)) : unit =
        begin
        xsl <- value
        end [@@warning "-7"]
    

    method viewCategory () : string =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((new CategoryRequestHelperFactory.categoryRequestHelperFactory ())#getInstance ((self#getPropertiesHashMap ()), pageContext)))) in ();
            let helperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!helperClass#getMethod ("viewCategory", (Obj.magic 0))))) in ();
            let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0))))) in ();
            !result
        with e -> begin
            raise e
        end)
        end [@@warning "-7"]
    

    method viewCategories () : string =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((new CategoryRequestHelperFactory.categoryRequestHelperFactory ())#getInstance ((self#getPropertiesHashMap ()), pageContext)))) in ();
            let helperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!helperClass#getMethod ("viewCategories", (Obj.magic 0))))) in ();
            let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0))))) in ();
            !result
        with e -> begin
            raise e
        end)
        end [@@warning "-7"]
    

    method doStartTag () : int =
        try
        begin
        (try
            if (self#isEnabled ()) then begin
                if ((self#getCommand ()) != (Obj.magic 0)) then begin
                    ignore ((self#getPropertiesHashMap ())#put ((TransformInfoData.getInstance ())#tEMPLATEFILENAME, xsl));
                    if (((self#getCommand ())#compareTo ((CategoryData.getInstance ())#vIEW)) == 0) then begin
                        let output : string ref = ref ((self#viewCategory ())) in ();
                        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAGEXTRAOUTPUT)) then begin
                            ignore ((pageContext#getOut ())#print (!output))
                        end
                    end else if (((self#getCommand ())#compareTo ((CategoryData.getInstance ())#vIEW)) == 0) then begin
                        let output : string ref = ref ((self#viewCategories ())) in ();
                        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAGEXTRAOUTPUT)) then begin
                            ignore ((pageContext#getOut ())#print (!output))
                        end
                    end else begin
                        raise (Java_return (Obj.repr ((super#doStartTag ()))))
                    end
                end
            end;
            sKIP_BODY
        with e -> begin
            ignore (AbResponseHandler.sendJspTagLicensingRedirect (pageContext, e));
            sKIP_BODY
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        xsl <- "";
        ();
        ignore (self#setTagHelperFactory ((new CategoryHelperFactory.categoryHelperFactory ())));
        ignore (self#setTagRequestHelperFactory ((new CategoryRequestHelperFactory.categoryRequestHelperFactory ())))
      end
  end [@@warning "-20"]
let () = java_register_constructor "CategoryTag" (fun arguments -> Obj.repr (new categoryTag (Obj.obj arguments)))


