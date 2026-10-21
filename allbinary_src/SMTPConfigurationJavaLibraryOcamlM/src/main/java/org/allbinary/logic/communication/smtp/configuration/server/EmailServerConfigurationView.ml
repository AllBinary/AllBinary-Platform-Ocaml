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
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

class emailServerConfigurationView (node) =
  object
    val mutable emailServerConfigurationInterface : EmailServerConfigurationInterface.emailServerConfigurationInterface = (Obj.magic 0)
    method emailServerConfigurationInterface = emailServerConfigurationInterface
    method set_emailServerConfigurationInterface value' = emailServerConfigurationInterface <- value'
    
    
    

    method getEmailConfigurationInterface () : EmailServerConfigurationInterface.emailServerConfigurationInterface =
        begin
        (emailServerConfigurationInterface :> EmailServerConfigurationInterface.emailServerConfigurationInterface)
        end
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let emailConfigurationMapping : EmailServerConfigurationMapping.emailServerConfigurationMapping ref = ref (((new EmailServerConfigurationMapping.emailServerConfigurationMapping (emailServerConfigurationInterface)) :> EmailServerConfigurationMapping.emailServerConfigurationMapping)) in ();
        let hashMap : java_hash_map ref = ref (((!emailConfigurationMapping#toHashMap ()) :> java_hash_map)) in ();
        let node : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNodeWithValueNodes ((Obj.magic document), (EmailServerConfigurationData.get_nAME ()), !hashMap)))) in ();
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        let childNodeList : Obj.t ref = ref ((Obj.repr (node#getChildNodes ()))) in ();
        let server : string ref = ref ((DomNodeHelper.getTextNodeValue ((EmailServerConfigurationData.get_sERVER ()), (Obj.magic !childNodeList)))) in ();
        let accountName : string ref = ref ((DomNodeHelper.getTextNodeValue ((EmailServerConfigurationData.get_aCCOUNT ()), (Obj.magic !childNodeList)))) in ();
        let password : string ref = ref ((DomNodeHelper.getTextNodeValue ((EmailServerConfigurationData.get_pASSWORD ()), (Obj.magic !childNodeList)))) in ();
        emailServerConfigurationInterface <- (Obj.magic (new EmailServerConfiguration.emailServerConfiguration (!accountName, !password, !server)))
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "EmailServerConfigurationView" (fun arguments -> Obj.repr (new emailServerConfigurationView (Obj.obj arguments)))


