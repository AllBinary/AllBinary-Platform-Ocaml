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
(* package org.allbinary.dom *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.ByteArrayOutputStream *)
(* import java.io.File *)
(* import javax.xml.parsers.DocumentBuilder *)
(* import javax.xml.parsers.DocumentBuilderFactory *)
(* import javax.xml.transform.Transformer *)
(* import javax.xml.transform.TransformerFactory *)
(* import javax.xml.transform.dom.DOMSource *)
(* import javax.xml.transform.stream.StreamResult *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

class domHelper () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method createDocument : 'return. unit -> 'return = fun () ->
        begin
        (try
            let factory : Obj.t ref = ref ((Obj.repr (DocumentBuilderFactory.newInstance ()))) in ();
            let builder : Obj.t ref = ref ((Obj.repr ((Obj.magic !factory)#newDocumentBuilder ()))) in ();
            let document : Obj.t ref = ref ((Obj.repr ((Obj.magic !builder)#newDocument ()))) in ();
            (Obj.magic ((Obj.magic !document)))
        with e -> begin
            (Obj.magic ((Obj.magic 0)))
        end)
        end
    

    (* Java overload createDocument(File) is not converted: OCaml has one method per name *)
    

    method toString : 'any1. 'any1 -> string = fun (document) ->
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
    

    method save : 'any1 'any2. 'any1 * 'any2 -> unit = fun (file, document) ->
        let file = Obj.repr file in
        let document = Obj.repr document in
        begin
        (try
            let copyTransformerFactory : Obj.t ref = ref ((Obj.repr (TransformerFactory.newInstance ()))) in ();
            let copyTransformer : Obj.t ref = ref ((Obj.repr ((Obj.magic !copyTransformerFactory)#newTransformer ()))) in ();
            let domSource : Obj.t ref = ref ((Obj.repr (new DOMSource.dOMSource ((Obj.magic document))))) in ();
            ignore ((Obj.magic file)#createNewFile ());
            let streamResult : Obj.t ref = ref ((Obj.repr (new StreamResult.streamResult ((Obj.magic file))))) in ();
            ignore ((Obj.magic !copyTransformer)#transform ((Obj.magic !domSource), (Obj.magic !streamResult)))
        with e -> begin
            raise e
        end)
        end [@@warning "-20"]
    

    method getChildNodeList : 'any2 'return. string * 'any2 -> 'return = fun ((nodeName : string), nodeList) ->
        let nodeList = Obj.repr nodeList in
        try
        begin
        let numberOfNodes : int ref = ref (((Obj.magic nodeList)#getLength ())) in ();
        for index = 0 to !numberOfNodes - 1 do
            let node : Obj.t ref = ref ((Obj.repr ((Obj.magic nodeList)#item (index)))) in ();
            if ((((Obj.magic !node)#getNodeName ())#compareTo (nodeName)) == 0) then begin
                raise (Java_return (Obj.repr (((Obj.magic !node)#getChildNodes ()))))
            end
        done;
        raise (Failure ((nodeName ^ " Node Not Found")))
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method getChildrenWithoutTextNodes : 'any2. string * 'any2 -> BasicArrayList.basicArrayList = fun ((nodeName : string), nodeList) ->
        let nodeList = Obj.repr nodeList in
        begin
        let list : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let childNodeList : Obj.t ref = ref ((Obj.repr (self#getChildNodeList (nodeName, (Obj.magic nodeList))))) in ();
        let numberOfChildren : int ref = ref (((Obj.magic !childNodeList)#getLength ())) in ();
        for index = 0 to !numberOfChildren - 1 do
            let node : Obj.t ref = ref ((Obj.repr ((Obj.magic !childNodeList)#item (index)))) in ();
            if ((Obj.repr ((Obj.magic !node)#getNodeType ())) != (Obj.repr (Node.get_tEXT_NODE ()))) then begin
                ignore (!list#add ((Obj.magic !node)))
            end
        done;
        (!list :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]
    

    method getWithoutTextNodes : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (nodeList) ->
        let nodeList = Obj.repr nodeList in
        begin
        let list : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let numberOfChildren : int ref = ref (((Obj.magic nodeList)#getLength ())) in ();
        for index = 0 to !numberOfChildren - 1 do
            let node : Obj.t ref = ref ((Obj.repr ((Obj.magic nodeList)#item (index)))) in ();
            if ((Obj.repr ((Obj.magic !node)#getNodeType ())) != (Obj.repr (Node.get_tEXT_NODE ()))) then begin
                ignore (!list#add ((Obj.magic !node)))
            end
        done;
        (!list :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]
    

    method searchNodeList : 'any2 'return. string * 'any2 -> 'return = fun ((nodeName : string), nodeList) ->
        let nodeList = Obj.repr nodeList in
        try
        begin
        let numberOfNodes : int ref = ref (((Obj.magic nodeList)#getLength ())) in ();
        for index = 0 to !numberOfNodes - 1 do
            let node : Obj.t ref = ref ((Obj.repr ((Obj.magic nodeList)#item (index)))) in ();
            ignore ((Obj.magic logUtil)#putF (("NodeName: " ^ java_string_of (Obj.repr (((Obj.magic !node)#getNodeName ())))), self, "searchNodeList"));
            if ((((Obj.magic !node)#getNodeName ())#compareTo (nodeName)) == 0) then begin
                raise (Java_return (Obj.repr ((Obj.magic !node))))
            end
        done;
        raise (Failure ((nodeName ^ " Node Not Found in search")))
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    (* Java overload searchNodeList(String, BasicArrayList) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "DomHelper" (fun arguments -> Obj.repr (new domHelper (Obj.obj arguments)))

let instance = (new domHelper ())
let get_instance () = instance
let () = java_register_static "DomHelper.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "DomHelper.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


