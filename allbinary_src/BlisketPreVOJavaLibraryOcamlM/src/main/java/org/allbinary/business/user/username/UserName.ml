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
(* package org.allbinary.business.user.username *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.business.user.UserData *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.string.CommonStrings *)


let getValidationInfo ((aUserName : string)) : string =
        try
        begin
        if (not ((StringValidationUtil.getInstance ())#isValidRequired (aUserName, 5, (UserData.get_mAXLEN ())))) then begin
            raise (Java_return (Obj.repr ("Please enter a User Name with more than 5 characters.<br/>")))
        end;
        (StringUtil.getInstance ())#eMPTY_STRING
        end
        with Java_return value -> Obj.obj value

let () = java_register_static "UserName.getValidationInfo" (fun arguments -> Obj.repr (getValidationInfo (Obj.obj arguments)))
class userName () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable userName : string = ""
    method userName = userName
    method set_userName value' = userName <- value'
    
    
    

    method isValid () : bool =
        begin
        (try
            (self#isValid (userName))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to validate form", self, "isUserNameValid()", e))
            end;
            false
        end)
        end
    

    method get () : string =
        begin
        userName
        end
    

    (* Java overload isValid(String) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ()
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "UserName" (fun arguments -> Obj.repr (new userName (Obj.obj arguments)))

let instance = (new userName ())
let get_instance () = instance
let () = java_register_static "UserName.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "UserName.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


