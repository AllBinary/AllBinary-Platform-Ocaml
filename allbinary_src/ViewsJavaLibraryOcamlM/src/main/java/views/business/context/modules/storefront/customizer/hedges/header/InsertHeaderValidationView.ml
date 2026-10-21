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
(* package views.business.context.modules.storefront.customizer.hedges.header *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.communication.http.request.MultipartRequestParams *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.validate.ValidationComponentInterface *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.logic.visual.transform.template.customizer.hedges.heading.HeadingValidation *)
(* import org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import views.business.context.modules.storefront.customizer.CustomizerUtil *)

class insertHeaderValidationView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit TopBarView.topBarView (transformInfoInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable lOGOPATH : string = ""
    method lOGOPATH = lOGOPATH
    method set_lOGOPATH value' = lOGOPATH <- value'
    
    

    method toXmlDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-7"]
    

    method isValid () : bool =
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF ("topbarValidation", self, commonStrings#iS_VALID))
            end;
            let isValid : bool ref = ref ((heading#isValid ())) in ();
            if ((Obj.repr !isValid) == (Obj.repr true)) then begin
                ignore ((CustomizerUtil.getInstance ())#insert ((self#getTransformInfoInterface ()), (Obj.magic self)))
            end;
            !isValid
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to validate", self, commonStrings#iS_VALID, e))
            end;
            false
        end)
        end [@@warning "-7"]
    

    method validationInfo () : string =
        begin
        (try
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ((heading#validationInfo ())));
            (java_string_of (Obj.repr !stringBuffer))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to generate validation error info", self, "validationInfo()", e))
            end;
            "Error Getting Validation Info"
        end)
        end [@@warning "-7"]
    

    method toValidationInfoDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-7"]
    

    method toValidationInfoNode : 'any1 'return. 'any1 -> 'return = fun (_document) ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        lOGOPATH <- "logo/";
        ();
        (* super(...) is the inherit clause *) ();
        let multipartRequestHashMap : java_hash_map ref = ref ((((new MultipartRequestParams.multipartRequestParams ((self#getPageContext ())))#toHashMap ()) :> java_hash_map)) in ();
        let storeFrontInterface : StoreFrontInterface.storeFrontInterface ref = ref (((StoreFrontFactory.getInstance (((self#getWeblisketSession ())#getStoreName ()))) :> StoreFrontInterface.storeFrontInterface)) in ();
        let fullPath : string ref = ref ((java_string_of (Obj.repr (((URLGLOBALS.getWebappPath ()) + (!storeFrontInterface#getCurrentHostNamePath ())))) ^ lOGOPATH)) in ();
        ignore (!multipartRequestHashMap#put ((LogoData.getInstance ())#iMAGEPATH, !fullPath));
        heading <- (new HeadingValidation.headingValidation (!multipartRequestHashMap))
      end
  end [@@warning "-20"]
let () = java_register_constructor "InsertHeaderValidationView" (fun arguments -> Obj.repr (new insertHeaderValidationView (Obj.obj arguments)))


