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
(* package org.allbinary.logic.visual.dhtml.style.css.property *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.control.validate.ValidationInterface *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)


let getInstance : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (nodeList) ->
        let nodeList = Obj.repr nodeList in
        begin
        let propertiesVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        for index = 0 to ((Obj.magic nodeList)#getLength ()) - 1 do
            let node : Obj.t ref = ref ((Obj.repr ((Obj.magic nodeList)#item (index)))) in ();
            if ((((Obj.magic !node)#getNodeName ())#compareTo ((CssPropertyData.getInstance ())#nAME)) == 0) then begin
                let cssPropertyValidationInterface : ValidationInterface.validationInterface ref = ref (((Obj.magic (CssPropertyValidationFactory.getInstance ((Obj.magic !node)))) :> ValidationInterface.validationInterface)) in ();
                ignore (!propertiesVector#add (!cssPropertyValidationInterface))
            end
        done;
        (!propertiesVector :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]

(* Java overload getInstance(HashMap) is not converted: OCaml has one method per name *)

let () = java_register_static "CssPropertiesValidationFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class cssPropertiesValidationFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "CssPropertiesValidationFactory" (fun arguments -> Obj.repr (new cssPropertiesValidationFactory (Obj.obj arguments)))


