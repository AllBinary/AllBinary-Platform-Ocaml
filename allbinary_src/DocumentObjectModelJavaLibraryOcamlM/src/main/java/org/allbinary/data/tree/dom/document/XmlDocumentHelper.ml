(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.data.tree.dom.document *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.ByteArrayOutputStream *)
(* import java.io.StringReader *)
(* import java.io.StringWriter *)
(* import java.io.Writer *)
(* import javax.xml.parsers.DocumentBuilderFactory *)
(* import javax.xml.transform.OutputKeys *)
(* import javax.xml.transform.Transformer *)
(* import javax.xml.transform.TransformerFactory *)
(* import javax.xml.transform.dom.DOMSource *)
(* import javax.xml.transform.stream.StreamResult *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.logic.java.characters.CharacterSetData *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.xml.sax.InputSource *)


let toString : 'any1. 'any1 -> string = fun (document) ->
        let document = Obj.repr document in
        begin
        (try
            let domSource : Obj.t ref = ref ((Obj.repr (new DOMSource.dOMSource ((Obj.magic document))))) in ();
            let byteArrayOutputStream : java_byte_array_output_stream ref = ref ((new java_byte_array_output_stream ())) in ();
            let streamResult : Obj.t ref = ref ((Obj.repr (new StreamResult.streamResult (!byteArrayOutputStream)))) in ();
            let copyTransformerFactory : Obj.t ref = ref ((Obj.repr (TransformerFactory.newInstance ()))) in ();
            let copyTransformer : Obj.t ref = ref ((Obj.repr ((Obj.magic !copyTransformerFactory)#newTransformer ()))) in ();
            ignore ((Obj.magic !copyTransformer)#transform ((Obj.magic !domSource), (Obj.magic !streamResult)));
            (java_string_of (Obj.repr !byteArrayOutputStream))
        with e -> begin
            raise e
        end)
        end [@@warning "-20"]

let () = java_register_static "XmlDocumentHelper.toString" (fun arguments -> Obj.repr (toString (Obj.obj arguments)))
class xmlDocumentHelper () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable iNDENT_NUMBER : string = ""
    method iNDENT_NUMBER = iNDENT_NUMBER
    method set_iNDENT_NUMBER value' = iNDENT_NUMBER <- value'
    val mutable transformer : Obj.t = Obj.repr 0
    method transformer : 'r. 'r = Obj.magic transformer
    method set_transformer : 'v. 'v -> unit = fun value' -> transformer <- Obj.repr value'
    
    

    method init ((indent : int), (ignoreDeclaration : bool)) : unit =
        begin
        (try
            let booleanFactory : BooleanFactory.booleanFactory ref = ref (((BooleanFactory.getInstance ()) :> BooleanFactory.booleanFactory)) in ();
            let transformerFactory : Obj.t ref = ref ((Obj.repr (TransformerFactory.newInstance ()))) in ();
            ignore ((Obj.magic !transformerFactory)#setAttribute (iNDENT_NUMBER, indent));
            transformer <- Obj.repr (((Obj.magic !transformerFactory)#newTransformer ()));
            ignore ((Obj.magic transformer)#setOutputProperty ((OutputKeys.get_eNCODING ()), (CharacterSetData.getInstance ())#uTF_8));
            ignore ((Obj.magic transformer)#setOutputProperty ((OutputKeys.get_oMIT_XML_DECLARATION ()), (if ignoreDeclaration then !booleanFactory#yES else !booleanFactory#nO)));
            ignore ((Obj.magic transformer)#setOutputProperty ((OutputKeys.get_iNDENT ()), !booleanFactory#yES))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#iNIT, e))
        end)
        end
    

    method format ((xmlString : string)) : string =
        begin
        let src : Obj.t ref = ref ((Obj.repr (new InputSource.inputSource ((new StringReader.stringReader (xmlString)))))) in ();
        let document : Obj.t ref = ref ((Obj.repr (((DocumentBuilderFactory.newInstance ())#newDocumentBuilder ())#parse ((Obj.magic !src))))) in ();
        let out : Obj.t ref = ref ((Obj.repr (new StringWriter.stringWriter ()))) in ();
        ignore ((Obj.magic transformer)#transform ((new DOMSource.dOMSource ((Obj.magic !document))), (new StreamResult.streamResult ((Obj.magic !out)))));
        (java_string_of (Obj.repr (Obj.magic !out)))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        iNDENT_NUMBER <- "indent-number";
        transformer <- (Obj.repr (Obj.magic 0));
        ();
        (self#init (4, true))
      end
  end [@@warning "-20"]
let () = java_register_constructor "XmlDocumentHelper" (fun arguments -> Obj.repr (new xmlDocumentHelper (Obj.obj arguments)))

let instance = (new xmlDocumentHelper ())
let get_instance () = instance
let () = java_register_static "XmlDocumentHelper.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "XmlDocumentHelper.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


