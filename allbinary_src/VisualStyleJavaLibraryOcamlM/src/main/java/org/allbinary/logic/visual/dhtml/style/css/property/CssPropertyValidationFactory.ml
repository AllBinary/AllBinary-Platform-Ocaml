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
(* import org.allbinary.logic.control.validate.ValidationInterface *)
(* import org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyValidation *)
(* import org.w3c.dom.Node *)


let getInstance : 'any1. 'any1 -> ValidationInterface.validationInterface = fun (node) ->
        let node = Obj.repr node in
        begin
        ((Obj.magic (new FontFamilyValidation.fontFamilyValidation ((Obj.magic node)))) :> ValidationInterface.validationInterface)
        end [@@warning "-20"]

let () = java_register_static "CssPropertyValidationFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class cssPropertyValidationFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "CssPropertyValidationFactory" (fun arguments -> Obj.repr (new cssPropertyValidationFactory (Obj.obj arguments)))


