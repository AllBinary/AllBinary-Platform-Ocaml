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
(* package org.allbinary.logic.visual.dhtml.style.css *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.control.validate.ValidationInterface *)
(* import org.w3c.dom.Node *)


let getInstance : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (cssElementStyleNodeList) ->
        let cssElementStyleNodeList = Obj.repr cssElementStyleNodeList in
        begin
        let styles : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref (((Obj.magic cssElementStyleNodeList)#size ())) in ();
        let cssElementStyleNode : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let cssValidationInterface : ValidationInterface.validationInterface ref = ref (((Obj.magic 0) :> ValidationInterface.validationInterface)) in ();
        for index = 0 to !size - 1 do
            cssElementStyleNode := Obj.repr ((Obj.magic ((Obj.magic cssElementStyleNodeList)#get (index))));
            cssValidationInterface := (Obj.magic (Obj.magic (java_call_static "CssElementValidationFactory.getInstance" (Obj.repr ((Obj.magic !cssElementStyleNode))))));
            ignore (!styles#add (!cssValidationInterface))
        done;
        (!styles :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]

(* Java overload getInstance(HashMap) is not converted: OCaml has one method per name *)

let () = java_register_static "CssElementsValidationFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class cssElementsValidationFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "CssElementsValidationFactory" (fun arguments -> Obj.repr (new cssElementsValidationFactory (Obj.obj arguments)))


