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
(* package org.allbinary.logic.communication.smtp.configuration.user *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationData *)
(* import org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface *)
(* import org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationView *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

class userEmailConfigurationView (node) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable userEmailConfigurationInterface : UserEmailConfigurationInterface.userEmailConfigurationInterface = (Obj.magic 0)
    method userEmailConfigurationInterface = userEmailConfigurationInterface
    method set_userEmailConfigurationInterface value' = userEmailConfigurationInterface <- value'
    
    
    

    method getEmailConfigurationInterface () : UserEmailConfigurationInterface.userEmailConfigurationInterface =
        begin
        (userEmailConfigurationInterface :> UserEmailConfigurationInterface.userEmailConfigurationInterface)
        end
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let emailConfigurationMapping : UserEmailConfigurationMapping.userEmailConfigurationMapping ref = ref (((new UserEmailConfigurationMapping.userEmailConfigurationMapping (userEmailConfigurationInterface)) :> UserEmailConfigurationMapping.userEmailConfigurationMapping)) in ();
        let hashMap : java_hash_map ref = ref (((!emailConfigurationMapping#toHashMap ()) :> java_hash_map)) in ();
        let node : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNameValueNodes ((Obj.magic document), (UserEmailConfigurationData.get_nAME ()), !hashMap)))) in ();
        let userEmailConfigurationInterface_arg : UserEmailConfigurationInterface.userEmailConfigurationInterface ref = ref (((self#getEmailConfigurationInterface ()) :> UserEmailConfigurationInterface.userEmailConfigurationInterface)) in ();
        let userEmailEventsConfigurationInterface : UserEmailEventsConfigurationInterface.userEmailEventsConfigurationInterface ref = ref (((!userEmailConfigurationInterface_arg#getUserEmailEventsConfigurationInterface ()) :> UserEmailEventsConfigurationInterface.userEmailEventsConfigurationInterface)) in ();
        let userEmailEventsConfigurationView : UserEmailEventsConfigurationView.userEmailEventsConfigurationView ref = ref (((new UserEmailEventsConfigurationView.userEmailEventsConfigurationView (!userEmailEventsConfigurationInterface)) :> UserEmailEventsConfigurationView.userEmailEventsConfigurationView)) in ();
        ignore ((Obj.magic !node)#appendChild ((!userEmailEventsConfigurationView#toXmlNode ((Obj.magic document)))));
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGING)) then begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#cONSTRUCTOR, self, commonStrings#cONSTRUCTOR))
        end;
        userEmailConfigurationInterface <- (Obj.magic (new UserEmailConfiguration.userEmailConfiguration ()));
        let childNodeList : Obj.t ref = ref ((Obj.repr (node#getChildNodes ()))) in ();
        let userEmailEventsConfigurationNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNodeNoThrow ((UserEmailEventsConfigurationData.get_nAME ()), (Obj.magic !childNodeList))))) in ();
        let userEmailEventsConfigurationView : UserEmailEventsConfigurationView.userEmailEventsConfigurationView ref = ref (((new UserEmailEventsConfigurationView.userEmailEventsConfigurationView ((Obj.magic !userEmailEventsConfigurationNode))) :> UserEmailEventsConfigurationView.userEmailEventsConfigurationView)) in ();
        ignore (userEmailConfigurationInterface#setUserEmailEventsConfigurationInterface ((!userEmailEventsConfigurationView#getUserEmailEventsConfigurationInterface ())))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "UserEmailConfigurationView" (fun arguments -> Obj.repr (new userEmailConfigurationView (Obj.obj arguments)))


