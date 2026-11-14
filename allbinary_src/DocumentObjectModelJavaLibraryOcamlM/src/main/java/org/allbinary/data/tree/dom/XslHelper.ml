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
(* package org.allbinary.data.tree.dom *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.ByteArrayOutputStream *)
(* import java.io.File *)
(* import java.io.OutputStream *)
(* import java.io.StringBufferInputStream *)
(* import javax.xml.transform.Templates *)
(* import javax.xml.transform.Transformer *)
(* import javax.xml.transform.TransformerFactory *)
(* import javax.xml.transform.URIResolver *)
(* import javax.xml.transform.stream.StreamResult *)
(* import javax.xml.transform.stream.StreamSource *)
(* import org.allbinary.data.tree.dom.document.XmlDocumentHelper *)
(* import org.w3c.dom.Document *)

class xslHelper () =
  object (self)
    
    

    method translate : 'any1 'any2 'any3 'return. 'any1 * 'any2 * 'any3 -> 'return = fun (xsltStreamSource, xmlStreamSource, streamResult) ->
        let xsltStreamSource = Obj.repr xsltStreamSource in
        let xmlStreamSource = Obj.repr xmlStreamSource in
        let streamResult = Obj.repr streamResult in
        begin
        (try
            let transformerFactory : Obj.t ref = ref ((Obj.repr (TransformerFactory.newInstance ()))) in ();
            let transformer : Obj.t ref = ref ((Obj.repr ((Obj.magic !transformerFactory)#newTransformer ((Obj.magic xsltStreamSource))))) in ();
            ignore ((Obj.magic !transformer)#transform ((Obj.magic xmlStreamSource), (Obj.magic streamResult)));
            (Obj.magic (((Obj.magic streamResult)#getOutputStream ())))
        with e -> begin
            raise e
        end)
        end [@@warning "-20"]
    

    (* Java overload translate(URIResolver, StreamSource, StreamSource, StreamResult) is not converted: OCaml has one method per name *)
    

    method translateTemplate : 'any1 'any2. 'any1 * 'any2 -> string = fun (templates, xmlStreamSource) ->
        let templates = Obj.repr templates in
        let xmlStreamSource = Obj.repr xmlStreamSource in
        begin
        (try
            let outputStream : java_byte_array_output_stream ref = ref ((new java_byte_array_output_stream ())) in ();
            let streamResult : Obj.t ref = ref ((Obj.repr (new StreamResult.streamResult (!outputStream)))) in ();
            ignore (((Obj.magic templates)#newTransformer ())#transform ((Obj.magic xmlStreamSource), (Obj.magic !streamResult)));
            (java_string_of (Obj.repr ((Obj.magic !streamResult)#getOutputStream ())))
        with e -> begin
            raise e
        end)
        end [@@warning "-20"]
    

    (* Java overload translate(StreamSource, Document) is not converted: OCaml has one method per name *)
    

    (* Java overload translate(StreamSource, StreamSource) is not converted: OCaml has one method per name *)
    

    (* Java overload translate(URIResolver, StreamSource, StreamSource) is not converted: OCaml has one method per name *)
    

    method export : 'any3. java_file * string * 'any3 -> unit = fun ((outputFile : java_file), (xsltFilePath : string), xmlDocument) ->
        let xmlDocument = Obj.repr xmlDocument in
        begin
        (try
            ignore (outputFile#createNewFile ());
            ignore (self#translate ((new StreamSource.streamSource (xsltFilePath)), (new StreamSource.streamSource ((new StringBufferInputStream.stringBufferInputStream ((XmlDocumentHelper.toString ((Obj.magic xmlDocument))))))), (new StreamResult.streamResult (outputFile))))
        with e -> begin
            raise e
        end)
        end [@@warning "-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "XslHelper" (fun arguments -> Obj.repr (new xslHelper (Obj.obj arguments)))

let instance = (new xslHelper ())
let get_instance () = instance
let () = java_register_static "XslHelper.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (instance))
        end
let () = java_register_static "XslHelper.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


