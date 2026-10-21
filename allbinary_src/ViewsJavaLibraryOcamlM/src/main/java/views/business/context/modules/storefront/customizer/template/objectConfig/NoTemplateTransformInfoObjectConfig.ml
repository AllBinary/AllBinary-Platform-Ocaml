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
(* package views.business.context.modules.storefront.customizer.template.objectConfig *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.data.tree.dom.document.XmlDocumentHelper *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.regex.replace.Replace *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoData *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData *)
(* import org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil *)
(* import org.w3c.dom.Document *)

class noTemplateTransformInfoObjectConfig ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit TransformInfoObjectConfig.transformInfoObjectConfig (transformInfoInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    
    
    

    method generate : 'any1 'return. 'any1 -> 'return = fun (objectConfigDocument) ->
        let objectConfigDocument = Obj.repr objectConfigDocument in
        begin
        let docString : string ref = ref ((XmlDocumentHelper.toString ((Obj.magic objectConfigDocument)))) in ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("Initial ObjectConfig: " ^ !docString), self, "generate()"))
        end;
        let storeName : string ref = ref (((self#getTransformInfoInterface ())#getStoreName ())) in ();
        let viewName : string ref = ref (((self#getTransformInfoInterface ())#getName ())) in ();
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        let vARKEY : string ref = ref ((TransformInfoObjectConfigData.getInstance ())#vARKEY) in ();
        ignore (!hashMap#put ((!vARKEY ^ java_string_of (Obj.repr ((StoreFrontData.getInstance ())#nAME))), !storeName));
        ignore (!hashMap#put ((!vARKEY ^ java_string_of (Obj.repr ((TransformInfoData.getInstance ())#oWNER))), !viewName));
        let pageName : string ref = ref (((TransformTemplateCustomizerUtil.getInstance ())#getPageNameHack (((self#getTransformInfoInterface ())#getName ()), ((self#getTransformInfoInterface ())#getStoreName ())))) in ();
        ignore (!hashMap#put ((!vARKEY ^ java_string_of (Obj.repr ((TransformInfoData.getInstance ())#pARTIAL))), !pageName));
        let replace : Replace.replace ref = ref (((new Replace.replace (!hashMap)) :> Replace.replace)) in ();
        let newObjectConfigDocument : Obj.t ref = ref ((Obj.repr (DomDocumentHelper.create ((!replace#all (!docString)))))) in ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("Final ObjectConfig: " ^ (XmlDocumentHelper.toString ((Obj.magic !newObjectConfigDocument)))), self, "generate()"))
        end;
        (Obj.magic ((Obj.magic !newObjectConfigDocument)))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "NoTemplateTransformInfoObjectConfig" (fun arguments -> Obj.repr (new noTemplateTransformInfoObjectConfig (Obj.obj arguments)))


