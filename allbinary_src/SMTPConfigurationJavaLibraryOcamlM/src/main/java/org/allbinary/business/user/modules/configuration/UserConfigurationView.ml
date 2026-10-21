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
(* package org.allbinary.business.user.modules.configuration *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.time.created.TimeCreatedView *)
(* import org.allbinary.business.time.modified.TimeLastModifiedView *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData *)
(* import org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface *)
(* import org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

class userConfigurationView (node) =
  object
    val mutable userConfigurationInterface : UserConfigurationInterface.userConfigurationInterface = (Obj.magic 0)
    method userConfigurationInterface = userConfigurationInterface
    method set_userConfigurationInterface value' = userConfigurationInterface <- value'
    
    
    

    method getUserConfigurationInterface () : UserConfigurationInterface.userConfigurationInterface =
        begin
        (userConfigurationInterface :> UserConfigurationInterface.userConfigurationInterface)
        end
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((UserConfigurationData.get_nAME ()))))) in ();
        let userEmailConfigurationView : UserEmailConfigurationView.userEmailConfigurationView ref = ref (((new UserEmailConfigurationView.userEmailConfigurationView ((userConfigurationInterface#getUserEmailConfigurationInterface ()))) :> UserEmailConfigurationView.userEmailConfigurationView)) in ();
        ignore ((Obj.magic !node)#appendChild ((!userEmailConfigurationView#toXmlNode ((Obj.magic document)))));
        let timeCreatedView : TimeCreatedView.timeCreatedView ref = ref (((new TimeCreatedView.timeCreatedView ((userConfigurationInterface#getTimeCreated ()))) :> TimeCreatedView.timeCreatedView)) in ();
        ignore ((Obj.magic !node)#appendChild ((!timeCreatedView#toXmlNode ((Obj.magic document)))));
        let timeLastModifiedView : TimeLastModifiedView.timeLastModifiedView ref = ref (((new TimeLastModifiedView.timeLastModifiedView ((userConfigurationInterface#getTimeLastModified ()))) :> TimeLastModifiedView.timeLastModifiedView)) in ();
        ignore ((Obj.magic !node)#appendChild ((!timeLastModifiedView#toXmlNode ((Obj.magic document)))));
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        userConfigurationInterface <- (Obj.magic (new UserConfiguration.userConfiguration ()));
        let childNodeList : Obj.t ref = ref ((Obj.repr (node#getChildNodes ()))) in ();
        let emailConfigurationNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode ((UserEmailConfigurationData.get_nAME ()), (Obj.magic !childNodeList))))) in ();
        let userEmailConfigurationView : UserEmailConfigurationView.userEmailConfigurationView ref = ref (((new UserEmailConfigurationView.userEmailConfigurationView ((Obj.magic !emailConfigurationNode))) :> UserEmailConfigurationView.userEmailConfigurationView)) in ();
        let userEmailConfigurationInterface : UserEmailConfigurationInterface.userEmailConfigurationInterface ref = ref (((Obj.magic (!userEmailConfigurationView#getEmailConfigurationInterface ())) :> UserEmailConfigurationInterface.userEmailConfigurationInterface)) in ();
        ignore (userConfigurationInterface#setUserEmailConfigurationInterface (!userEmailConfigurationInterface));
        let timeCreatedNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode ((EntryData.getInstance ())#tIMECREATED, (Obj.magic !childNodeList))))) in ();
        let timeCreatedView : TimeCreatedView.timeCreatedView ref = ref (((new TimeCreatedView.timeCreatedView ((Obj.magic !timeCreatedNode))) :> TimeCreatedView.timeCreatedView)) in ();
        ignore (userConfigurationInterface#setTimeCreated ((!timeCreatedView#getTimeCreated ())));
        let timeLastModifiedNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode ((EntryData.getInstance ())#lASTMODIFIED, (Obj.magic !childNodeList))))) in ();
        let timeLastModifiedView : TimeLastModifiedView.timeLastModifiedView ref = ref (((new TimeLastModifiedView.timeLastModifiedView ((Obj.magic !timeLastModifiedNode))) :> TimeLastModifiedView.timeLastModifiedView)) in ();
        ignore (userConfigurationInterface#setTimeLastModified ((!timeLastModifiedView#getTimeLastModified ())))
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "UserConfigurationView" (fun arguments -> Obj.repr (new userConfigurationView (Obj.obj arguments)))


