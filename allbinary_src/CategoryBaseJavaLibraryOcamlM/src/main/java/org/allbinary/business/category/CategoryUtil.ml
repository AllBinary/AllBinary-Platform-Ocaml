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
(* package org.allbinary.business.category *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.apache.commons.lang3.StringUtils *)
(* import org.w3c.dom.Attr *)
(* import org.w3c.dom.NamedNodeMap *)
(* import org.w3c.dom.Node *)


let getPathLevel : 'any1. 'any1 -> int = fun (categoryPath) ->
        let categoryPath = Obj.repr categoryPath in
        begin
        let count : int ref = ref ((StringUtils.countMatches ((java_string_of (Obj.repr (Obj.magic categoryPath))), (Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR))) in ();
        !count
        end [@@warning "-20"]

and getNameFromNode : 'any1. 'any1 -> string = fun (node) ->
        let node = Obj.repr node in
        try
        begin
        let attributes : Obj.t ref = ref ((Obj.repr ((Obj.magic node)#getAttributes ()))) in ();
        let attrNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !attributes)#getNamedItem ((CategoryData.getInstance ())#lABEL))))) in ();
        if ((Obj.magic !attrNode) != (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr (((Obj.magic !attrNode)#getValue ()))))
        end else begin
            let labelNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNodeNoThrow ((CategoryData.getInstance ())#lABEL, ((Obj.magic node)#getChildNodes ()))))) in ();
            if ((Obj.magic !labelNode) != (Obj.magic 0)) then begin
                raise (Java_return (Obj.repr ((DomNodeHelper.getTextNodeValue ((Obj.magic !labelNode))))))
            end
        end;
        (StringUtil.getInstance ())#eMPTY_STRING
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

let () = java_register_static "CategoryUtil.getPathLevel" (fun arguments -> Obj.repr (getPathLevel (Obj.obj arguments)))
let () = java_register_static "CategoryUtil.getNameFromNode" (fun arguments -> Obj.repr (getNameFromNode (Obj.obj arguments)))
class categoryUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "CategoryUtil" (fun arguments -> Obj.repr (new categoryUtil (Obj.obj arguments)))


