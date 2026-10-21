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
(* package org.allbinary.logic.communication.smtp.info *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.context.configuration.ContextConfigurationInterface *)
(* import org.allbinary.business.user.modules.admin.configuration.AdminConfiguration *)
(* import org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface *)
(* import org.allbinary.string.CommonStrings *)

class adminEmailInfo ((subject : string), (textBody : string)) =
  object (self)
    inherit BasicEmailInfo.basicEmailInfo (subject, textBody)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method init () : unit =
        begin
        let adminConfigurationInterface : AdminConfigurationInterface.adminConfigurationInterface ref = ref (((Obj.magic (new AdminConfiguration.adminConfiguration ())) :> AdminConfigurationInterface.adminConfigurationInterface)) in ();
        let contextConfigurationInterface : ContextConfigurationInterface.contextConfigurationInterface ref = ref (((!adminConfigurationInterface#getContextConfigurationInterface ()) :> ContextConfigurationInterface.contextConfigurationInterface)) in ();
        let emailServerConfigurationInterface : EmailServerConfigurationInterface.emailServerConfigurationInterface ref = ref (((!contextConfigurationInterface#getEmailServerConfigurationInterface ()) :> EmailServerConfigurationInterface.emailServerConfigurationInterface)) in ();
        ignore (self#setEmailServerConfigurationInterface (!emailServerConfigurationInterface))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGING)) then begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#putF (!commonStrings#sTART, self, !commonStrings#cONSTRUCTOR))
        end;
        (self#init ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "AdminEmailInfo" (fun arguments -> Obj.repr (new adminEmailInfo (Obj.obj arguments)))


