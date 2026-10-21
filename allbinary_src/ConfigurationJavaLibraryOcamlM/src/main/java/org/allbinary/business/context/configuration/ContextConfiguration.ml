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
(* package org.allbinary.business.context.configuration *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration *)
(* import org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface *)
(* import org.allbinary.string.CommonStrings *)

class contextConfiguration () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable emailServerConfigurationInterface : EmailServerConfigurationInterface.emailServerConfigurationInterface = (Obj.magic 0)
    method emailServerConfigurationInterface = emailServerConfigurationInterface
    method set_emailServerConfigurationInterface value' = emailServerConfigurationInterface <- value'
    
    
    

    method getEmailServerConfigurationInterface () : EmailServerConfigurationInterface.emailServerConfigurationInterface =
        begin
        (emailServerConfigurationInterface :> EmailServerConfigurationInterface.emailServerConfigurationInterface)
        end
    

    method setEmailServerConfigurationInterface : 'any1. 'any1 -> unit = fun (emailServerConfigurationInterface_arg) ->
        let emailServerConfigurationInterface_arg = Obj.repr emailServerConfigurationInterface_arg in
        begin
        emailServerConfigurationInterface <- (Obj.magic emailServerConfigurationInterface_arg)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        emailServerConfigurationInterface <- ((Obj.magic 0) :> EmailServerConfigurationInterface.emailServerConfigurationInterface);
        ();
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "ContextConfiguration"));
        (self#setEmailServerConfigurationInterface ((Obj.magic (new EmailServerConfiguration.emailServerConfiguration ()))))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "ContextConfiguration" (fun arguments -> Obj.repr (new contextConfiguration (Obj.obj arguments)))


