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
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class cssPropertyView ((name : string)) =
  object
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable cssProperty : CssProperty.cssProperty = (Obj.magic 0)
    method cssProperty = cssProperty
    method set_cssProperty value' = cssProperty <- value'
    
    
    

    method getProperty () : CssProperty.cssProperty =
        begin
        (cssProperty :> CssProperty.cssProperty)
        end
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        (Obj.magic ((cssProperty#toXmlNode ((Obj.magic document)))))
        end [@@warning "-20"]

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        cssProperty <- (new CssProperty.cssProperty (name))
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "CssPropertyView" (fun arguments -> Obj.repr (new cssPropertyView (Obj.obj arguments)))


