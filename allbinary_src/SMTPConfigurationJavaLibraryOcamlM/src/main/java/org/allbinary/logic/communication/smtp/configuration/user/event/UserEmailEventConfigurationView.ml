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
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.logic.StdUtil *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

class userEmailEventConfigurationView (node) =
  object (self)
    val mutable userEmailEventConfigurationInterface : UserEmailEventConfigurationInterface.userEmailEventConfigurationInterface = (Obj.magic 0)
    method userEmailEventConfigurationInterface = userEmailEventConfigurationInterface
    method set_userEmailEventConfigurationInterface value' = userEmailEventConfigurationInterface <- value'
    
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let userEmailEventConfigurationMapping : UserEmailEventConfigurationMapping.userEmailEventConfigurationMapping ref = ref (((new UserEmailEventConfigurationMapping.userEmailEventConfigurationMapping ((self#getUserEmailEventConfigurationInterface ()))) :> UserEmailEventConfigurationMapping.userEmailEventConfigurationMapping)) in ();
        let hashMap : java_hash_map ref = ref (((!userEmailEventConfigurationMapping#toHashMap ()) :> java_hash_map)) in ();
        let node : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNameValueNodes ((Obj.magic document), (UserEmailEventConfigurationData.get_nAME ()), !hashMap)))) in ();
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]
    

    method getUserEmailEventConfigurationInterface () : UserEmailEventConfigurationInterface.userEmailEventConfigurationInterface =
        begin
        (userEmailEventConfigurationInterface :> UserEmailEventConfigurationInterface.userEmailEventConfigurationInterface)
        end
    

    method setUserEmailEventConfigurationInterface : 'any1. 'any1 -> unit = fun (userEmailEventConfigurationInterface_arg) ->
        let userEmailEventConfigurationInterface_arg = Obj.repr userEmailEventConfigurationInterface_arg in
        begin
        userEmailEventConfigurationInterface <- (Obj.magic userEmailEventConfigurationInterface_arg)
        end [@@warning "-20"]

    initializer
      begin
        userEmailEventConfigurationInterface <- ((Obj.magic 0) :> UserEmailEventConfigurationInterface.userEmailEventConfigurationInterface);
        ();
        let childNodeList : Obj.t ref = ref ((Obj.repr (node#getChildNodes ()))) in ();
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        let name : string ref = ref ((DomNodeHelper.getTextNodeValue ((UserEmailEventConfigurationData.get_nAME ()), (Obj.magic !childNodeList)))) in ();
        ignore (!hashMap#put ((UserEmailEventConfigurationData.get_nAME ()), !name));
        let eventListenerClassPath : string ref = ref ((DomNodeHelper.getTextNodeValue ((UserEmailEventConfigurationData.get_lISTENER_CLASSPATH ()), (Obj.magic !childNodeList)))) in ();
        ignore (!hashMap#put ((UserEmailEventConfigurationData.get_lISTENER_CLASSPATH ()), !eventListenerClassPath));
        (self#setUserEmailEventConfigurationInterface ((Obj.magic (new UserEmailEventConfiguration.userEmailEventConfiguration (!hashMap)))))
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "UserEmailEventConfigurationView" (fun arguments -> Obj.repr (new userEmailEventConfigurationView (Obj.obj arguments)))


