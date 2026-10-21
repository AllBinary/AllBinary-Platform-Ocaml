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
(* package org.allbinary.logic.visual.transform.info.objectConfig *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.data.tree.dom.document.XmlDocumentHelper *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.regex.replace.Replace *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.visual.transform.info.RootTransformInfoData *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoData *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoHttp *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.logic.visual.transform.template.TransformTemplateFactory *)
(* import org.allbinary.logic.visual.transform.template.TransformTemplateInterface *)
(* import org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil *)
(* import org.allbinary.string.CommonSeps *)
(* import org.w3c.dom.Document *)

class genericStoreTransformInfoObjectConfig ((abeClientInformation_arg : AbeClientInformationInterface.abeClientInformationInterface), (transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit TransformInfoObjectConfig.transformInfoObjectConfig (transformInfoInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface = (Obj.magic 0)
    method abeClientInformation = abeClientInformation
    method set_abeClientInformation value' = abeClientInformation <- value'
    
    
    
    

    method generate : 'any1 'return. 'any1 -> 'return = fun (objectConfigDocument) ->
        let objectConfigDocument = Obj.repr objectConfigDocument in
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("TransformInfo: "));
            if ((self#getTransformInfoInterface ()) != (Obj.magic 0)) then begin
                ignore (!stringBuffer#append (((self#getTransformInfoInterface ())#getName ())))
            end else begin
                ignore (!stringBuffer#append ("No Owner!?#@"))
            end;
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "generate()"))
        end;
        let transformInfoHttpStoreInterface : Obj.t ref = ref ((Obj.repr (Obj.magic (self#getTransformInfoInterface ())))) in ();
        let objectConfigDocumentString : string ref = ref ((XmlDocumentHelper.toString ((Obj.magic objectConfigDocument)))) in ();
        let replaceHashMap : java_hash_map ref = ref (((self#createReplaceHashMap ((Obj.magic !transformInfoHttpStoreInterface), !objectConfigDocumentString)) :> java_hash_map)) in ();
        (Obj.magic ((self#generate (!objectConfigDocumentString, !replaceHashMap))))
        end [@@warning "-7-20"]
    

    method createReplaceHashMap : 'any1. 'any1 * string -> java_hash_map = fun (transformInfoHttpStoreInterface, (objectConfigDocumentString : string)) ->
        let transformInfoHttpStoreInterface = Obj.repr transformInfoHttpStoreInterface in
        begin
        let storeName : string ref = ref (((Obj.magic transformInfoHttpStoreInterface)#getStoreName ())) in ();
        let hashMap : java_hash_map ref = ref (((self#createHashMap ((Obj.magic transformInfoHttpStoreInterface), objectConfigDocumentString)) :> java_hash_map)) in ();
        let transformInfoObjectConfigData : TransformInfoObjectConfigData.transformInfoObjectConfigData ref = ref (((TransformInfoObjectConfigData.getInstance ()) :> TransformInfoObjectConfigData.transformInfoObjectConfigData)) in ();
        ignore (!hashMap#put ((!transformInfoObjectConfigData#vARKEY + (StoreFrontData.getInstance ())#nAME), !storeName));
        let pageName : string ref = ref (((TransformTemplateCustomizerUtil.getInstance ())#getPageNameHack (((self#getTransformInfoInterface ())#getName ()), !storeName))) in ();
        ignore (!hashMap#put ((!transformInfoObjectConfigData#vARKEY + (TransformInfoData.getInstance ())#pARTIAL), !pageName));
        (!hashMap :> java_hash_map)
        end [@@warning "-7-20"]
    

    method createHashMap : 'any1. 'any1 * string -> java_hash_map = fun (transformInfoHttpStoreInterface, (objectConfigDocumentString : string)) ->
        let transformInfoHttpStoreInterface = Obj.repr transformInfoHttpStoreInterface in
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        let storeName : string ref = ref (((Obj.magic transformInfoHttpStoreInterface)#getStoreName ())) in ();
        let propertiesHashMap : java_hash_map ref = ref ((((Obj.magic transformInfoHttpStoreInterface)#getPropertiesHashMap ()) :> java_hash_map)) in ();
        let templateNameOverride : string ref = ref (((StringUtil.getInstance ())#getNonNull ((Obj.magic (!propertiesHashMap#get ((TransformInfoData.getInstance ())#pARTIAL)))))) in ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("TemplateNameOverride: " ^ !templateNameOverride), self, "generate()"))
        end;
        let templateNameStringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!templateNameStringBuffer#append (!storeName));
        ignore (!templateNameStringBuffer#append (!templateNameOverride));
        ignore (!templateNameStringBuffer#append ((CommonSeps.getInstance ())#sPACE));
        ignore (!templateNameStringBuffer#append ((RootTransformInfoData.get_nAME ())));
        let templateNameKey : string ref = ref (((TransformInfoObjectConfigData.getInstance ())#vARKEY + (TransformInfoData.getInstance ())#oWNER)) in ();
        if ((java_string_index_of objectConfigDocumentString (Obj.repr (!templateNameKey))) != (-1)) then begin
            let templateInterface : TransformTemplateInterface.transformTemplateInterface ref = ref ((((Obj.magic (java_call_static "TransformTemplateFactory.getInstance" (Obj.repr ())))#getInstance (abeClientInformation, (java_string_of (Obj.repr !templateNameStringBuffer)), ((Obj.magic transformInfoHttpStoreInterface)#getPropertiesHashMap ()), ((Obj.magic transformInfoHttpStoreInterface)#getPageContext ()))) :> TransformTemplateInterface.transformTemplateInterface)) in ();
            let selectedTemplate : string ref = ref ((!templateInterface#getName ())) in ();
            ignore (!hashMap#put (!templateNameKey, !selectedTemplate))
        end;
        (!hashMap :> java_hash_map)
        end [@@warning "-7-20"]
    

    (* Java overload generate(String, HashMap) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        (* super(...) is the inherit clause *) ();
        abeClientInformation <- abeClientInformation_arg
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "GenericStoreTransformInfoObjectConfig" (fun arguments -> Obj.repr (new genericStoreTransformInfoObjectConfig (Obj.obj arguments)))


