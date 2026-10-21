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
(* package org.allbinary.business.user.address *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import java.util.Set *)
(* import javax.servlet.http.HttpServletRequest *)
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class streetAddress () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable id : string = ""
    method id = id
    method set_id value' = id <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable street : string = ""
    method street = street
    method set_street value' = street <- value'
    val mutable city : string = ""
    method city = city
    method set_city value' = city <- value'
    val mutable state : string = ""
    method state = state
    method set_state value' = state <- value'
    val mutable code : string = ""
    method code = code
    method set_code value' = code <- value'
    val mutable country : string = ""
    method country = country
    method set_country value' = country <- value'
    val mutable isDefault : bool = false
    method isDefault = isDefault
    method set_isDefault value' = isDefault <- value'
    
    
    
    
    
    
    

    method log () : unit =
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
            ignore ((Obj.magic logUtil)#putF (("Created Address: \n" ^ java_string_of (Obj.repr ((self#toHashMap ())))), self, "log"))
        end
        end
    

    method setId ((id_arg : string)) : unit =
        begin
        id <- id_arg
        end
    

    method setName ((name_arg : string)) : unit =
        begin
        name <- name_arg
        end
    

    method setStreet ((value : string)) : unit =
        begin
        street <- value
        end
    

    method setCity ((value : string)) : unit =
        begin
        city <- value
        end
    

    method setState ((value : string)) : unit =
        begin
        state <- value
        end
    

    method setCode ((value : string)) : unit =
        begin
        code <- value
        end
    

    method setCountry ((value : string)) : unit =
        begin
        country <- value
        end
    

    method getName () : string =
        begin
        name
        end
    

    method getStreet () : string =
        begin
        street
        end
    

    method getCity () : string =
        begin
        city
        end
    

    method getState () : string =
        begin
        state
        end
    

    method getCode () : string =
        begin
        code
        end
    

    method getCountry () : string =
        begin
        country
        end
    

    method getId () : string =
        begin
        id
        end
    

    method isDefault () : bool =
        begin
        isDefault
        end
    

    method isEmpty () : bool =
        try
        begin
        let eMPTY_STRING : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
        if (((((((((((((self#getName ()) = (Obj.magic 0)) && (((self#getName ())#compareTo (!eMPTY_STRING)) == 0)) && ((self#getStreet ()) == (Obj.magic 0))) && (((self#getStreet ())#compareTo (!eMPTY_STRING)) == 0)) && ((self#getCity ()) == (Obj.magic 0))) && (((self#getCity ())#compareTo (!eMPTY_STRING)) == 0)) && ((self#getState ()) == (Obj.magic 0))) && (((self#getState ())#compareTo (!eMPTY_STRING)) == 0)) && ((self#getCode ()) == (Obj.magic 0))) && (((self#getCode ())#compareTo (!eMPTY_STRING)) == 0)) && ((self#getCountry ()) == (Obj.magic 0))) && (((self#getCountry ())#compareTo (!eMPTY_STRING)) == 0)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value
    

    method isValid () : bool =
        try
        begin
        let eMPTY_STRING : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
        if (((((((((((((self#getName ()) = (Obj.magic 0)) || (((self#getName ())#compareTo (!eMPTY_STRING)) == 0)) || ((self#getStreet ()) == (Obj.magic 0))) || (((self#getStreet ())#compareTo (!eMPTY_STRING)) == 0)) || ((self#getCity ()) == (Obj.magic 0))) || (((self#getCity ())#compareTo (!eMPTY_STRING)) == 0)) || ((self#getState ()) == (Obj.magic 0))) || (((self#getState ())#compareTo (!eMPTY_STRING)) == 0)) || ((self#getCode ()) == (Obj.magic 0))) || (((self#getCode ())#compareTo (!eMPTY_STRING)) == 0)) || ((self#getCountry ()) == (Obj.magic 0))) || (((self#getCountry ())#compareTo (!eMPTY_STRING)) == 0)) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        true
        end
        with Java_return value -> Obj.obj value
    

    method validationInfo () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("Address Failed To Validate - All fields must contain data.<br></br>"));
        let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
        if (not (!stringValidationUtil#isValidRequired ((self#getName ()), (StreetAddressData.get_mIN ()), (StreetAddressData.get_mAX ())))) then begin
            ignore (!stringBuffer#append ("Please enter a valid name"));
            ignore (!stringBuffer#append ("<br></br>"))
        end;
        if (not (!stringValidationUtil#isValidRequired ((self#getStreet ()), (StreetAddressData.get_mIN ()), (StreetAddressData.get_mAX ())))) then begin
            ignore (!stringBuffer#append ("Please enter a valid street"));
            ignore (!stringBuffer#append ("<br></br>"))
        end;
        if (not (!stringValidationUtil#isValidRequired ((self#getCity ()), (StreetAddressData.get_mIN ()), (StreetAddressData.get_mAX ())))) then begin
            ignore (!stringBuffer#append ("Please enter a valid city"));
            ignore (!stringBuffer#append ("<br></br>"))
        end;
        if (not (!stringValidationUtil#isValidRequired ((self#getState ()), (StreetAddressData.get_mIN ()), (StreetAddressData.get_mAX ())))) then begin
            ignore (!stringBuffer#append ("Please enter a valid state"));
            ignore (!stringBuffer#append ("<br></br>"))
        end;
        if (not (!stringValidationUtil#isValidRequired ((self#getCode ()), (StreetAddressData.get_mIN ()), (StreetAddressData.get_mAX ())))) then begin
            ignore (!stringBuffer#append ("Please enter a valid zipcode"));
            ignore (!stringBuffer#append ("<br></br>"))
        end;
        if (not (!stringValidationUtil#isValidRequired ((self#getCountry ()), (StreetAddressData.get_mIN ()), (StreetAddressData.get_mAX ())))) then begin
            ignore (!stringBuffer#append ("Please enter a valid country"));
            ignore (!stringBuffer#append ("<br></br>"))
        end;
        (java_string_of (Obj.repr !stringBuffer))
        end
    

    method toValidationInfoDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end
    

    method toValidationInfoNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        (try
            let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((StreetAddressData.get_fORM ()))))) in ();
            ignore ((Obj.magic !node)#appendChild ((self#toXmlNode ((Obj.magic document)))));
            (Obj.magic ((Obj.magic !node)))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
                ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, "toValidationInfoNode", e))
            end;
            (Obj.magic ((Obj.magic 0)))
        end)
        end [@@warning "-20"]
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put ((StreetAddressData.get_iD ()), id));
        ignore (!hashMap#put ((StreetAddressData.get_nAME ()), name));
        ignore (!hashMap#put ((StreetAddressData.get_sTREET ()), street));
        ignore (!hashMap#put ((StreetAddressData.get_cITY ()), city));
        ignore (!hashMap#put ((StreetAddressData.get_sTATE ()), state));
        ignore (!hashMap#put ((StreetAddressData.get_cODE ()), code));
        ignore (!hashMap#put ((StreetAddressData.get_cOUNTRY ()), country));
        (!hashMap :> java_hash_map)
        end
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        let hashMap : java_hash_map ref = ref (((self#toHashMap ()) :> java_hash_map)) in ();
        let keySet : Obj.t ref = ref ((Obj.repr (!hashMap#keySet ()))) in ();
        let keyArray : Obj.t array ref = ref (((Obj.magic !keySet)#toArray ())) in ();
        let size : int ref = ref ((Array.length !keyArray)) in ();
        let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((StreetAddressData.get_aDDRESS ()))))) in ();
        for i = 0 to !size - 1 do
            let name_arg : string ref = ref ((Obj.magic !keyArray.(i))) in ();
            let value : string ref = ref ((!stringUtil#getNonNull ((Obj.magic (!hashMap#get (!name_arg)))))) in ();
            ignore ((Obj.magic !node)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), !name_arg, !value))))
        done;
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
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
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "StreetAddress" (fun arguments -> Obj.repr (new streetAddress (Obj.obj arguments)))


