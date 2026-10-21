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
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationData *)
(* import org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface *)
(* import org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationView *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

class contextConfigurationView (node) =
  object (self)
    val mutable contextConfigurationInterface : ContextConfigurationInterface.contextConfigurationInterface = (Obj.magic 0)
    method contextConfigurationInterface = contextConfigurationInterface
    method set_contextConfigurationInterface value' = contextConfigurationInterface <- value'
    
    
    

    method getContextConfigurationInterface () : ContextConfigurationInterface.contextConfigurationInterface =
        begin
        (contextConfigurationInterface :> ContextConfigurationInterface.contextConfigurationInterface)
        end
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((ContextConfigurationData.getInstance ())#nAME)))) in ();
        let emailServerConfigurationView : EmailServerConfigurationView.emailServerConfigurationView ref = ref (((new EmailServerConfigurationView.emailServerConfigurationView (((self#getContextConfigurationInterface ())#getEmailServerConfigurationInterface ()))) :> EmailServerConfigurationView.emailServerConfigurationView)) in ();
        ignore ((Obj.magic !node)#appendChild ((!emailServerConfigurationView#toXmlNode ((Obj.magic document)))));
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        let childNodeList : Obj.t ref = ref ((Obj.repr (node#getChildNodes ()))) in ();
        contextConfigurationInterface <- (new ContextConfiguration.contextConfiguration ());
        let emailConfigurationNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode ((EmailServerConfigurationData.get_nAME ()), (Obj.magic !childNodeList))))) in ();
        let emailServerConfigurationView : EmailServerConfigurationView.emailServerConfigurationView ref = ref (((new EmailServerConfigurationView.emailServerConfigurationView ((Obj.magic !emailConfigurationNode))) :> EmailServerConfigurationView.emailServerConfigurationView)) in ();
        ignore (contextConfigurationInterface#setEmailServerConfigurationInterface ((Obj.magic (!emailServerConfigurationView#getEmailConfigurationInterface ()))))
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "ContextConfigurationView" (fun arguments -> Obj.repr (new contextConfigurationView (Obj.obj arguments)))


