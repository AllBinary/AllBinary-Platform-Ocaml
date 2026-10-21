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
(* package org.allbinary.logic.system.security.licensing *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)


let hasRequiredKeys : 'any1. 'any1 -> bool = fun (resultHashtable) ->
        let resultHashtable = Obj.repr resultHashtable in
        try
        begin
        let abeClientInformationData : AbeClientInformationData.abeClientInformationData ref = ref (((AbeClientInformationData.getInstance ()) :> AbeClientInformationData.abeClientInformationData)) in ();
        if (((((Obj.magic resultHashtable)#containsKey (!abeClientInformationData#lICENSEID)) && ((Obj.magic resultHashtable)#containsKey (!abeClientInformationData#lICENSESERVERS))) && ((Obj.magic resultHashtable)#containsKey (!abeClientInformationData#kEY))) && ((Obj.magic resultHashtable)#containsKey (!abeClientInformationData#lICENSE_TYPE))) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

let () = java_register_static "AbeClientLicense.hasRequiredKeys" (fun arguments -> Obj.repr (hasRequiredKeys (Obj.obj arguments)))
class abeClientLicense (hashtable_arg) =
  object (self)
    val mutable hashtable : Obj.t = Obj.repr 0
    method hashtable : 'r. 'r = Obj.magic hashtable
    method set_hashtable : 'v. 'v -> unit = fun value' -> hashtable <- Obj.repr value'
    val mutable id : string = ""
    method id = id
    method set_id value' = id <- value'
    val mutable servers : BasicArrayList.basicArrayList = (Obj.magic 0)
    method servers = servers
    method set_servers value' = servers <- value'
    val mutable special : string = ""
    method special = special
    method set_special value' = special <- value'
    val mutable licenseType : LicenseType.licenseType = (Obj.magic 0)
    method licenseType = licenseType
    method set_licenseType value' = licenseType <- value'
    
    

    method hasKey () : bool =
        begin
        (self#isValid ())
        end
    

    method getKey ((keyName : string)) : string =
        begin
        (Obj.magic ((Obj.magic hashtable)#get (keyName)))
        end
    

    method getLicenseId () : string =
        begin
        id
        end
    

    method getServers () : BasicArrayList.basicArrayList =
        begin
        (servers :> BasicArrayList.basicArrayList)
        end
    

    method isValid () : bool =
        try
        begin
        let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
        if (not (!stringValidationUtil#isEmpty ((self#getKey ((AbeClientInformationData.getInstance ())#kEY))))) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let bREAK : string ref = ref ("<br/>") in ();
        ignore (!stringBuffer#append ("License Id: "));
        ignore (!stringBuffer#append ((self#getLicenseId ())));
        ignore (!stringBuffer#append (!bREAK));
        ignore (!stringBuffer#append ("Is Valid: "));
        ignore (!stringBuffer#appendboolean ((self#isValid ())));
        ignore (!stringBuffer#append (!bREAK));
        ignore (!stringBuffer#append ("Keys: "));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (Obj.magic hashtable)))));
        ignore (!stringBuffer#append (!bREAK));
        let serverVector : BasicArrayList.basicArrayList ref = ref (((self#getServers ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!serverVector#size ())) in ();
        for index = 0 to !size - 1 do
            let nextServerString : string ref = ref ((Obj.magic (!serverVector#get (index)))) in ();
            ignore (!stringBuffer#append ("Server: "));
            ignore (!stringBuffer#append (!nextServerString));
            ignore (!stringBuffer#append (!bREAK))
        done;
        (java_string_of (Obj.repr !stringBuffer))
        end
    

    method setSpecial ((special_arg : string)) : unit =
        begin
        special <- special_arg
        end
    

    method getSpecial () : string =
        begin
        special
        end
    

    method getLicenseType () : LicenseType.licenseType =
        begin
        (licenseType :> LicenseType.licenseType)
        end

    initializer
      begin
        ();
        ();
        ();
        special <- "";
        ();
        ();
        hashtable <- Obj.repr (((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()));
        let abeClientInformationData : AbeClientInformationData.abeClientInformationData ref = ref (((AbeClientInformationData.getInstance ()) :> AbeClientInformationData.abeClientInformationData)) in ();
        let keyValue : Obj.t ref = ref ((Obj.repr (hashtable_arg#get (!abeClientInformationData#kEY)))) in ();
        if (!keyValue != (Obj.magic 0)) then begin
            if (java_instanceof (Obj.repr !keyValue) "String") then begin
                ignore ((Obj.magic hashtable)#put (!abeClientInformationData#kEY, !keyValue))
            end
        end;
        id <- (Obj.magic (hashtable_arg#get (!abeClientInformationData#lICENSEID)));
        let vector : BasicArrayList.basicArrayList ref = ref (((Obj.magic (hashtable_arg#get (!abeClientInformationData#lICENSESERVERS))) :> BasicArrayList.basicArrayList)) in ();
        servers <- (new BasicArrayListD.basicArrayListD ());
        let size : int ref = ref ((!vector#size ())) in ();
        for index = 0 to !size - 1 do
            ignore (servers#add ((!vector#get (index))))
        done;
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        (self#setSpecial ((!stringUtil#getNonNull ((Obj.magic (hashtable_arg#get (!abeClientInformationData#sPECIAL)))))));
        let licenseTypeString : string ref = ref ((!stringUtil#getNonNull ((Obj.magic (hashtable_arg#get (!abeClientInformationData#lICENSE_TYPE)))))) in ();
        licenseType <- ((LicenseTypeFactory.getInstance ())#getInstance (!licenseTypeString))
      end
  end [@@warning "-20"]
let () = java_register_constructor "AbeClientLicense" (fun arguments -> Obj.repr (new abeClientLicense (Obj.obj arguments)))


