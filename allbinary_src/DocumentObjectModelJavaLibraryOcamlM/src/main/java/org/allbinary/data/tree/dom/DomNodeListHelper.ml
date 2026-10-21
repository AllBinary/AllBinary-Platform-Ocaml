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
(* import org.allbinary.logic.StdUtil *)
(* import org.w3c.dom.NodeList *)


let getVector : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (nodeList) ->
        let nodeList = Obj.repr nodeList in
        begin
        let vector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref (((Obj.magic nodeList)#getLength ())) in ();
        for index = 0 to !size - 1 do
            ignore (!vector#add ((DomNodeHelper.getTextNodeValue (((Obj.magic nodeList)#item (index))))))
        done;
        (!vector :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]

let () = java_register_static "DomNodeListHelper.getVector" (fun arguments -> Obj.repr (getVector (Obj.obj arguments)))
class domNodeListHelper () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "DomNodeListHelper" (fun arguments -> Obj.repr (new domNodeListHelper (Obj.obj arguments)))


