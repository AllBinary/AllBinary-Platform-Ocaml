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
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)


let rec getFirstChildElement : 'any1 'return. 'any1 -> 'return = fun (parentNode) ->
        let parentNode = Obj.repr parentNode in
        begin
        let node : Obj.t ref = ref ((Obj.repr ((Obj.magic parentNode)#getFirstChild ()))) in ();
        if (((Obj.magic !node) != (Obj.magic 0)) && ((Obj.repr ((Obj.magic !node)#getNodeType ())) != (Obj.repr (Node.get_eLEMENT_NODE ())))) then begin
            let nodeList : Obj.t ref = ref ((Obj.repr ((Obj.magic parentNode)#getChildNodes ()))) in ();
            for index = 0 to ((Obj.magic !nodeList)#getLength ()) - 1 do
                node := Obj.repr (((Obj.magic !nodeList)#item (index)));
                if (((Obj.magic !node)#getNodeType ()) == 1) then begin
                    raise Java_break
                end
            done
        end;
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]

and getTextNodeValue : 'any1. 'any1 -> string = fun (node) ->
        let node = Obj.repr node in
        try
        begin
        let nodeTextNode : Obj.t ref = ref ((Obj.repr ((Obj.magic node)#getFirstChild ()))) in ();
        if ((Obj.magic !nodeTextNode) != (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr (((Obj.magic !nodeTextNode)#getNodeValue ()))))
        end else begin
            raise (Java_return (Obj.repr ((StringUtil.getInstance ())#eMPTY_STRING)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

(* Java overload getTextNodeValue(String, NodeList) is not converted: OCaml has one method per name *)

and getTextNodesValue : 'any1. 'any1 -> string = fun (node) ->
        let node = Obj.repr node in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let nodeList : Obj.t ref = ref ((Obj.repr ((Obj.magic node)#getChildNodes ()))) in ();
        for index = 0 to ((Obj.magic !nodeList)#getLength ()) - 1 do
            let nodeTextNode : Obj.t ref = ref ((Obj.repr ((Obj.magic !nodeList)#item (index)))) in ();
            if ((Obj.repr ((Obj.magic !nodeTextNode)#getNodeType ())) == (Obj.repr (Node.get_tEXT_NODE ()))) then begin
                if ((Obj.magic !nodeTextNode) != (Obj.magic 0)) then begin
                    ignore (!stringBuffer#append (((Obj.magic !nodeTextNode)#getNodeValue ())))
                end
            end
        done;
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-20"]

let () = java_register_static "DomNodeHelper.getFirstChildElement" (fun arguments -> Obj.repr (getFirstChildElement (Obj.obj arguments)))
let () = java_register_static "DomNodeHelper.getTextNodeValue" (fun arguments -> Obj.repr (getTextNodeValue (Obj.obj arguments)))
let () = java_register_static "DomNodeHelper.getTextNodesValue" (fun arguments -> Obj.repr (getTextNodesValue (Obj.obj arguments)))
class domNodeHelper () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "DomNodeHelper" (fun arguments -> Obj.repr (new domNodeHelper (Obj.obj arguments)))


