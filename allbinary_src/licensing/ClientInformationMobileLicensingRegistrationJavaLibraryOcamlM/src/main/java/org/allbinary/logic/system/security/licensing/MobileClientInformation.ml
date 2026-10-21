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
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.ABHashtable *)

let dESC : string = "Mobile"
let get_dESC () = dESC
let () = java_register_static "MobileClientInformation.get_dESC" (fun _ -> Obj.repr (get_dESC ()))
let aNDROID_DESC : string = ("Android" ^ java_string_of (Obj.repr (dESC)))
let get_aNDROID_DESC () = aNDROID_DESC
let () = java_register_static "MobileClientInformation.get_aNDROID_DESC" (fun _ -> Obj.repr (get_aNDROID_DESC ()))
class mobileClientInformation ((name : string), (version : string), (specialName : string), (shortName : string)) =
  object (self)
    inherit AbeClientInformation.abeClientInformation (name, version, (java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (specialName))#append ((CommonSeps.getInstance ())#sPACE))#append (((PartnerIdentifierFileUtil.getInstance ())#get ()))))), shortName) as super
    
    

    method toHashtable : 'return. unit -> 'return = fun () ->
        begin
        let hashtable : Obj.t ref = ref ((Obj.repr (super#toHashtable ()))) in ();
        let registrationConfiguration : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "RegistrationConfiguration.getInstance" (Obj.repr ()))))) in ();
        ignore ((Obj.magic !hashtable)#put ((Obj.magic !registrationConfiguration)#nAME, ((Obj.magic !registrationConfiguration)#getRegistrationCode ())));
        (Obj.magic ((Obj.magic !hashtable)))
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        let string : string ref = ref ((self#getSpecialName ())) in ();
        let number : string ref = ref ((String.sub !string (((String.length !string) - 1)) (String.length !string - (((String.length !string) - 1))))) in ();
        if ((Obj.magic (java_call_static "Integer.getInteger" (Obj.repr (!number)))) == (Obj.magic 0)) then begin
            ignore (self#setHardSale (false))
        end;
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        if (self#isHardSale ()) then begin
            ignore (logUtil#putF ("Use Hard Coded Selling", self, !commonStrings#cONSTRUCTOR))
        end else begin
            ignore (logUtil#putF ("Don't Use Hard Coded Selling", self, !commonStrings#cONSTRUCTOR))
        end
      end
  end
let () = java_register_constructor "MobileClientInformation" (fun arguments -> Obj.repr (new mobileClientInformation (Obj.obj arguments)))


