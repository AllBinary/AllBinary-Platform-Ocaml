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
(* package org.allbinary.business.user.password *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import java.util.Random *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.user.UserData *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.crypt.SuperCrypt *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.string.CommonStrings *)

class password ((password_arg : string)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable password : string = ""
    method password = password
    method set_password value' = password <- value'
    
    

    method set ((value : string)) : unit =
        begin
        password <- value
        end
    

    method get () : string =
        begin
        password
        end
    

    method isValid () : bool =
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        (try
            let valid : bool ref = ref (true) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vALIDATION)) then begin
                ignore ((Obj.magic logUtil)#putF (("Password: " ^ password), self, !commonStrings#iS_VALID))
            end;
            if (not ((StringValidationUtil.getInstance ())#isValidRequired (password, 6, (UserData.get_mAXLEN ())))) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vALIDATION)) then begin
                    ignore ((Obj.magic logUtil)#putF ("Password is invalid", self, !commonStrings#iS_VALID))
                end;
                valid := false
            end;
            !valid
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vALIDATIONERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to validate form", "Password", !commonStrings#iS_VALID, e))
            end;
            false
        end)
        end
    

    method getValidationInfo () : string =
        try
        begin
        if (not ((StringValidationUtil.getInstance ())#isValidRequired (password, 6, (UserData.get_mAXLEN ())))) then begin
            raise (Java_return (Obj.repr ("Please enter a Password with more than 6 characters.<br />")))
        end;
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        !stringUtil#eMPTY_STRING
        end
        with Java_return value -> Obj.obj value
    

    method toVector ((secret : string)) : BasicArrayList.basicArrayList =
        begin
        password <- ((StringUtil.getInstance ())#getNonNull (password));
        let random : int ref = ref (((Obj.obj (java_new "Random" (Obj.repr ())))#nextInt ((Obj.magic (java_call_static "SuperCrypt.get_kEYMAX" (Obj.repr ())))))) in ();
        let vector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!vector#add ((java_string_of (Obj.repr (Obj.obj (java_new "Integer" (Obj.repr (!random))))))));
        ignore (!vector#add (secret));
        ignore (!vector#add (((Obj.obj (java_new "SuperCrypt" (Obj.repr (!random))))#encrypt (password))));
        (!vector :> BasicArrayList.basicArrayList)
        end
    

    method toHashMap ((secret : string)) : java_hash_map =
        begin
        password <- ((StringUtil.getInstance ())#getNonNull (password));
        let values : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        let random : int ref = ref (((Obj.obj (java_new "Random" (Obj.repr ())))#nextInt ((Obj.magic (java_call_static "SuperCrypt.get_kEYMAX" (Obj.repr ())))))) in ();
        ignore (!values#put ((EntryData.getInstance ())#eNCRYPTION, (java_string_of (Obj.repr (Obj.obj (java_new "Integer" (Obj.repr (!random))))))));
        ignore (!values#put ((UserData.get_sECRET ()), secret));
        ignore (!values#put ((UserData.get_pASSWORD ()), ((Obj.obj (java_new "SuperCrypt" (Obj.repr (!random))))#encrypt (password))));
        (!values :> java_hash_map)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        password <- password_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "Password" (fun arguments -> Obj.repr (new password (Obj.obj arguments)))


