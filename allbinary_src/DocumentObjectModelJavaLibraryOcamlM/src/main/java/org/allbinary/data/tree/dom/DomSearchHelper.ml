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
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)


let getNodeNoThrow : 'any2 'return. string * 'any2 -> 'return = fun ((nodeName : string), nodeList) ->
        let nodeList = Obj.repr nodeList in
        try
        begin
        let numberOfNodes : int ref = ref (((Obj.magic nodeList)#getLength ())) in ();
        for index = 0 to !numberOfNodes - 1 do
            let node : Obj.t ref = ref ((Obj.repr ((Obj.magic nodeList)#item (index)))) in ();
            if ((((Obj.magic !node)#getNodeName ())#compareTo (nodeName)) == 0) then begin
                raise (Java_return (Obj.repr ((Obj.magic !node))))
            end
        done;
        (Obj.magic ((Obj.magic 0)))
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

and getAllNodesNoThrow : 'any2. string * 'any2 -> BasicArrayList.basicArrayList = fun ((nodeName : string), nodeList) ->
        let nodeList = Obj.repr nodeList in
        begin
        let nodeVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let numberOfNodes : int ref = ref (((Obj.magic nodeList)#getLength ())) in ();
        for index = 0 to !numberOfNodes - 1 do
            let node : Obj.t ref = ref ((Obj.repr ((Obj.magic nodeList)#item (index)))) in ();
            if ((((Obj.magic !node)#getNodeName ())#compareTo (nodeName)) == 0) then begin
                ignore (!nodeVector#add ((Obj.magic !node)))
            end
        done;
        (!nodeVector :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]

let () = java_register_static "DomSearchHelper.getNodeNoThrow" (fun arguments -> Obj.repr (getNodeNoThrow (Obj.obj arguments)))
let () = java_register_static "DomSearchHelper.getAllNodesNoThrow" (fun arguments -> Obj.repr (getAllNodesNoThrow (Obj.obj arguments)))
class domSearchHelper () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "DomSearchHelper" (fun arguments -> Obj.repr (new domSearchHelper (Obj.obj arguments)))

let rec getNode : 'any2 'return. string * 'any2 -> 'return = fun ((nodeName : string), nodeList) ->
        let nodeList = Obj.repr nodeList in
        try
        begin
        let node : Obj.t ref = ref ((Obj.repr (getNodeNoThrow (nodeName, (Obj.magic nodeList))))) in ();
        if ((Obj.magic !node) != (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr ((Obj.magic !node))))
        end else begin
            raise (Failure ((nodeName ^ " Node Not Found in search")))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

and getChildNodeList : 'any2 'return. string * 'any2 -> 'return = fun ((nodeName : string), nodeList) ->
        let nodeList = Obj.repr nodeList in
        begin
        let node : Obj.t ref = ref ((Obj.repr (getNode (nodeName, (Obj.magic nodeList))))) in ();
        (Obj.magic (((Obj.magic !node)#getChildNodes ())))
        end [@@warning "-20"]

and getAllNodes : 'any2. string * 'any2 -> BasicArrayList.basicArrayList = fun ((nodeName : string), nodeList) ->
        let nodeList = Obj.repr nodeList in
        try
        begin
        let vector : BasicArrayList.basicArrayList ref = ref (((getAllNodesNoThrow (nodeName, (Obj.magic nodeList))) :> BasicArrayList.basicArrayList)) in ();
        if (!vector == (Obj.magic 0)) then begin
            raise (Failure ((nodeName ^ " Node Not Found in search")))
        end else begin
            raise (Java_return (Obj.repr (!vector)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
let () = java_register_static "DomSearchHelper.getNode" (fun arguments -> Obj.repr (getNode (Obj.obj arguments)))
let () = java_register_static "DomSearchHelper.getChildNodeList" (fun arguments -> Obj.repr (getChildNodeList (Obj.obj arguments)))
let () = java_register_static "DomSearchHelper.getAllNodes" (fun arguments -> Obj.repr (getAllNodes (Obj.obj arguments)))


