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
(* package views.business.context.modules.storefront.customizer.generic.page *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.data.tables.transform.info.TransformInfoEntity *)
(* import org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder *)
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.data.tree.dom.document.XmlDocumentHelper *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.validate.ValidationComponentInterface *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.visual.transform.info.TransformInfo *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface *)
(* import org.allbinary.logic.visual.transform.template.customizer.page.PageValidation *)
(* import org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import views.business.context.modules.storefront.customizer.CustomizerUtil *)

class pageValidationView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit PageView.pageView (transformInfoInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method isValid () : bool =
        begin
        (try
            let isValid : bool ref = ref (true) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sTART, self, (self#commonStrings)#iS_VALID))
            end;
            let transformInfoEntityInterface : TransformInfoEntity.transformInfoEntity ref = ref (((TransformInfoEntityBuilder.getInstance ()) :> TransformInfoEntity.transformInfoEntity)) in ();
            let pageObjectConfigInterface : TransformInfoObjectConfigInterface.transformInfoObjectConfigInterface ref = ref ((((self#getTransformInfoInterface ())#getObjectConfigInterface ()) :> TransformInfoObjectConfigInterface.transformInfoObjectConfigInterface)) in ();
            let allViewsToBeModifiedVector : BasicArrayList.basicArrayList ref = ref (((!pageObjectConfigInterface#getGroupTransforms ()) :> BasicArrayList.basicArrayList)) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF (("Views To Be Modified: " ^ java_string_of (Obj.repr ((!allViewsToBeModifiedVector#size ())))), self, "get(transformInfoInterface)"))
            end;
            let size : int ref = ref ((!allViewsToBeModifiedVector#size ())) in ();
            for index = 0 to !size - 1 do
                let transformInfoInterface : TransformInfo.transformInfo ref = ref (((Obj.magic (!allViewsToBeModifiedVector#get (index))) :> TransformInfo.transformInfo)) in ();
                let viewNameOfViewToBeModified : string ref = ref ((!transformInfoInterface#getName ())) in ();
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                    ignore (!stringBuffer#append (((self#getTransformInfoInterface ())#getName ())));
                    ignore (!stringBuffer#append (" is modifying view: "));
                    ignore (!stringBuffer#append (!viewNameOfViewToBeModified));
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "insert()"))
                end;
                let httpTransformInfoInterface : TransformInfoHttpInterface.transformInfoHttpInterface ref = ref (((Obj.magic (self#getTransformInfoInterface ())) :> TransformInfoHttpInterface.transformInfoHttpInterface)) in ();
                let specifiedTransformInfoInterface : TransformInfoInterface.transformInfoInterface ref = ref (((!transformInfoEntityInterface#get (!viewNameOfViewToBeModified, (!httpTransformInfoInterface#getPropertiesHashMap ()), (!httpTransformInfoInterface#getPageContext ()))) :> TransformInfoInterface.transformInfoInterface)) in ();
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                    ignore (!stringBuffer#append (((self#getTransformInfoInterface ())#getName ())));
                    ignore (!stringBuffer#append (" is adding data to view: "));
                    ignore (!stringBuffer#append (!viewNameOfViewToBeModified));
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "insert()"))
                end;
                let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
                let title : string ref = ref (((!specifiedTransformInfoInterface#getName ())#substring ((((self#getTransformInfoInterface ())#getStoreName ())#length ())))) in ();
                if ((String.compare !title ("index")) == 0) then begin
                    ignore (!hashMap#put ((TitleData.getInstance ())#tEXT, (java_string_of (Obj.repr (((self#getTransformInfoInterface ())#getStoreName ()))) ^ " - Home Page")))
                end else begin
                    ignore (!hashMap#put ((TitleData.getInstance ())#tEXT, ((java_string_of (Obj.repr (((self#getTransformInfoInterface ())#getStoreName ()))) ^ " -") ^ !title)))
                end;
                let pageValidation : PageValidation.pageValidation ref = ref (((new PageValidation.pageValidation (!hashMap)) :> PageValidation.pageValidation)) in ();
                if ((Obj.repr (!pageValidation#isValid ())) == (Obj.repr false)) then begin
                    isValid := false
                end;
                if ((Obj.repr !isValid) == (Obj.repr true)) then begin
                    let document : Obj.t ref = ref ((Obj.repr (DomDocumentHelper.create ()))) in ();
                    ignore ((Obj.magic !document)#appendChild ((!pageValidation#toXmlNode ((Obj.magic !document)))));
                    let documentString : string ref = ref ((XmlDocumentHelper.toString ((Obj.magic !document)))) in ();
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                        ignore (!stringBuffer#append (!viewNameOfViewToBeModified));
                        ignore (!stringBuffer#append (" is changing data in "));
                        ignore (!stringBuffer#append ((java_string_of (Obj.repr (!specifiedTransformInfoInterface#getDataFilePath ())))));
                        ignore (!stringBuffer#append (" to the following data:\n"));
                        ignore (!stringBuffer#append (!documentString));
                        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, (self#commonStrings)#iS_VALID))
                    end;
                    ignore ((CustomizerUtil.getInstance ())#write (!specifiedTransformInfoInterface, !documentString))
                end
            done;
            !isValid
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to validate", self, (self#commonStrings)#iS_VALID, e))
            end;
            false
        end)
        end [@@warning "-7"]
    

    method validationInfo () : string =
        begin
        (try
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            let transformInfoEntityInterface : TransformInfoEntity.transformInfoEntity ref = ref (((TransformInfoEntityBuilder.getInstance ()) :> TransformInfoEntity.transformInfoEntity)) in ();
            let objectConfig : TransformInfoObjectConfigInterface.transformInfoObjectConfigInterface ref = ref ((((self#getTransformInfoInterface ())#getObjectConfigInterface ()) :> TransformInfoObjectConfigInterface.transformInfoObjectConfigInterface)) in ();
            let httpTransformInfoInterface : TransformInfoHttpInterface.transformInfoHttpInterface ref = ref (((Obj.magic (self#getTransformInfoInterface ())) :> TransformInfoHttpInterface.transformInfoHttpInterface)) in ();
            let allViewsToBeModifiedVector : BasicArrayList.basicArrayList ref = ref (((!objectConfig#getGroupTransforms ()) :> BasicArrayList.basicArrayList)) in ();
            let size : int ref = ref ((!allViewsToBeModifiedVector#size ())) in ();
            for index = 0 to !size - 1 do
                let transformInfoInterface : TransformInfo.transformInfo ref = ref (((Obj.magic (!allViewsToBeModifiedVector#get (index))) :> TransformInfo.transformInfo)) in ();
                let viewNameOfViewToBeModified : string ref = ref ((!transformInfoInterface#getName ())) in ();
                let specifiedTransformInfoInterface : TransformInfoInterface.transformInfoInterface ref = ref (((!transformInfoEntityInterface#get (!viewNameOfViewToBeModified, (!httpTransformInfoInterface#getPropertiesHashMap ()), (!httpTransformInfoInterface#getPageContext ()))) :> TransformInfoInterface.transformInfoInterface)) in ();
                let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
                let title : string ref = ref (((!specifiedTransformInfoInterface#getName ())#substring ((((self#getTransformInfoInterface ())#getStoreName ())#length ())))) in ();
                if ((String.compare !title ("index")) == 0) then begin
                    ignore (!hashMap#put ((TitleData.getInstance ())#tEXT, (java_string_of (Obj.repr (((self#getTransformInfoInterface ())#getStoreName ()))) ^ " - Home Page")))
                end else begin
                    ignore (!hashMap#put ((TitleData.getInstance ())#tEXT, ((java_string_of (Obj.repr (((self#getTransformInfoInterface ())#getStoreName ()))) ^ " -") ^ !title)))
                end;
                let pageValidation : PageValidation.pageValidation ref = ref (((new PageValidation.pageValidation (!hashMap)) :> PageValidation.pageValidation)) in ();
                if ((Obj.repr (!pageValidation#isValid ())) == (Obj.repr false)) then begin
                    ignore (!stringBuffer#append (("TransformInfo Name for PageValidation:" ^ (!specifiedTransformInfoInterface#getName ()))));
                    ignore (!stringBuffer#append (("PageValidation:" ^ java_string_of (Obj.repr (!hashMap)))));
                    ignore (!stringBuffer#append (("PageValidation Info:" ^ java_string_of (Obj.repr ((!pageValidation#validationInfo ()))))))
                end
            done;
            (java_string_of (Obj.repr !stringBuffer))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to generate validation error info", self, "validationInfo()", e))
            end;
            "An auto generated page name was invalid."
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
        ();
        (* super(...) is the inherit clause *) ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("View Name: " ^ (transformInfoInterface#getName ())), self, "PageViewValidation()"))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "PageValidationView" (fun arguments -> Obj.repr (new pageValidationView (Obj.obj arguments)))


