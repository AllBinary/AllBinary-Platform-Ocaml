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
(* import admin.taghelpers.StaticPagesHelperFactory *)
(* import admin.taghelpers.StaticPagesRequestHelperFactory *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.search.SearchData *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoData *)

class staticPagesTag () =
  object (self)
    inherit TableTag.tableTag () as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable xslFile : string = ""
    method xslFile = xslFile
    method set_xslFile value' = xslFile <- value'
    
    

    method setXsl ((value : string)) : unit =
        begin
        xslFile <- value
        end [@@warning "-7"]
    

    method generateStaticPages () : string =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((new StaticPagesRequestHelperFactory.staticPagesRequestHelperFactory ())#getInstance ((self#getPropertiesHashMap ()), pageContext)))) in ();
            let helperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!helperClass#getMethod ("generateStaticPages", (Obj.magic 0))))) in ();
            let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0))))) in ();
            !result
        with e -> begin
            raise e
        end)
        end [@@warning "-7"]
    

    method makePublic () : string =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((new StaticPagesRequestHelperFactory.staticPagesRequestHelperFactory ())#getInstance ((self#getPropertiesHashMap ()), pageContext)))) in ();
            let helperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!helperClass#getMethod ("makePublic", (Obj.magic 0))))) in ();
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
                    if (((self#getCommand ())#compareTo ((SearchData.get_gENERATESTATICPAGES ()))) == 0) then begin
                        ignore ((self#getPropertiesHashMap ())#put ((TransformInfoData.getInstance ())#tEMPLATEFILENAME, xslFile));
                        let output : string ref = ref ((self#generateStaticPages ())) in ();
                        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAGEXTRAOUTPUT)) then begin
                            ignore ((pageContext#getOut ())#print (!output))
                        end
                    end else if (((self#getCommand ())#compareTo ((SearchData.get_mAKEPUBLIC ()))) == 0) then begin
                        let output : string ref = ref ((self#makePublic ())) in ();
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
        xslFile <- "";
        ();
        ignore (self#setTagHelperFactory ((new StaticPagesHelperFactory.staticPagesHelperFactory ())));
        ignore (self#setTagRequestHelperFactory ((new StaticPagesRequestHelperFactory.staticPagesRequestHelperFactory ())))
      end
  end [@@warning "-20"]
let () = java_register_constructor "StaticPagesTag" (fun arguments -> Obj.repr (new staticPagesTag (Obj.obj arguments)))


