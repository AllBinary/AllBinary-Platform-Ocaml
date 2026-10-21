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
(* package org.allbinary.business.user.commerce.money.tax.modules *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.user.address.StreetAddress *)
(* import org.allbinary.business.user.address.StreetAddressData *)
(* import org.allbinary.business.user.commerce.money.tax.components.TaxData *)
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.data.tree.dom.document.XmlDocumentHelper *)
(* import org.allbinary.globals.FREEBLISKET_PATH_GLOBALS *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.crypt.file.CryptFileReader *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData *)
(* import org.allbinary.string.CommonPhoneStrings *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

class simpleStateTaxModule () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable streetAddress : StreetAddress.streetAddress = (Obj.magic 0)
    method streetAddress = streetAddress
    method set_streetAddress value' = streetAddress <- value'
    val mutable storeFrontInterface : StoreFrontInterface.storeFrontInterface = (Obj.magic 0)
    method storeFrontInterface = storeFrontInterface
    method set_storeFrontInterface value' = storeFrontInterface <- value'
    val mutable aLL : string = ""
    method aLL = aLL
    method set_aLL value' = aLL <- value'
    val mutable sTATETAXPATH : string = ""
    method sTATETAXPATH = sTATETAXPATH
    method set_sTATETAXPATH value' = sTATETAXPATH <- value'
    val mutable sTATETAXFILE : string = ""
    method sTATETAXFILE = sTATETAXFILE
    method set_sTATETAXFILE value' = sTATETAXFILE <- value'
    val mutable document : Obj.t = Obj.repr 0
    method document : 'r. 'r = Obj.magic document
    method set_document : 'v. 'v -> unit = fun value' -> document <- Obj.repr value'
    
    

    method getTaxRate : 'any1 'any2. 'any1 * 'any2 -> float = fun (streetAddress_arg, storeFrontInterface_arg) ->
        let streetAddress_arg = Obj.repr streetAddress_arg in
        let storeFrontInterface_arg = Obj.repr storeFrontInterface_arg in
        try
        begin
        streetAddress <- (Obj.magic streetAddress_arg);
        storeFrontInterface <- (Obj.magic storeFrontInterface_arg);
        let fileAbPath : AbPath.abPath ref = ref (((new AbPath.abPath (((java_string_of (Obj.repr (((URLGLOBALS.getMainPath ()) + (FREEBLISKET_PATH_GLOBALS.getInstance ())#xSLPATH))) ^ (storeFrontInterface#getName ())) ^ sTATETAXPATH), sTATETAXFILE)) :> AbPath.abPath)) in ();
        let data : string ref = ref (((Obj.obj (java_new "CryptFileReader" (Obj.repr ((TransformInfoObjectConfigData.getInstance ())#uNCRYPTED_EXTENSION, (TransformInfoObjectConfigData.getInstance ())#eNCRYPTED_EXTENSION))))#get (!fileAbPath))) in ();
        document <- Obj.repr ((DomDocumentHelper.create (!data)));
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAX)) then begin
            ignore ((Obj.magic logUtil)#putF (("Tax Doc: " ^ (XmlDocumentHelper.toString ((Obj.magic document)))), self, "getTaxRate"))
        end;
        let state : string ref = ref ((streetAddress#getState ())) in ();
        let country : string ref = ref ((streetAddress#getCountry ())) in ();
        state := (String.uppercase_ascii !state);
        let nodeList : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#getElementsByTagName ((TaxData.get_nAME ()))))) in ();
        for index = 0 to ((Obj.magic !nodeList)#getLength ()) - 1 do
            let node : Obj.t ref = ref ((Obj.repr ((Obj.magic !nodeList)#item (index)))) in ();
            let taxNodeChildren : Obj.t ref = ref ((Obj.repr ((Obj.magic !node)#getChildNodes ()))) in ();
            let streetAddressNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode ((StreetAddressData.get_nAME ()), (Obj.magic !taxNodeChildren))))) in ();
            let taxableStreetAddress : StreetAddress.streetAddress ref = ref (((new StreetAddress.streetAddress ((Obj.magic !streetAddressNode))) :> StreetAddress.streetAddress)) in ();
            let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
            if (((not (!stringValidationUtil#isEmpty (!country))) && (not (!stringValidationUtil#isEmpty ((!taxableStreetAddress#getCountry ()))))) && ((String.compare !country ((!taxableStreetAddress#getCountry ()))) == 0)) then begin
                if (((!state <> (Obj.magic 0)) && ((!taxableStreetAddress#getState ()) != (Obj.magic 0))) && ((String.compare !state ((!taxableStreetAddress#getState ()))) == 0)) then begin
                    let rateNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode ((TaxData.get_rATE ()), (Obj.magic !taxNodeChildren))))) in ();
                    let taxRate : string ref = ref ((DomNodeHelper.getTextNodeValue ((Obj.magic !rateNode)))) in ();
                    let taxRateFloat : float ref = ref (((!taxRate#floatValue ()) *. .01)) in ();
                    raise (Java_return (Obj.repr (!taxRateFloat)))
                end
            end
        done;
        0
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method isValid : 'any1 'any2. 'any1 * 'any2 -> bool = fun (streetAddress_arg, storeFrontInterface_arg) ->
        let streetAddress_arg = Obj.repr streetAddress_arg in
        let storeFrontInterface_arg = Obj.repr storeFrontInterface_arg in
        try
        begin
        (try
            streetAddress <- (Obj.magic streetAddress_arg);
            storeFrontInterface <- (Obj.magic storeFrontInterface_arg);
            let fileAbPath : AbPath.abPath ref = ref (((new AbPath.abPath (((java_string_of (Obj.repr (((URLGLOBALS.getMainPath ()) + (FREEBLISKET_PATH_GLOBALS.getInstance ())#xSLPATH))) ^ (storeFrontInterface#getName ())) ^ sTATETAXPATH), sTATETAXFILE)) :> AbPath.abPath)) in ();
            let data : string ref = ref (((Obj.obj (java_new "CryptFileReader" (Obj.repr ((TransformInfoObjectConfigData.getInstance ())#uNCRYPTED_EXTENSION, (TransformInfoObjectConfigData.getInstance ())#eNCRYPTED_EXTENSION))))#get (!fileAbPath))) in ();
            document <- Obj.repr ((DomDocumentHelper.create (!data)));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAX)) then begin
                ignore ((Obj.magic logUtil)#putF (("Tax Doc: " ^ (XmlDocumentHelper.toString ((Obj.magic document)))), self, commonStrings#iS_VALID))
            end;
            let country : string ref = ref ((streetAddress#getCountry ())) in ();
            let rootNode : Obj.t ref = ref ((Obj.repr (((Obj.magic document)#getElementsByTagName ((TransformInfoObjectConfigData.getInstance ())#nAME))#item (0)))) in ();
            let nodeList : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#getElementsByTagName ((TaxData.get_nAME ()))))) in ();
            for index = 0 to ((Obj.magic !nodeList)#getLength ()) - 1 do
                let node : Obj.t ref = ref ((Obj.repr ((Obj.magic !nodeList)#item (index)))) in ();
                let taxNodeChildren : Obj.t ref = ref ((Obj.repr ((Obj.magic !node)#getChildNodes ()))) in ();
                let streetAddressNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode ((StreetAddressData.get_nAME ()), (Obj.magic !taxNodeChildren))))) in ();
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAX)) then begin
                    let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                    ignore (!stringBuffer#append ("StreetAddress Node: "));
                    ignore (!stringBuffer#append (((Obj.magic !streetAddressNode)#getNodeName ())));
                    ignore (!stringBuffer#append (" Value: "));
                    ignore (!stringBuffer#append (((Obj.magic !streetAddressNode)#getNodeValue ())));
                    ignore (!stringBuffer#append (" Number Of Children: "));
                    ignore (!stringBuffer#appendint ((java_to_int (Obj.repr ((((Obj.magic !streetAddressNode)#getChildNodes ())#getLength ()))))));
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, commonStrings#iS_VALID))
                end;
                let taxableStreetAddress : StreetAddress.streetAddress ref = ref (((new StreetAddress.streetAddress ((Obj.magic !streetAddressNode))) :> StreetAddress.streetAddress)) in ();
                let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
                if (((not (!stringValidationUtil#isEmpty (!country))) && (not (!stringValidationUtil#isEmpty ((!taxableStreetAddress#getCountry ()))))) && (((!taxableStreetAddress#getCountry ())#compareTo (aLL)) == 0)) then begin
                    raise (Java_return (Obj.repr (true)))
                end;
                if (((not (!stringValidationUtil#isEmpty (!country))) && (not (!stringValidationUtil#isEmpty ((!taxableStreetAddress#getCountry ()))))) && ((String.compare !country ((!taxableStreetAddress#getCountry ()))) == 0)) then begin
                    let state : string ref = ref ((streetAddress#getState ())) in ();
                    if (!state <> (Obj.magic 0)) then begin
                        raise (Java_return (Obj.repr (true)))
                    end
                end
            done;
            false
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to validate", self, commonStrings#iS_VALID, e))
            end;
            false
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        streetAddress <- ((Obj.magic 0) :> StreetAddress.streetAddress);
        storeFrontInterface <- ((Obj.magic 0) :> StoreFrontInterface.storeFrontInterface);
        aLL <- (CommonPhoneStrings.getInstance ())#sTAR;
        sTATETAXPATH <- "/generic/taxes/";
        sTATETAXFILE <- "stateTaxation.xml";
        document <- (Obj.repr (Obj.magic 0));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "SimpleStateTaxModule" (fun arguments -> Obj.repr (new simpleStateTaxModule (Obj.obj arguments)))


