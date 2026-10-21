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
(* import java.util.HashMap *)
(* import java.util.Set *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.java.anyType.clazz.ClassUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonSeps *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)


let rec createTextNode : 'any1 'return. 'any1 * string * string -> 'return = fun (document, (name : string), (text : string)) ->
        let document = Obj.repr document in
        begin
        let newValueNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement (name)))) in ();
        let newValueTextNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createTextNode (text)))) in ();
        ignore ((Obj.magic !newValueNode)#appendChild ((Obj.magic !newValueTextNode)));
        (Obj.magic ((Obj.magic !newValueNode)))
        end [@@warning "-20"]

(* Java overload createNameValueNodes(Document, String, String) is not converted: OCaml has one method per name *)

(* Java overload createNameValueNodes(Document, String, HashMap) is not converted: OCaml has one method per name *)

(* Java overload createNameValueNodes(Document, Node, HashMap) is not converted: OCaml has one method per name *)

(* Java overload createNameValueNodes(Document, String, String, BasicArrayList) is not converted: OCaml has one method per name *)

(* Java overload createNameValueIndexNodes(Document, String, String, BasicArrayList) is not converted: OCaml has one method per name *)

and createNodeWithValueNodes : 'any1 'return. 'any1 * string * java_hash_map -> 'return = fun (document, (rootNode : string), (hashMap : java_hash_map)) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement (rootNode)))) in ();
        (Obj.magic ((createNodeWithValueNodes ((Obj.magic document), (Obj.magic !node), hashMap))))
        end [@@warning "-20"]

let () = java_register_static "ModDomHelper.createTextNode" (fun arguments -> Obj.repr (createTextNode (Obj.obj arguments)))
let () = java_register_static "ModDomHelper.createNodeWithValueNodes" (fun arguments -> Obj.repr (createNodeWithValueNodes (Obj.obj arguments)))
class modDomHelper () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ModDomHelper" (fun arguments -> Obj.repr (new modDomHelper (Obj.obj arguments)))

let rec createValueNode : 'any1 'return. 'any1 * string -> 'return = fun (document, (text : string)) ->
        let document = Obj.repr document in
        begin
        (Obj.magic ((createTextNode ((Obj.magic document), (DomData.get_vALUE ()), text))))
        end [@@warning "-20"]

and createNameNode : 'any1 'return. 'any1 * string -> 'return = fun (document, (text : string)) ->
        let document = Obj.repr document in
        begin
        (Obj.magic ((createTextNode ((Obj.magic document), (DomData.get_nAME ()), text))))
        end [@@warning "-20"]

and createIndexNode : 'any1 'return. 'any1 * int -> 'return = fun (document, (index : int)) ->
        let document = Obj.repr document in
        begin
        (Obj.magic ((createTextNode ((Obj.magic document), (DomData.get_iNDEX ()), (java_string_of (Obj.repr (Obj.obj (java_new "Integer" (Obj.repr (index))))))))))
        end [@@warning "-20"]

and createNameValueNodes : 'any1 'return. 'any1 * string * string * string -> 'return = fun (document, (elementName : string), (nameText : string), (valueText : string)) ->
        let document = Obj.repr document in
        begin
        let newNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement (elementName)))) in ();
        ignore ((Obj.magic !newNode)#appendChild ((createNameNode ((Obj.magic document), nameText))));
        ignore ((Obj.magic !newNode)#appendChild ((createValueNode ((Obj.magic document), valueText))));
        (Obj.magic ((Obj.magic !newNode)))
        end [@@warning "-20"]

and createNameValueIndexNodes : 'any1 'return. 'any1 * string * int * string -> 'return = fun (document, (elementNameAndNameText : string), (index : int), (valueText : string)) ->
        let document = Obj.repr document in
        begin
        let newNode : Obj.t ref = ref ((Obj.repr (createNameValueNodes ((Obj.magic document), elementNameAndNameText, valueText)))) in ();
        ignore ((Obj.magic !newNode)#appendChild ((createIndexNode ((Obj.magic document), index))));
        (Obj.magic ((Obj.magic !newNode)))
        end [@@warning "-20"]

(* Java overload createNodeWithValueNodes(Document, Node, HashMap) is not converted: OCaml has one method per name *)
let () = java_register_static "ModDomHelper.createValueNode" (fun arguments -> Obj.repr (createValueNode (Obj.obj arguments)))
let () = java_register_static "ModDomHelper.createNameNode" (fun arguments -> Obj.repr (createNameNode (Obj.obj arguments)))
let () = java_register_static "ModDomHelper.createIndexNode" (fun arguments -> Obj.repr (createIndexNode (Obj.obj arguments)))
let () = java_register_static "ModDomHelper.createNameValueNodes" (fun arguments -> Obj.repr (createNameValueNodes (Obj.obj arguments)))
let () = java_register_static "ModDomHelper.createNameValueIndexNodes" (fun arguments -> Obj.repr (createNameValueIndexNodes (Obj.obj arguments)))


