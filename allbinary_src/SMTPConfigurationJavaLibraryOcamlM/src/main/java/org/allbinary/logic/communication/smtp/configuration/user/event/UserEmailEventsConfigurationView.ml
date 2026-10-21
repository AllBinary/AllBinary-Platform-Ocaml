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
(* package org.allbinary.logic.communication.smtp.configuration.user.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import java.util.Set *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

class userEmailEventsConfigurationView (node) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable userEmailEventsConfigurationInterface : UserEmailEventsConfigurationInterface.userEmailEventsConfigurationInterface = (Obj.magic 0)
    method userEmailEventsConfigurationInterface = userEmailEventsConfigurationInterface
    method set_userEmailEventsConfigurationInterface value' = userEmailEventsConfigurationInterface <- value'
    
    
    

    method getUserEmailEventsConfigurationInterface () : UserEmailEventsConfigurationInterface.userEmailEventsConfigurationInterface =
        begin
        (userEmailEventsConfigurationInterface :> UserEmailEventsConfigurationInterface.userEmailEventsConfigurationInterface)
        end
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let userEmailConfigurationMapping : UserEmailEventsConfigurationMapping.userEmailEventsConfigurationMapping ref = ref (((new UserEmailEventsConfigurationMapping.userEmailEventsConfigurationMapping (userEmailEventsConfigurationInterface)) :> UserEmailEventsConfigurationMapping.userEmailEventsConfigurationMapping)) in ();
        let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((UserEmailEventsConfigurationData.get_nAME ()))))) in ();
        let emailEventHashMap : java_hash_map ref = ref ((((self#getUserEmailEventsConfigurationInterface ())#getEventConfigurationHashMap ()) :> java_hash_map)) in ();
        let set : Obj.t ref = ref ((Obj.repr (!emailEventHashMap#keySet ()))) in ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGING)) then begin
            ignore ((Obj.magic logUtil)#putF (("Number Of Email Events Specified in file: " ^ java_string_of (Obj.repr (((Obj.magic !set)#size ())))), self, commonStrings#cONSTRUCTOR))
        end;
        let eventNameArray : Obj.t array ref = ref (((Obj.magic !set)#toArray ())) in ();
        let size : int ref = ref ((Array.length !eventNameArray)) in ();
        for index = 0 to !size - 1 do
            let eventName : string ref = ref ((Obj.magic !eventNameArray.(index))) in ();
            let userEmailEventsConfigurationInterface_arg : UserEmailEventConfigurationInterface.userEmailEventConfigurationInterface ref = ref (((Obj.magic (!emailEventHashMap#get (!eventName))) :> UserEmailEventConfigurationInterface.userEmailEventConfigurationInterface)) in ();
            let userEmailEventConfigurationView : UserEmailEventConfigurationView.userEmailEventConfigurationView ref = ref (((new UserEmailEventConfigurationView.userEmailEventConfigurationView (!userEmailEventsConfigurationInterface_arg)) :> UserEmailEventConfigurationView.userEmailEventConfigurationView)) in ();
            ignore ((Obj.magic !node)#appendChild ((!userEmailEventConfigurationView#toXmlNode ((Obj.magic document)))))
        done;
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        userEmailEventsConfigurationInterface <- (Obj.magic (new UserEmailEventsConfiguration.userEmailEventsConfiguration ()));
        let childNodeList : Obj.t ref = ref ((Obj.repr (node#getChildNodes ()))) in ();
        let emailEventConfigurationNodeVector : BasicArrayList.basicArrayList ref = ref (((DomSearchHelper.getAllNodesNoThrow ((UserEmailEventConfigurationData.get_nAME ()), (Obj.magic !childNodeList))) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!emailEventConfigurationNodeVector#size ())) in ();
        for index = 0 to !size - 1 do
            let userEmailConfigurationNode : Obj.t ref = ref ((Obj.repr (Obj.magic (!emailEventConfigurationNodeVector#get (index))))) in ();
            let userEmailEventConfigurationView : UserEmailEventConfigurationView.userEmailEventConfigurationView ref = ref (((new UserEmailEventConfigurationView.userEmailEventConfigurationView ((Obj.magic !userEmailConfigurationNode))) :> UserEmailEventConfigurationView.userEmailEventConfigurationView)) in ();
            ignore (userEmailEventsConfigurationInterface#addUserEmailEventConfiguration ((!userEmailEventConfigurationView#getUserEmailEventConfigurationInterface ())))
        done
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "UserEmailEventsConfigurationView" (fun arguments -> Obj.repr (new userEmailEventsConfigurationView (Obj.obj arguments)))


