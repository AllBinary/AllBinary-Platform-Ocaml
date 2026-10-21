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
(* package views.business.context.modules.storefront.customizer.bodies.generic *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.page.PageData *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.data.tree.dom.document.XmlDocumentHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.visual.transform.StoreTransformer *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.logic.visual.transform.template.customizer.bodies.GenericBodyValidation *)
(* import org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil *)
(* import org.apache.commons.lang3.StringEscapeUtils *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import views.business.context.modules.storefront.HttpStoreComponentView *)

let nAME : string = "None"
let get_nAME () = nAME
let () = java_register_static "GenericBodyCustomizerView.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
class genericBodyCustomizerView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit HttpStoreComponentView.httpStoreComponentView (transformInfoInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable body : GenericBodyValidation.genericBodyValidation = (Obj.magic 0)
    method body = body
    method set_body value' = body <- value'
    
    

    method addDomNodeInterfaces () : unit =
        begin
        ignore (self#addDomNodeInterface ((Obj.magic body)));
        ignore (self#addDomNodeInterface ((Obj.magic self)))
        end [@@warning "-7"]
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let pageName : string ref = ref (((TransformTemplateCustomizerUtil.getInstance ())#getPageNameHack (((self#getTransformInfoInterface ())#getName ()), ((self#getWeblisketSession ())#getStoreName ())))) in ();
        if ((StringValidationUtil.getInstance ())#isEmpty (!pageName)) then begin
            pageName := nAME
        end;
        (Obj.magic ((ModDomHelper.createNameValueNodes ((Obj.magic document), (PageData.getInstance ())#nAME, !pageName))))
        end [@@warning "-7-20"]
    

    method view () : string =
        begin
        (try
            (self#addDomNodeInterfaces ());
            let success : string ref = ref ((XmlDocumentHelper.toString ((self#getDoc ())))) in ();
            let result : string ref = ref (((new StoreTransformer.storeTransformer (abeClientInformation, (self#getTransformInfoInterface ())))#translate (!success))) in ();
            (StringEscapeUtils.unescapeHtml3 (!result))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "view()", e))
            end;
            raise e
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        body <- ((Obj.magic 0) :> GenericBodyValidation.genericBodyValidation);
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "GenericBodyCustomizerView" (fun arguments -> Obj.repr (new genericBodyCustomizerView (Obj.obj arguments)))


