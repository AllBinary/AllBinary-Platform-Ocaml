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
(* package views.business.context.modules.storefront.customizer.template *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder *)
(* import org.allbinary.logic.communication.http.request.RequestParams *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.validate.ValidationComponentInterface *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.visual.transform.TransformFactory *)
(* import org.allbinary.logic.visual.transform.TransformInterface *)
(* import org.allbinary.logic.visual.transform.info.GeneratorTransformInfoData *)
(* import org.allbinary.logic.visual.transform.info.TransformInfo *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoData *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfosData *)
(* import org.allbinary.string.CommonSeps *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import views.business.context.modules.storefront.HttpStoreComponentView *)
(* import views.business.context.modules.storefront.customizer.template.objectConfig.InsertTemplateCustomizerTransformInfoObjectConfig *)
(* import views.business.context.modules.storefront.customizer.template.objectConfig.NoTemplateTransformInfoObjectConfig *)

class insertCustomizerValidationView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit HttpStoreComponentView.httpStoreComponentView (transformInfoInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable viewName : string = ""
    method viewName = viewName
    method set_viewName value' = viewName <- value'
    
    

    method isValid () : bool =
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF ("Started Validation", self, commonStrings#iS_VALID))
            end;
            let isValid : bool ref = ref (true) in ();
            if ((StringValidationUtil.getInstance ())#isEmpty (viewName)) then begin
                isValid := false
            end else begin
                let objectConfig : Obj.t ref = ref ((Obj.repr (new NoTemplateTransformInfoObjectConfig.noTemplateTransformInfoObjectConfig ((self#getTransformInfoInterface ()), (((self#getTransformInfoInterface ())#getObjectConfigInterface ())#toXmlDoc ()))))) in ();
                let componentVector : BasicArrayList.basicArrayList ref = ref ((((Obj.magic !objectConfig)#getGroupTransforms ()) :> BasicArrayList.basicArrayList)) in ();
                let size : int ref = ref ((!componentVector#size ())) in ();
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                    ignore (!stringBuffer#append ("Pointing "));
                    ignore (!stringBuffer#appendint ((!componentVector#size ())));
                    ignore (!stringBuffer#append (" Components"));
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, commonStrings#iS_VALID))
                end;
                for index = 0 to !size - 1 do
                    let transformInfo : TransformInfo.transformInfo ref = ref (((Obj.magic (!componentVector#get (index))) :> TransformInfo.transformInfo)) in ();
                    let transformInfoName : string ref = ref ((!transformInfo#getName ())) in ();
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                        ignore ((Obj.magic logUtil)#putF (("Setting Template Component with ViewName: " ^ !transformInfoName), self, commonStrings#iS_VALID))
                    end;
                    let componentInterface : TransformInterface.transformInterface ref = ref ((((TransformFactory.getInstance ())#getInstance (abeClientInformation, !transformInfoName, (self#getTransformInfoInterface ()))) :> TransformInterface.transformInterface)) in ();
                    let templateViewObjectConfig : Obj.t ref = ref ((Obj.repr (new InsertTemplateCustomizerTransformInfoObjectConfig.insertTemplateCustomizerTransformInfoObjectConfig ((!componentInterface#getTransformInfoInterface ()), (((!componentInterface#getTransformInfoInterface ())#getObjectConfigInterface ())#toXmlDoc ()))))) in ();
                    let storeName : string ref = ref (((self#getTransformInfoInterface ())#getStoreName ())) in ();
                    let endIndex : int ref = ref (((java_string_index_of viewName (Obj.repr (!storeName))) + (String.length !storeName))) in ();
                    let storePrepend : string ref = ref ((String.sub viewName (0) ((!endIndex) - (0)))) in ();
                    let viewNamePostfix : string ref = ref ((String.sub viewName (!endIndex) (((String.length viewName)) - (!endIndex)))) in ();
                    let newViewNameStringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                    ignore (!newViewNameStringBuffer#append (!storePrepend));
                    let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
                    let transformInfosData : TransformInfosData.transformInfosData ref = ref (((TransformInfosData.getInstance ()) :> TransformInfosData.transformInfosData)) in ();
                    if ((java_string_index_of !transformInfoName (Obj.repr (!transformInfosData#sMALL_PREVIEW))) >= 0) then begin
                        ignore (!newViewNameStringBuffer#append (!commonSeps#sPACE));
                        ignore (!newViewNameStringBuffer#append (!transformInfosData#sMALL_PREVIEW))
                    end else if ((java_string_index_of !transformInfoName (Obj.repr (!transformInfosData#pREVIEW))) >= 0) then begin
                        ignore (!newViewNameStringBuffer#append (!commonSeps#sPACE));
                        ignore (!newViewNameStringBuffer#append (!transformInfosData#pREVIEW))
                    end;
                    ignore (!newViewNameStringBuffer#append (!commonSeps#sPACE));
                    ignore (!newViewNameStringBuffer#append (!viewNamePostfix));
                    if ((java_string_index_of !transformInfoName (Obj.repr ((GeneratorTransformInfoData.get_nAME ())))) >= 0) then begin
                        ignore (!newViewNameStringBuffer#append (!commonSeps#sPACE));
                        ignore (!newViewNameStringBuffer#append ((GeneratorTransformInfoData.get_nAME ())))
                    end;
                    let newViewName : string ref = ref ((java_string_of (Obj.repr !newViewNameStringBuffer))) in ();
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                        ignore (!stringBuffer#append ("Template Component: "));
                        ignore (!stringBuffer#append (!transformInfoName));
                        ignore (!stringBuffer#append ("\n Now Pointing To View Name: "));
                        ignore (!stringBuffer#append (!newViewName));
                        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, commonStrings#iS_VALID))
                    end;
                    ignore ((Obj.magic !templateViewObjectConfig)#set (!newViewName));
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                        ignore (!stringBuffer#append ("Template Component: "));
                        ignore (!stringBuffer#append (!transformInfoName));
                        ignore (!stringBuffer#append ("\n with ObjectConfig: "));
                        ignore (!stringBuffer#append ((java_string_of (Obj.repr (Obj.magic !templateViewObjectConfig)))));
                        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, commonStrings#iS_VALID))
                    end;
                    ignore ((!componentInterface#getTransformInfoInterface ())#setObjectConfigInterface ((Obj.magic !templateViewObjectConfig)));
                    let updatedTransformInfoHashMap : java_hash_map ref = ref ((((!componentInterface#getTransformInfoInterface ())#toHashMap ()) :> java_hash_map)) in ();
                    ignore ((TransformInfoEntityBuilder.getInstance ())#update (!updatedTransformInfoHashMap))
                done
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
            ignore (!stringBuffer#append ("Error: Template Name Is Empty."));
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
    

    method view () : string =
        begin
        ((views#validationOnlyTempUtil#getInstance ())#view (self))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        (* super(...) is the inherit clause *) ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("View Name: " ^ (transformInfoInterface#getName ())), self, commonStrings#cONSTRUCTOR))
        end;
        let requestHashMap : java_hash_map ref = ref ((((new RequestParams.requestParams ((self#getPageContext ())))#toHashMap ()) :> java_hash_map)) in ();
        viewName <- (Obj.magic (!requestHashMap#get ((TransformInfoData.getInstance ())#nAME)))
      end
  end [@@warning "-20"]
let () = java_register_constructor "InsertCustomizerValidationView" (fun arguments -> Obj.repr (new insertCustomizerValidationView (Obj.obj arguments)))


