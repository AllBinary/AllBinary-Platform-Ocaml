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
(* package org.allbinary.logic.visual.dhtml.style *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.data.tree.dom.document.XmlDocumentHelper *)
(* import org.allbinary.logic.communication.http.request.NameSpaceRequestParamData *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.visual.dhtml.style.css.CssElementData *)
(* import org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)


(* Java overload getInstance(HashMap) is not converted: OCaml has one method per name *)
class stylesValidationFactory () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    (* Java overload getInstance(Document) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "StylesValidationFactory" (fun arguments -> Obj.repr (new stylesValidationFactory (Obj.obj arguments)))

let instance = (new stylesValidationFactory ())
let get_instance () = instance
let () = java_register_static "StylesValidationFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "StylesValidationFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


