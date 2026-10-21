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
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface *)
(* import org.allbinary.string.CommonStrings *)

class storeEmailInfo ((storeFrontInterface_arg : StoreFrontInterface.storeFrontInterface), (subject : string), (textBody : string)) =
  object (self)
    inherit BasicEmailInfo.basicEmailInfo (subject, textBody)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable storeFrontInterface : StoreFrontInterface.storeFrontInterface = (Obj.magic 0)
    method storeFrontInterface = storeFrontInterface
    method set_storeFrontInterface value' = storeFrontInterface <- value'
    
    

    method init () : unit =
        begin
        let contextConfigurationInterface : ContextConfigurationInterface.contextConfigurationInterface ref = ref (((storeFrontInterface#getContextConfigurationInterface ()) :> ContextConfigurationInterface.contextConfigurationInterface)) in ();
        let emailServerConfigurationInterface : EmailServerConfigurationInterface.emailServerConfigurationInterface ref = ref (((!contextConfigurationInterface#getEmailServerConfigurationInterface ()) :> EmailServerConfigurationInterface.emailServerConfigurationInterface)) in ();
        ignore (self#setEmailServerConfigurationInterface (!emailServerConfigurationInterface))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        (* super(...) is the inherit clause *) ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGING)) then begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#putF (!commonStrings#sTART, self, !commonStrings#cONSTRUCTOR))
        end;
        storeFrontInterface <- storeFrontInterface_arg;
        (self#init ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "StoreEmailInfo" (fun arguments -> Obj.repr (new storeEmailInfo (Obj.obj arguments)))


