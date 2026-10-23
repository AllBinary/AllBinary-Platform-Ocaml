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
(* package org.allbinary.logic.visual.transform.template.customizer.hedges.heading *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.validate.Validation *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData *)
(* import org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoValidation *)
(* import org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData *)
(* import org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

class headingValidation () =
  object (self)
    inherit Validation.validation ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable title : TitleValidation.titleValidation = (Obj.magic 0)
    method title = title
    method set_title value' = title <- value'
    val mutable logo : LogoValidation.logoValidation = (Obj.magic 0)
    method logo = logo
    method set_logo value' = logo <- value'
    
    
    
    

    method getFormData ((hashMap : java_hash_map)) : unit =
        begin
        title <- (new TitleValidation.titleValidation (hashMap));
        logo <- (new LogoValidation.logoValidation (hashMap))
        end [@@warning "-7"]
    

    method isValid () : bool =
        begin
        (try
            let valid : bool ref = ref (true) in ();
            let titleValid : bool ref = ref (true) in ();
            let logoValid : bool ref = ref (true) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sTART, self, (self#commonStrings)#iS_VALID))
            end;
            if (not ((title#isValid ())#booleanValue ())) then begin
                titleValid := false
            end;
            if (not ((logo#isValid ())#booleanValue ())) then begin
                logoValid := false
            end else begin
                ignore (logo#processLogoFile ())
            end;
            if ((not !titleValid) && (not !logoValid)) then begin
                valid := false
            end;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF (("HeadingValidation: " ^ java_string_of (Obj.repr (!valid))), self, (self#commonStrings)#iS_VALID))
            end;
            !valid
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to validate form", self, (self#commonStrings)#iS_VALID, e))
            end;
            false
        end)
        end [@@warning "-7"]
    

    method validationInfo () : string =
        begin
        (try
            let valid : bool ref = ref (true) in ();
            let titleValid : bool ref = ref (true) in ();
            let logoValid : bool ref = ref (true) in ();
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            if (not ((title#isValid ())#booleanValue ())) then begin
                titleValid := false
            end;
            if (not ((logo#isValid ())#booleanValue ())) then begin
                logoValid := false
            end;
            if ((not !titleValid) && (not !logoValid)) then begin
                valid := false
            end;
            if (not !valid) then begin
                ignore (!stringBuffer#append ("Include a title and/or logo for the header."))
            end;
            (java_string_of (Obj.repr !stringBuffer))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
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
        let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((HeadingData.get_nAME ()))))) in ();
        ignore ((Obj.magic !node)#appendChild ((logo#toXmlNode ((Obj.magic document)))));
        ignore ((Obj.magic !node)#appendChild ((title#toXmlNode ((Obj.magic document)))));
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        title <- (new TitleValidation.titleValidation ());
        logo <- (new LogoValidation.logoValidation ())
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "HeadingValidation" (fun arguments -> Obj.repr (new headingValidation (Obj.obj arguments)))


