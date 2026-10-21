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
(* package org.allbinary.logic.communication.smtp.configuration.server *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)

class emailServerConfiguration () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable accountName : string = ""
    method accountName = accountName
    method set_accountName value' = accountName <- value'
    val mutable password : string = ""
    method password = password
    method set_password value' = password <- value'
    val mutable smtpServer : string = ""
    method smtpServer = smtpServer
    method set_smtpServer value' = smtpServer <- value'
    
    
    
    

    method setSmtpServer ((value : string)) : unit =
        begin
        smtpServer <- value
        end
    

    method getSmtpServer () : string =
        begin
        smtpServer
        end
    

    method getAccountName () : string =
        begin
        accountName
        end
    

    method setAccountName ((accountName_arg : string)) : unit =
        begin
        accountName <- accountName_arg
        end
    

    method getPassword () : string =
        begin
        password
        end
    

    method setPassword ((password_arg : string)) : unit =
        begin
        password <- password_arg
        end
    

    method log () : unit =
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGING)) then begin
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr self)), self, "EmailServerConfiguration"))
        end
        end
    

    method toString () : string =
        begin
        (((((("Email Server Configuration:\n" ^ "Smtp Server: \n") ^ java_string_of (Obj.repr ((self#getSmtpServer ())))) ^ "\nAccount Name: ") ^ java_string_of (Obj.repr ((self#getAccountName ())))) ^ "\nPassword: ") ^ java_string_of (Obj.repr ((self#getPassword ()))))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        accountName <- "";
        password <- "";
        smtpServer <- "";
        ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGING)) then begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#putF (!commonStrings#sTART, self, !commonStrings#cONSTRUCTOR))
        end;
        (self#setSmtpServer ((StringUtil.getInstance ())#eMPTY_STRING))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "EmailServerConfiguration" (fun arguments -> Obj.repr (new emailServerConfiguration (Obj.obj arguments)))


