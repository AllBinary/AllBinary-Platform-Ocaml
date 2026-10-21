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
(* package org.allbinary.input.automation.module.generic.configuration.profile.actions.script *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.swing.tree.DefaultMutableTreeNode *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface *)
(* import org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory *)
(* import org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface *)
(* import org.allbinary.input.automation.module.generic.configuration.profile.actions.GenericProfileActionData *)
(* import org.allbinary.input.automation.module.generic.configuration.profile.actions.GenericProfileActionJPanel *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

let nAME : string = "Root"
let get_nAME () = nAME
let () = java_register_static "GenericProfileActionScript.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
class genericProfileActionScript (genericProfileActionJPanel_arg) =
  object (self)
    inherit DefaultMutableTreeNode.defaultMutableTreeNode ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable genericProfileActionJPanel : Obj.t = Obj.repr 0
    method genericProfileActionJPanel : 'r. 'r = Obj.magic genericProfileActionJPanel
    method set_genericProfileActionJPanel : 'v. 'v -> unit = fun value' -> genericProfileActionJPanel <- Obj.repr value'
    val mutable profileActionConditionInterfaceVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method profileActionConditionInterfaceVector = profileActionConditionInterfaceVector
    method set_profileActionConditionInterfaceVector value' = profileActionConditionInterfaceVector <- value'
    
    
    

    method addCondition : 'any1. 'any1 -> unit = fun (profileActionScriptNodeInterface) ->
        let profileActionScriptNodeInterface = Obj.repr profileActionScriptNodeInterface in
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "addCondition"));
        ignore ((self#getProfileActionConditionInterfaceVector ())#add ((Obj.magic profileActionScriptNodeInterface)));
        ignore (self#add ((Obj.magic profileActionScriptNodeInterface)))
        end [@@warning "-7-20"]
    

    method removeCondition : 'any1. 'any1 -> unit = fun (profileActionScriptNodeInterface) ->
        let profileActionScriptNodeInterface = Obj.repr profileActionScriptNodeInterface in
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "removeCondition"));
        ignore ((self#getProfileActionConditionInterfaceVector ())#remove ((Obj.magic profileActionScriptNodeInterface)));
        ignore (self#remove ((Obj.magic profileActionScriptNodeInterface)))
        end [@@warning "-7-20"]
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore ((Obj.magic logUtil)#putF (("HashMap: " ^ (java_string_of (Obj.repr !hashMap))), self, "toHashMap()"));
        (!hashMap :> java_hash_map)
        end [@@warning "-7"]
    

    method getProfileActionConditionInterfaceVector () : BasicArrayList.basicArrayList =
        begin
        (profileActionConditionInterfaceVector :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method setProfileActionConditionInterfaceVector : 'any1. 'any1 -> unit = fun (profileActionConditionInterfaceVector_arg) ->
        let profileActionConditionInterfaceVector_arg = Obj.repr profileActionConditionInterfaceVector_arg in
        begin
        profileActionConditionInterfaceVector <- (Obj.magic profileActionConditionInterfaceVector_arg)
        end [@@warning "-7-20"]
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((GenericProfileActionData.get_sCRIPT ()))))) in ();
        let vector : BasicArrayList.basicArrayList ref = ref (((self#getProfileActionConditionInterfaceVector ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!vector#size ())) in ();
        for index = 0 to !size - 1 do
            let profileActionConditionInterface : ProfileActionScriptConditionInterface.profileActionScriptConditionInterface ref = ref (((Obj.magic (!vector#get (index))) :> ProfileActionScriptConditionInterface.profileActionScriptConditionInterface)) in ();
            ignore ((Obj.magic !node)#appendChild ((!profileActionConditionInterface#toXmlNode ((Obj.magic document)))))
        done;
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        profileActionConditionInterfaceVector <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        ();
        genericProfileActionJPanel <- Obj.repr (genericProfileActionJPanel_arg);
        (self#setProfileActionConditionInterfaceVector ((new BasicArrayListD.basicArrayListD ())))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "GenericProfileActionScript" (fun arguments -> Obj.repr (new genericProfileActionScript (Obj.obj arguments)))


