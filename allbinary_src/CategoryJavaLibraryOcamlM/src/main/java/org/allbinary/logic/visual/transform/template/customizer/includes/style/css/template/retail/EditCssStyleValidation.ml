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
(* package org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.logic.control.validate.ValidationInterface *)
(* import org.allbinary.logic.visual.dhtml.style.StyleData *)
(* import org.allbinary.logic.visual.dhtml.style.StylesData *)
(* import org.allbinary.logic.visual.dhtml.style.color.ColorsView *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class editCssStyleValidation () =
  object
    inherit CssStyleValidation.cssStyleValidation () as super
    
    
    
    

    method isValid () : bool =
        begin
        (super#isValid ())
        end [@@warning "-7"]
    

    method validationInfo () : string =
        begin
        (super#validationInfo ())
        end [@@warning "-7"]
    

    method toValidationInfoDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-7"]
    

    method toValidationInfoNode : 'any1 'return. 'any1 -> 'return = fun (_document) ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-7-20"]
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((StylesData.getInstance ())#nAME)))) in ();
        let styleNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((StyleData.getInstance ())#nAME)))) in ();
        ignore ((Obj.magic !node)#appendChild ((Obj.magic !styleNode)));
        ignore ((Obj.magic !styleNode)#appendChild (((new ColorsView.colorsView ())#toXmlNode ((Obj.magic document)))));
        let size : int ref = ref ((cssStyleElementVector#size ())) in ();
        for i = 0 to !size - 1 do
            let styleDomNodeInterface : DomNodeInterface.domNodeInterface ref = ref (((Obj.magic (cssStyleElementVector#get (i))) :> DomNodeInterface.domNodeInterface)) in ();
            ignore ((Obj.magic !styleNode)#appendChild ((!styleDomNodeInterface#toXmlNode ((Obj.magic document)))))
        done;
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ()
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "EditCssStyleValidation" (fun arguments -> Obj.repr (new editCssStyleValidation (Obj.obj arguments)))


