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
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.validate.Validation *)
(* import org.allbinary.logic.control.validate.ValidationInterface *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.visual.dhtml.style.StyleData *)
(* import org.allbinary.logic.visual.dhtml.style.StylesData *)
(* import org.allbinary.logic.visual.dhtml.style.StylesValidationFactory *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class cssStyleValidation () =
  object (self)
    inherit Validation.validation ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable cssStyleElementVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method cssStyleElementVector = cssStyleElementVector
    method set_cssStyleElementVector value' = cssStyleElementVector <- value'
    
    
    
    

    method isValid () : bool =
        begin
        (try
            let isValid : bool ref = ref (true) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#iS_VALID))
            end;
            let size : int ref = ref ((cssStyleElementVector#size ())) in ();
            for i = 0 to !size - 1 do
                let styleValidationInterface : ValidationInterface.validationInterface ref = ref (((Obj.magic (cssStyleElementVector#get (i))) :> ValidationInterface.validationInterface)) in ();
                if (not ((!styleValidationInterface#isValid ())#booleanValue ())) then begin
                    isValid := false
                end
            done;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF (("End: " ^ java_string_of (Obj.repr (!isValid))), self, commonStrings#iS_VALID))
            end;
            !isValid
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to validate form", self, commonStrings#iS_VALID, e))
            end;
            false
        end)
        end [@@warning "-7"]
    

    method validationInfo () : string =
        begin
        (try
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            (java_string_of (Obj.repr !stringBuffer))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to generate validation error info", self, "validationInfo()", e))
            end;
            "Error Validating Form"
        end)
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
        let size : int ref = ref ((cssStyleElementVector#size ())) in ();
        for i = 0 to !size - 1 do
            let styleDomNodeInterface : DomNodeInterface.domNodeInterface ref = ref (((Obj.magic (cssStyleElementVector#get (i))) :> DomNodeInterface.domNodeInterface)) in ();
            ignore ((Obj.magic !styleNode)#appendChild ((!styleDomNodeInterface#toXmlNode ((Obj.magic document)))))
        done;
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        cssStyleElementVector <- (new BasicArrayListD.basicArrayListD ())
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "CssStyleValidation" (fun arguments -> Obj.repr (new cssStyleValidation (Obj.obj arguments)))


