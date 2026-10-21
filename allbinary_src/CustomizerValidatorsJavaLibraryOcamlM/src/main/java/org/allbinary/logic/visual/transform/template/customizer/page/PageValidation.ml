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
(* package org.allbinary.logic.visual.transform.template.customizer.page *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.business.page.PageData *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.validate.Validation *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData *)
(* import org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class pageValidation () =
  object (self)
    inherit Validation.validation ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable title : TitleValidation.titleValidation = (Obj.magic 0)
    method title = title
    method set_title value' = title <- value'
    
    
    
    

    method getFormData ((hashMap : java_hash_map)) : unit =
        begin
        title <- (new TitleValidation.titleValidation (hashMap))
        end [@@warning "-7"]
    

    method isValid () : bool =
        begin
        (try
            let valid : bool ref = ref (true) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF ("PageValidation", self, commonStrings#iS_VALID))
            end;
            if (not ((title#isValid ())#booleanValue ())) then begin
                valid := false
            end;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF (("PageValidation: " ^ java_string_of (Obj.repr (!valid))), self, commonStrings#iS_VALID))
            end;
            !valid
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
            if (not ((title#isValid ())#booleanValue ())) then begin
                ignore (!stringBuffer#append ((title#validationInfo ())))
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
        let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((PageData.getInstance ())#nAME)))) in ();
        ignore ((Obj.magic !node)#appendChild ((title#toXmlNode ((Obj.magic document)))));
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        title <- (new TitleValidation.titleValidation ())
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "PageValidation" (fun arguments -> Obj.repr (new pageValidation (Obj.obj arguments)))


