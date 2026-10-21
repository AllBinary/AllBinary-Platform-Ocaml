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
(* package org.allbinary.logic.visual.transform.data *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.data.tree.dom.document.XmlDocumentHelper *)
(* import org.allbinary.logic.communication.http.AcceptableResponseGenerator *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSession *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.search.SearchRequest *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

let language : string = "en"
let get_language () = language
let () = java_register_static "TransformHttpRequestDocument.get_language" (fun _ -> Obj.repr (get_language ()))
let local : string = "US"
let get_local () = local
let () = java_register_static "TransformHttpRequestDocument.get_local" (fun _ -> Obj.repr (get_local ()))
class transformHttpRequestDocument ((searchRequest : SearchRequest.searchRequest)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable baseNode : Obj.t = Obj.repr 0
    method baseNode : 'r. 'r = Obj.magic baseNode
    method set_baseNode : 'v. 'v -> unit = fun value' -> baseNode <- Obj.repr value'
    val mutable document : Obj.t = Obj.repr 0
    method document : 'r. 'r = Obj.magic document
    method set_document : 'v. 'v -> unit = fun value' -> document <- Obj.repr value'
    
    
    

    method getBaseNode : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic baseNode)))
        end
    

    method getDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic document)))
        end
    

    method log () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        if ((Obj.magic baseNode) != (Obj.magic 0)) then begin
            ignore (!stringBuffer#append ("BaseNode: "));
            ignore (!stringBuffer#append (((Obj.magic baseNode)#getNodeName ())))
        end else begin
            ignore (!stringBuffer#append ("Log-Error: BaseNode is Null"))
        end;
        ignore (!stringBuffer#append ("\nDocument: "));
        ignore (!stringBuffer#append ((XmlDocumentHelper.toString ((Obj.magic document)))));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        baseNode <- (Obj.repr (Obj.magic 0));
        document <- (Obj.repr (Obj.magic 0));
        ();
        (try
            let contentType : string ref = ref ((searchRequest#getContentType ())) in ();
            document <- Obj.repr ((DomDocumentHelper.create ()));
            let contentTypeNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement (!contentType)))) in ();
            let languageTypeNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement (language)))) in ();
            let localTypeNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement (local)))) in ();
            baseNode <- Obj.repr ((Obj.magic !localTypeNode));
            ignore ((Obj.magic !languageTypeNode)#appendChild ((Obj.magic !localTypeNode)));
            ignore ((Obj.magic !contentTypeNode)#appendChild ((Obj.magic !languageTypeNode)));
            ignore ((Obj.magic document)#appendChild ((Obj.magic !contentTypeNode)))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#cONSTRUCTOR, e))
            end;
            raise e
        end)
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "TransformHttpRequestDocument" (fun arguments -> Obj.repr (new transformHttpRequestDocument (Obj.obj arguments)))


