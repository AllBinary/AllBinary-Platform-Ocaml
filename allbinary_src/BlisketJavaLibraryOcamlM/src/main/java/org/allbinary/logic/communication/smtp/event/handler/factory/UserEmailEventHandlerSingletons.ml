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
(* package org.allbinary.logic.communication.smtp.event.handler.factory *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.user.UserInterface *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.smtp.event.UserEmailEventNameData *)
(* import org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil *)
(* import org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler *)
(* import org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.string.CommonStrings *)

class userEmailEventHandlerSingletons () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable userEmailEventHandlerHashMap : java_hash_map = (Obj.magic 0)
    method userEmailEventHandlerHashMap = userEmailEventHandlerHashMap
    method set_userEmailEventHandlerHashMap value' = userEmailEventHandlerHashMap <- value'
    
    

    (* Java overload getInstance(AbeClientInformationInterface, UserEmailEventNameData, UserInterface) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        userEmailEventHandlerHashMap <- (((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map);
        ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGING)) then begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#cONSTRUCTOR))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "UserEmailEventHandlerSingletons" (fun arguments -> Obj.repr (new userEmailEventHandlerSingletons (Obj.obj arguments)))

let instance = (new userEmailEventHandlerSingletons ())
let get_instance () = instance
let () = java_register_static "UserEmailEventHandlerSingletons.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "UserEmailEventHandlerSingletons.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


