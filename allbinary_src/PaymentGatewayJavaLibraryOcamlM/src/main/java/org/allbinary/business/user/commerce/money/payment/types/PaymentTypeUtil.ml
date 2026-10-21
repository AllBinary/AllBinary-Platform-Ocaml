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
(* package org.allbinary.business.user.commerce.money.payment.types *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData *)
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.globals.FREEBLISKET_PATH_GLOBALS *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.crypt.file.CryptFileReader *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

class paymentTypeUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable pAYMENTGATEWAYFILEPATHSTRING : string = ""
    method pAYMENTGATEWAYFILEPATHSTRING = pAYMENTGATEWAYFILEPATHSTRING
    method set_pAYMENTGATEWAYFILEPATHSTRING value' = pAYMENTGATEWAYFILEPATHSTRING <- value'
    val mutable sHIPPINGMETHODSFILENAME : string = ""
    method sHIPPINGMETHODSFILENAME = sHIPPINGMETHODSFILENAME
    method set_sHIPPINGMETHODSFILENAME value' = sHIPPINGMETHODSFILENAME <- value'
    val mutable defaultName : string = ""
    method defaultName = defaultName
    method set_defaultName value' = defaultName <- value'
    val mutable paymentTypeVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method paymentTypeVector = paymentTypeVector
    method set_paymentTypeVector value' = paymentTypeVector <- value'
    
    

    method add : 'any1. 'any1 -> unit = fun (paymentType) ->
        let paymentType = Obj.repr paymentType in
        begin
        ignore (paymentTypeVector#add ((Obj.magic paymentType)))
        end [@@warning "-20"]
    

    method get : 'return. string -> 'return = fun ((paymentTypeString : string)) ->
        try
        begin
        let size : int ref = ref ((paymentTypeVector#size ())) in ();
        for i = 0 to !size - 1 do
            let paymentType : Obj.t ref = ref ((Obj.repr (Obj.magic (paymentTypeVector#get (i))))) in ();
            if (((((Obj.magic !paymentType)#getBasicPaymentType ())#getName ())#compareTo (paymentTypeString)) == 0) then begin
                raise (Java_return (Obj.repr ((Obj.magic !paymentType))))
            end
        done;
        raise (Failure (("Unknown PaymentType: " ^ paymentTypeString)))
        end
        with Java_return value -> Obj.obj value
    

    method initDefault ((storeName : string)) : unit =
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#pAYMENT)) then begin
            ignore ((Obj.magic logUtil)#putF (("initDefault Payment: " ^ defaultName), self, "initDefault"))
        end;
        if ((StringValidationUtil.getInstance ())#isEmpty (defaultName)) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ((URLGLOBALS.getMainPath ())));
            ignore (!stringBuffer#append ((FREEBLISKET_PATH_GLOBALS.getInstance ())#xSLPATH));
            ignore (!stringBuffer#append (storeName));
            ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR));
            ignore (!stringBuffer#append (pAYMENTGATEWAYFILEPATHSTRING));
            let abPath : AbPath.abPath ref = ref (((Obj.magic (new AbPath.abPath ((java_string_of (Obj.repr !stringBuffer)), sHIPPINGMETHODSFILENAME))) :> AbPath.abPath)) in ();
            let data : string ref = ref (((Obj.obj (java_new "CryptFileReader" (Obj.repr ((TransformInfoObjectConfigData.getInstance ())#uNCRYPTED_EXTENSION, (TransformInfoObjectConfigData.getInstance ())#eNCRYPTED_EXTENSION))))#get (!abPath))) in ();
            let document : Obj.t ref = ref ((Obj.repr (DomDocumentHelper.create (!data)))) in ();
            let nodeList : Obj.t ref = ref ((Obj.repr ((Obj.magic !document)#getElementsByTagName ((PaymentGatewaysData.get_nAME ()))))) in ();
            for index = 0 to ((Obj.magic !nodeList)#getLength ()) - 1 do
                let node : Obj.t ref = ref ((Obj.repr ((Obj.magic !nodeList)#item (index)))) in ();
                let defaultPaymentGatewayNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode ((EntryData.getInstance ())#dEFAULT, ((Obj.magic !node)#getChildNodes ()))))) in ();
                let defaultPaymentGatewayNodeValue : string ref = ref ((DomNodeHelper.getTextNodeValue ((Obj.magic !defaultPaymentGatewayNode)))) in ();
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#pAYMENT)) then begin
                    ignore ((Obj.magic logUtil)#putF (("DefaultPaymentGatewayNodeValue: " ^ !defaultPaymentGatewayNodeValue), self, "initDefault"))
                end;
                if (not ((StringValidationUtil.getInstance ())#isEmpty (!defaultPaymentGatewayNodeValue))) then begin
                    defaultName <- !defaultPaymentGatewayNodeValue
                end
            done
        end
        end
    

    method getDefault : 'return. string -> 'return = fun ((storeName : string)) ->
        try
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#pAYMENT)) then begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "getDefault"))
        end;
        (self#initDefault (storeName));
        if (not ((StringValidationUtil.getInstance ())#isEmpty (defaultName))) then begin
            raise (Java_return (Obj.repr ((self#get (defaultName)))))
        end;
        raise (Failure (("No Default: " ^ defaultName)))
        end
        with Java_return value -> Obj.obj value
    

    method isContain : 'any1. 'any1 -> bool = fun (paymentType) ->
        let paymentType = Obj.repr paymentType in
        begin
        (paymentTypeVector#contains ((Obj.magic paymentType)))
        end [@@warning "-20"]
    

    method difference : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (a_PaymentTypeVector) ->
        let a_PaymentTypeVector = Obj.repr a_PaymentTypeVector in
        begin
        let diff : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((paymentTypeVector#size ())) in ();
        for i = 0 to !size - 1 do
            let paymentType : Obj.t ref = ref ((Obj.repr (Obj.magic (paymentTypeVector#get (i))))) in ();
            if (not ((Obj.magic a_PaymentTypeVector)#contains ((Obj.magic !paymentType)))) then begin
                ignore (!diff#add ((Obj.magic !paymentType)))
            end
        done;
        (!diff :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        sHIPPINGMETHODSFILENAME <- "paymentGatewayTypes.xml";
        defaultName <- (Obj.magic 0);
        paymentTypeVector <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let sep : string ref = ref ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR) in ();
        ignore (!stringBuffer#append (!sep));
        ignore (!stringBuffer#append ("generic"));
        ignore (!stringBuffer#append (!sep));
        ignore (!stringBuffer#append ("user"));
        ignore (!stringBuffer#append (!sep));
        ignore (!stringBuffer#append ("commerce"));
        ignore (!stringBuffer#append (!sep));
        ignore (!stringBuffer#append ("money"));
        ignore (!stringBuffer#append (!sep));
        ignore (!stringBuffer#append ("payment"));
        ignore (!stringBuffer#append (!sep));
        ignore (!stringBuffer#append ("gateway"));
        ignore (!stringBuffer#append (!sep));
        pAYMENTGATEWAYFILEPATHSTRING <- (java_string_of (Obj.repr !stringBuffer))
      end
  end [@@warning "-20"]
let () = java_register_constructor "PaymentTypeUtil" (fun arguments -> Obj.repr (new paymentTypeUtil (Obj.obj arguments)))

let instance = (new paymentTypeUtil ())
let get_instance () = instance
let () = java_register_static "PaymentTypeUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PaymentTypeUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))

let () =
        begin
        ()
        end


