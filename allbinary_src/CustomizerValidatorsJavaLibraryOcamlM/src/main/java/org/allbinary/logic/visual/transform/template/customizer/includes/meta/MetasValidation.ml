(*

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  II
  Created By: Travis Berthelot
   
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.visual.transform.template.customizer.includes.meta *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.validate.Validation *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory *)
(* import org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeValuesData *)
(* import org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetasData *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class metasValidation ((storeName : string)) =
  object (self)
    inherit Validation.validation ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable storeFrontInterface : StoreFrontInterface.storeFrontInterface = (Obj.magic 0)
    method storeFrontInterface = storeFrontInterface
    method set_storeFrontInterface value' = storeFrontInterface <- value'
    val mutable metaValidationVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method metaValidationVector = metaValidationVector
    method set_metaValidationVector value' = metaValidationVector <- value'
    
    
    

    method isValid () : bool =
        begin
        (try
            let valid : bool ref = ref (true) in ();
            !valid
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to validate form", self, commonStrings#iS_VALID, e))
            end;
            false
        end)
        end [@@warning "-7"]
    

    method validationInfo () : string =
        begin
        (try
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            (java_string_of (Obj.repr !stringBuffer))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to generate validation error info", self, "validationInfo()", e))
            end;
            "Error Validating Form"
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
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((HtmlMetasData.getInstance ())#nAME)))) in ();
        let metaArray : MetaValidation.metaValidation array ref = ref ((Obj.magic (metaValidationVector#toArrayType ((Array.make ((metaValidationVector#size ())) (Obj.magic 0)))))) in ();
        let size : int ref = ref ((Array.length !metaArray)) in ();
        for i = 0 to !size - 1 do
            let metaValidation : MetaValidation.metaValidation ref = ref ((!metaArray.(i) :> MetaValidation.metaValidation)) in ();
            ignore ((Obj.magic !node)#appendChild ((!metaValidation#toXmlNode ((Obj.magic document)))))
        done;
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        storeFrontInterface <- (StoreFrontFactory.getInstance (storeName));
        metaValidationVector <- (new BasicArrayListD.basicArrayListD ());
        let contentValue : string ref = ref (((storeFrontInterface#getName ()) ^ " E-Commerce Site")) in ();
        let keywordsMetaValidation : MetaValidation.metaValidation ref = ref (((new MetaValidation.metaValidation ((HtmlMetaAttributeDataFactory.getInstance ())#nAME, "Keywords", (HtmlMetaAttributeValuesData.getInstance ())#kEYWORDS, !contentValue)) :> MetaValidation.metaValidation)) in ();
        let abstractMetaValidation : MetaValidation.metaValidation ref = ref (((new MetaValidation.metaValidation ((HtmlMetaAttributeDataFactory.getInstance ())#nAME, "Abstract", (HtmlMetaAttributeValuesData.getInstance ())#aBSTRACT, !contentValue)) :> MetaValidation.metaValidation)) in ();
        let descriptionMetaValidation : MetaValidation.metaValidation ref = ref (((new MetaValidation.metaValidation ((HtmlMetaAttributeDataFactory.getInstance ())#nAME, "Description", (HtmlMetaAttributeValuesData.getInstance ())#dESCRIPTION, !contentValue)) :> MetaValidation.metaValidation)) in ();
        ignore (metaValidationVector#add (!keywordsMetaValidation));
        ignore (metaValidationVector#add (!abstractMetaValidation));
        ignore (metaValidationVector#add (!descriptionMetaValidation))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "MetasValidation" (fun arguments -> Obj.repr (new metasValidation (Obj.obj arguments)))


