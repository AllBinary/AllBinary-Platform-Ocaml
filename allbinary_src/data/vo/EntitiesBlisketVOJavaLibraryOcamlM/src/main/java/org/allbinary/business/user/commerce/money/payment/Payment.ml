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
(* package org.allbinary.business.user.commerce.money.payment *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import javax.servlet.ServletRequest *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.control.crypt.SuperCrypt *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class payment () =
  object (self)
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable expiration : string = ""
    method expiration = expiration
    method set_expiration value' = expiration <- value'
    val mutable encryption : string = ""
    method encryption = encryption
    method set_encryption value' = encryption <- value'
    val mutable number : string = ""
    method number = number
    method set_number value' = number <- value'
    val mutable id : string = ""
    method id = id
    method set_id value' = id <- value'
    val mutable type_ : string = ""
    method type_ = type_
    method set_type_ value' = type_ <- value'
    val mutable tenderType : string = ""
    method tenderType = tenderType
    method set_tenderType value' = tenderType <- value'
    val mutable transactionType : string = ""
    method transactionType = transactionType
    method set_transactionType value' = transactionType <- value'
    val mutable aba : string = ""
    method aba = aba
    method set_aba value' = aba <- value'
    val mutable account : string = ""
    method account = account
    method set_account value' = account <- value'
    val mutable accountType : string = ""
    method accountType = accountType
    method set_accountType value' = accountType <- value'
    val mutable authorizationCode : string = ""
    method authorizationCode = authorizationCode
    method set_authorizationCode value' = authorizationCode <- value'
    val mutable checkNumber : string = ""
    method checkNumber = checkNumber
    method set_checkNumber value' = checkNumber <- value'
    val mutable checkType : string = ""
    method checkType = checkType
    method set_checkType value' = checkType <- value'
    val mutable driversLicense : string = ""
    method driversLicense = driversLicense
    method set_driversLicense value' = driversLicense <- value'
    val mutable magneticInkCheckReader : string = ""
    method magneticInkCheckReader = magneticInkCheckReader
    method set_magneticInkCheckReader value' = magneticInkCheckReader <- value'
    val mutable isDefault : bool = false
    method isDefault = isDefault
    method set_isDefault value' = isDefault <- value'
    
    
    
    

    method isValid () : bool =
        try
        begin
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        let aFalse : bool ref = ref (false) in ();
        if ((name = (Obj.magic 0)) || ((String.compare name (!stringUtil#eMPTY_STRING)) == 0)) then begin
            raise (Java_return (Obj.repr (!aFalse)))
        end;
        if ((type_ = (Obj.magic 0)) || ((String.compare type_ (!stringUtil#eMPTY_STRING)) == 0)) then begin
            raise (Java_return (Obj.repr (!aFalse)))
        end;
        if ((expiration = (Obj.magic 0)) || ((String.compare expiration (!stringUtil#eMPTY_STRING)) == 0)) then begin
            raise (Java_return (Obj.repr (!aFalse)))
        end;
        if ((number = (Obj.magic 0)) || ((String.compare number (!stringUtil#eMPTY_STRING)) == 0)) then begin
            raise (Java_return (Obj.repr (!aFalse)))
        end;
        if ((String.length number) > (org.get_allbinary ())#business#user#commerce#money#payment#types#creditCardType#mAXLEN) then begin
            raise (Java_return (Obj.repr (!aFalse)))
        end;
        true
        end
        with Java_return value -> Obj.obj value
    

    method setTenderType ((value : string)) : unit =
        begin
        tenderType <- value
        end
    

    method setTransactionType ((value : string)) : unit =
        begin
        transactionType <- value
        end
    

    method setAuthorizationCode ((value : string)) : unit =
        begin
        authorizationCode <- value
        end
    

    method setCheckType ((value : string)) : unit =
        begin
        checkType <- value
        end
    

    method setCheckNumber ((value : string)) : unit =
        begin
        checkNumber <- value
        end
    

    method setDriversLicense ((value : string)) : unit =
        begin
        driversLicense <- value
        end
    

    method setMagneticInkCheckReader ((value : string)) : unit =
        begin
        magneticInkCheckReader <- value
        end
    

    method setAba ((value : string)) : unit =
        begin
        aba <- value
        end
    

    method setAccountType ((value : string)) : unit =
        begin
        accountType <- value
        end
    

    method setName ((value : string)) : unit =
        begin
        name <- value
        end
    

    method setType ((value : string)) : unit =
        begin
        type_ <- value
        end
    

    method setExpiration ((value : string)) : unit =
        begin
        expiration <- value
        end
    

    method setNumber ((value : string)) : unit =
        begin
        number <- value
        end
    

    method getId () : string =
        begin
        id
        end
    

    method getName () : string =
        begin
        name
        end
    

    method getType () : string =
        begin
        type_
        end
    

    method getExpiration () : string =
        begin
        expiration
        end
    

    method getEncryption () : string =
        begin
        encryption
        end
    

    method getNumber () : string =
        begin
        number
        end
    

    method getTenderType () : string =
        begin
        tenderType
        end
    

    method getTransactionType () : string =
        begin
        transactionType
        end
    

    method getAba () : string =
        begin
        aba
        end
    

    method getAccount () : string =
        begin
        account
        end
    

    method getAccountType () : string =
        begin
        accountType
        end
    

    method getAuthorizationCode () : string =
        begin
        authorizationCode
        end
    

    method getCheckNumber () : string =
        begin
        checkNumber
        end
    

    method getCheckType () : string =
        begin
        checkType
        end
    

    method getDriversLicense () : string =
        begin
        driversLicense
        end
    

    method getMagneticInkCheckReader () : string =
        begin
        magneticInkCheckReader
        end
    

    method getLastFour () : string =
        try
        begin
        if (((String.length number) > (PaymentData.get_mIN ())) && ((String.length number) <= (PaymentData.get_mAX ()))) then begin
            raise (Java_return (Obj.repr ((String.sub number (((String.length number) - 4)) (String.length number - (((String.length number) - 4)))))))
        end else begin
            raise (Java_return (Obj.repr ("Invalid #")))
        end
        end
        with Java_return value -> Obj.obj value
    

    method isDefault () : bool =
        begin
        isDefault
        end
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put ((PaymentData.get_nAME ()), name));
        ignore (!hashMap#put ((PaymentData.get_tYPE ()), type_));
        ignore (!hashMap#put ((PaymentData.get_eXPIRATION ()), expiration));
        ignore (!hashMap#put ((PaymentData.get_nUMBER ()), (self#getLastFour ())));
        ignore (!hashMap#put ((PaymentData.get_tENDERTYPE ()), tenderType));
        ignore (!hashMap#put ((PaymentData.get_tRANSACTIONTYPE ()), transactionType));
        ignore (!hashMap#put ((PaymentData.get_aBA ()), aba));
        ignore (!hashMap#put ((PaymentData.get_aCCOUNT ()), account));
        ignore (!hashMap#put ((PaymentData.get_aCCOUNTTYPE ()), accountType));
        ignore (!hashMap#put ((PaymentData.get_aUTHORIZATIONCODE ()), authorizationCode));
        ignore (!hashMap#put ((PaymentData.get_cHECKNUMBER ()), checkNumber));
        ignore (!hashMap#put ((PaymentData.get_dRIVERSLICENSE ()), driversLicense));
        ignore (!hashMap#put ((PaymentData.get_mAGNETICINKCHECKREADER ()), magneticInkCheckReader));
        if isDefault then begin
            ignore (!hashMap#put ((EntryData.getInstance ())#dEFAULT, (EntryData.getInstance ())#dEFAULT))
        end else begin
            ignore (!hashMap#put ((EntryData.getInstance ())#dEFAULT, (StringUtil.getInstance ())#eMPTY_STRING))
        end;
        (!hashMap :> java_hash_map)
        end
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let hashMap : java_hash_map ref = ref (((self#toHashMap ()) :> java_hash_map)) in ();
        let node : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNameValueNodes ((Obj.magic document), (PaymentData.get_pAYMENT ()), !hashMap)))) in ();
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]
    

    method toXmlDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end
    

    method view () : string =
        begin
        (Obj.magic 0)
        end
    

    method toValidationInfoDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end
    

    method toValidationInfoNode : 'any1 'return. 'any1 -> 'return = fun (_document) ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-20"]
    

    method validationInfo () : string =
        begin
        (Obj.magic 0)
        end

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        isDefault <- false;
        ();
        ()
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "Payment" (fun arguments -> Obj.repr (new payment (Obj.obj arguments)))


