(*

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  III
  Created By: Travis Berthelot
   
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.visual.transform.template.customizer.includes.meta *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.validate.Validation *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData *)
(* import org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory *)
(* import org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaData *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class metaValidation (_document) =
  object (self)
    inherit Validation.validation ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable label : string = ""
    method label = label
    method set_label value' = label <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable httpEquiv : string = ""
    method httpEquiv = httpEquiv
    method set_httpEquiv value' = httpEquiv <- value'
    val mutable content : string = ""
    method content = content
    method set_content value' = content <- value'
    
    
    

    method isValid () : bool =
        begin
        (try
            let valid : bool ref = ref (true) in ();
            !valid
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to validate form", self, (self#commonStrings)#iS_VALID, e))
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
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        let htmlMetaAttributeDataFactory : HtmlMetaAttributeDataFactory.htmlMetaAttributeDataFactory ref = ref (((HtmlMetaAttributeDataFactory.getInstance ()) :> HtmlMetaAttributeDataFactory.htmlMetaAttributeDataFactory)) in ();
        ignore (!hashMap#put ((java_string_of (Obj.repr (HtmlMetaData.getInstance ())#lABEL)), label));
        ignore (!hashMap#put ((java_string_of (Obj.repr !htmlMetaAttributeDataFactory#nAME)), name));
        ignore (!hashMap#put ((java_string_of (Obj.repr !htmlMetaAttributeDataFactory#hTTP_EQUIV)), httpEquiv));
        ignore (!hashMap#put ((java_string_of (Obj.repr !htmlMetaAttributeDataFactory#cONTENT)), content));
        (!hashMap :> java_hash_map)
        end [@@warning "-7"]
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNameValueNodes ((Obj.magic document), (java_string_of (Obj.repr (HtmlMetaData.getInstance ())#nAME)), (self#toHashMap ()))))) in ();
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        name <- "";
        httpEquiv <- "";
        ();
        ();
        raise (Failure ((CommonStrings.getInstance ())#nOT_IMPLEMENTED))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "MetaValidation" (fun arguments -> Obj.repr (new metaValidation (Obj.obj arguments)))


