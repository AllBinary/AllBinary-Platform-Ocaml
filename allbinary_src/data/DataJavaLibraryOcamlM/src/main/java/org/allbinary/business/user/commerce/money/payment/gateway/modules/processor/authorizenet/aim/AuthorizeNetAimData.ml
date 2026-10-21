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
(* package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim *)

open Allbinary_java [@@warning "-33"]

let x_DELIM_DATA : string = "x_delim_data"
let get_x_DELIM_DATA () = x_DELIM_DATA
let () = java_register_static "AuthorizeNetAimData.get_x_DELIM_DATA" (fun _ -> Obj.repr (get_x_DELIM_DATA ()))
let x_DELIM_CHAR : string = "x_delim_char"
let get_x_DELIM_CHAR () = x_DELIM_CHAR
let () = java_register_static "AuthorizeNetAimData.get_x_DELIM_CHAR" (fun _ -> Obj.repr (get_x_DELIM_CHAR ()))
let x_ENCAP_CHAR : string = "x_encap_char"
let get_x_ENCAP_CHAR () = x_ENCAP_CHAR
let () = java_register_static "AuthorizeNetAimData.get_x_ENCAP_CHAR" (fun _ -> Obj.repr (get_x_ENCAP_CHAR ()))
let x_AUTHENTICATION_INDICATOR : string = "x_authentication_indicator"
let get_x_AUTHENTICATION_INDICATOR () = x_AUTHENTICATION_INDICATOR
let () = java_register_static "AuthorizeNetAimData.get_x_AUTHENTICATION_INDICATOR" (fun _ -> Obj.repr (get_x_AUTHENTICATION_INDICATOR ()))
let x_CARDHOLDER_AUTHENTICATION_VALUE : string = "x_cardholder_authentication_value"
let get_x_CARDHOLDER_AUTHENTICATION_VALUE () = x_CARDHOLDER_AUTHENTICATION_VALUE
let () = java_register_static "AuthorizeNetAimData.get_x_CARDHOLDER_AUTHENTICATION_VALUE" (fun _ -> Obj.repr (get_x_CARDHOLDER_AUTHENTICATION_VALUE ()))
let x_DRIVERS_LICENSE_NUM : string = "x_drivers_license_num"
let get_x_DRIVERS_LICENSE_NUM () = x_DRIVERS_LICENSE_NUM
let () = java_register_static "AuthorizeNetAimData.get_x_DRIVERS_LICENSE_NUM" (fun _ -> Obj.repr (get_x_DRIVERS_LICENSE_NUM ()))
let x_DRIVERS_LICENSE_STATE : string = "x_drivers_license_state"
let get_x_DRIVERS_LICENSE_STATE () = x_DRIVERS_LICENSE_STATE
let () = java_register_static "AuthorizeNetAimData.get_x_DRIVERS_LICENSE_STATE" (fun _ -> Obj.repr (get_x_DRIVERS_LICENSE_STATE ()))
let x_DRIVERS_LICENSE_DOB : string = "x_drivers_license_dob"
let get_x_DRIVERS_LICENSE_DOB () = x_DRIVERS_LICENSE_DOB
let () = java_register_static "AuthorizeNetAimData.get_x_DRIVERS_LICENSE_DOB" (fun _ -> Obj.repr (get_x_DRIVERS_LICENSE_DOB ()))
class authorizeNetAimData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "AuthorizeNetAimData" (fun arguments -> Obj.repr (new authorizeNetAimData (Obj.obj arguments)))


