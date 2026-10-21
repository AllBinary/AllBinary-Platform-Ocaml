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
(* package org.allbinary.logic.visual.transform.template.customizer.widgets.logo *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.http.request.HttpRequestUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.validate.Validation *)
(* import org.allbinary.logic.io.file.FileData *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.apache.commons.fileupload.FileItem *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class logoValidation () =
  object (self)
    inherit Validation.validation ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable logoFileItem : Obj.t = Obj.repr 0
    method logoFileItem : 'r. 'r = Obj.magic logoFileItem
    method set_logoFileItem : 'v. 'v -> unit = fun value' -> logoFileItem <- Obj.repr value'
    val mutable logoAbPath : AbPath.abPath = (Obj.magic 0)
    method logoAbPath = logoAbPath
    method set_logoAbPath value' = logoAbPath <- value'
    val mutable logoFile : string = ""
    method logoFile = logoFile
    method set_logoFile value' = logoFile <- value'
    val mutable isFile : bool = false
    method isFile = isFile
    method set_isFile value' = isFile <- value'
    
    
    
    

    method getFormData ((hashMap : java_hash_map)) : unit =
        begin
        logoFileItem <- Obj.repr ((Obj.magic (hashMap#get ((LogoData.getInstance ())#iMAGE))));
        logoAbPath <- (new AbPath.abPath ((Obj.magic (hashMap#get ((LogoData.getInstance ())#iMAGEPATH))), (StringUtil.getInstance ())#eMPTY_STRING));
        if ((Obj.magic logoFileItem) != (Obj.magic 0)) then begin
            logoFile <- ((HttpRequestUtil.getInstance ())#generateFileName (((Obj.magic logoFileItem)#getName ())))
        end;
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("HashMap: "));
            ignore (!stringBuffer#append ((java_string_of (Obj.repr hashMap))));
            ignore (!stringBuffer#append ("\nLogoFileName: "));
            ignore (!stringBuffer#append (logoFile));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "getFormData()"))
        end
        end [@@warning "-7"]
    

    method isValid () : bool =
        try
        begin
        (try
            let valid : bool ref = ref (true) in ();
            let fileData : FileData.fileData ref = ref (((FileData.getInstance ()) :> FileData.fileData)) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF ("LogoValidation", self, commonStrings#iS_VALID))
            end;
            if (not ((StringValidationUtil.getInstance ())#isValidRequired ((java_string_of (Obj.repr logoAbPath)), 0, 512))) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    ignore ((Obj.magic logUtil)#putF (("logoPath is invalid: " ^ (java_string_of (Obj.repr logoAbPath))), self, commonStrings#iS_VALID))
                end;
                raise (Java_return (Obj.repr (false)))
            end;
            if (not ((StringValidationUtil.getInstance ())#isValidRequired (logoFile, !fileData#mINLEN, !fileData#mAXLEN))) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    ignore ((Obj.magic logUtil)#putF (("logoFile is invalid: " ^ logoFile), self, commonStrings#iS_VALID))
                end;
                raise (Java_return (Obj.repr (false)))
            end;
            if isFile then begin
                if ((Obj.magic logoFileItem) == (Obj.magic 0)) then begin
                    raise (Java_return (Obj.repr (false)))
                end;
                if ((((Obj.magic logoFileItem)#getSize ()) > !fileData#mAXIMAGEFILESIZE) || (((Obj.magic logoFileItem)#getSize ()) < !fileData#mINIMAGEFILESIZE)) then begin
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                        ignore ((Obj.magic logUtil)#putF (((("Image File Is Not The Right Size. " ^ java_string_of (Obj.repr (!fileData#mINIMAGEFILESIZE))) ^ "< > ") ^ java_string_of (Obj.repr (!fileData#mAXIMAGEFILESIZE))), self, commonStrings#iS_VALID))
                    end;
                    raise (Java_return (Obj.repr (false)))
                end
            end;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF (("Logo Validation: " ^ java_string_of (Obj.repr (!valid))), self, commonStrings#iS_VALID))
            end;
            !valid
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to validate form", self, commonStrings#iS_VALID, e))
            end;
            false
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method validationInfo () : string =
        begin
        (try
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("Logo is not valid."));
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
    

    method toHashMap () : java_hash_map =
        begin
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put ((LogoData.getInstance ())#iMAGE, !stringUtil#eMPTY_STRING));
        if (logoFile <> (Obj.magic 0)) then begin
            ignore (!hashMap#put ((LogoData.getInstance ())#iMAGEPATH, (java_string_of (Obj.repr logoAbPath))));
            ignore (!hashMap#put ((LogoData.getInstance ())#iMAGEFILENAME, logoFile))
        end else begin
            ignore (!hashMap#put ((LogoData.getInstance ())#iMAGEPATH, (Obj.magic 0)));
            ignore (!hashMap#put ((LogoData.getInstance ())#iMAGEFILENAME, logoFile))
        end;
        (!hashMap :> java_hash_map)
        end [@@warning "-7"]
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let hashMap : java_hash_map ref = ref (((self#toHashMap ()) :> java_hash_map)) in ();
        (Obj.magic ((ModDomHelper.createNameValueNodes ((Obj.magic document), (LogoData.getInstance ())#nAME, !hashMap))))
        end [@@warning "-7-20"]
    

    method processLogoFile () : unit =
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("Processing logoFile: "));
            ignore (!stringBuffer#append ((java_string_of (Obj.repr logoAbPath))));
            ignore (!stringBuffer#append (logoFile));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "processLogoFile()"))
        end;
        ignore ((new LogoImageFileUtil.logoImageFileUtil (logoAbPath, logoFile))#saveFiles ((Obj.magic logoFileItem)))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        logoFileItem <- (Obj.repr (Obj.magic 0));
        ();
        ();
        ();
        ();
        isFile <- false;
        logoAbPath <- (Obj.magic 0);
        logoFile <- (Obj.magic 0)
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "LogoValidation" (fun arguments -> Obj.repr (new logoValidation (Obj.obj arguments)))


