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
(* package org.allbinary.input.automation.module.generic.configuration.profile.actions *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.DataOutputStream *)
(* import java.io.File *)
(* import java.io.FileInputStream *)
(* import java.io.FileOutputStream *)
(* import java.util.HashMap *)
(* import java.util.Set *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.data.tree.dom.document.XmlDocumentHelper *)
(* import org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface *)
(* import org.allbinary.input.automation.module.DefaultListModelHelper *)
(* import org.allbinary.input.automation.module.generic.configuration.profile.GenericProfiles *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.file.CommonDataFileStrings *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

let dEFAULT_PROFILE_ACTIONS_PATH : string = (java_string_of (Obj.repr ((GenericProfiles.get_dEFAULT_PROFILES_PATH ()))) ^ "actions/")
let get_dEFAULT_PROFILE_ACTIONS_PATH () = dEFAULT_PROFILE_ACTIONS_PATH
let () = java_register_static "GenericProfileActions.get_dEFAULT_PROFILE_ACTIONS_PATH" (fun _ -> Obj.repr (get_dEFAULT_PROFILE_ACTIONS_PATH ()))
class genericProfileActions (genericProfileActionsJPanel_arg, (name_arg : string)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonFileStrings : CommonDataFileStrings.commonDataFileStrings = (Obj.magic 0)
    method commonFileStrings = commonFileStrings
    method set_commonFileStrings value' = commonFileStrings <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable genericProfileActionsJPanel : Obj.t = Obj.repr 0
    method genericProfileActionsJPanel : 'r. 'r = Obj.magic genericProfileActionsJPanel
    method set_genericProfileActionsJPanel : 'v. 'v -> unit = fun value' -> genericProfileActionsJPanel <- Obj.repr value'
    val mutable actionsDefaultListModelHelper : DefaultListModelHelper.defaultListModelHelper = (Obj.magic 0)
    method actionsDefaultListModelHelper = actionsDefaultListModelHelper
    method set_actionsDefaultListModelHelper value' = actionsDefaultListModelHelper <- value'
    val mutable hashMap : java_hash_map = (Obj.magic 0)
    method hashMap = hashMap
    method set_hashMap value' = hashMap <- value'
    
    
    
    

    method init : 'any1. 'any1 -> unit = fun (genericProfileActionsJPanel_arg) ->
        let genericProfileActionsJPanel_arg = Obj.repr genericProfileActionsJPanel_arg in
        begin
        (self#setGenericProfileActionsJPanel ((Obj.magic genericProfileActionsJPanel_arg)));
        actionsDefaultListModelHelper <- (new DefaultListModelHelper.defaultListModelHelper ());
        (self#setHashMap ((new java_hash_map ())))
        end [@@warning "-20"]
    

    method save () : unit =
        begin
        let idFile : Obj.t ref = ref ((Obj.repr (new FileOutputStream.fileOutputStream (((java_string_of (Obj.repr (dEFAULT_PROFILE_ACTIONS_PATH)) ^ (self#getName ())) ^ java_string_of (Obj.repr (commonFileStrings#_XML))))))) in ();
        let idOutData : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "DataOutputStream" (Obj.repr ((Obj.magic !idFile))))))) in ();
        ignore ((Obj.magic !idOutData)#writeBytes ((XmlDocumentHelper.toString ((self#toXmlDoc ())))))
        end
    

    method getFile : 'return. string -> 'return = fun ((name_arg : string)) ->
        begin
        let fileName : string ref = ref (((dEFAULT_PROFILE_ACTIONS_PATH ^ name_arg) ^ java_string_of (Obj.repr (commonFileStrings#_XML)))) in ();
        (Obj.magic ((new File.file (!fileName))))
        end
    

    method load () : unit =
        begin
        let file : Obj.t ref = ref ((Obj.repr (self#getFile ((self#getName ()))))) in ();
        if ((Obj.magic !file)#isFile ()) then begin
            let idFile : Obj.t ref = ref ((Obj.repr (new FileInputStream.fileInputStream ((Obj.magic !file))))) in ();
            (self#fileInit ((Obj.magic !idFile)))
        end else begin
            ignore ((Obj.magic logUtil)#putF (("No Profile: " ^ java_string_of (Obj.repr (((Obj.magic !file)#getAbsolutePath ())))), self, "Contructor"))
        end
        end
    

    method fileInit : 'any1. 'any1 -> unit = fun (fileInputStream) ->
        let fileInputStream = Obj.repr fileInputStream in
        begin
        let bytes : int array ref = ref ((Array.make (100000) 0)) in ();
        let length : int ref = ref (((Obj.magic fileInputStream)#read (!bytes))) in ();
        let data : string ref = ref ((Obj.obj (java_new "String" (Obj.repr (!bytes))))) in ();
        let endIndex : int ref = ref ((java_string_last_index_of !data (Obj.repr ('>')))) in ();
        let document : Obj.t ref = ref ((Obj.repr (DomDocumentHelper.create ((String.sub !data (0) (((!endIndex + 1)) - (0))))))) in ();
        let nameNodeList : Obj.t ref = ref ((Obj.repr ((Obj.magic !document)#getElementsByTagName ((GenericProfileActionsData.get_nAME ()))))) in ();
        ignore ((Obj.magic logUtil)#putF (("Number Of Profiles Specified: " ^ java_string_of (Obj.repr (((Obj.magic !nameNodeList)#getLength ())))), self, "Contructor"));
        for index = 0 to ((Obj.magic !nameNodeList)#getLength ()) - 1 do
            let node : Obj.t ref = ref ((Obj.repr ((Obj.magic !nameNodeList)#item (index)))) in ();
            let nodeList : Obj.t ref = ref ((Obj.repr ((Obj.magic !node)#getChildNodes ()))) in ();
            if ((Obj.magic !nodeList) != (Obj.magic 0)) then begin
                (self#initActions ((Obj.magic !nodeList)))
            end else begin
                raise (Failure ((java_string_of (Obj.repr ((GenericProfileActionData.get_nAME ()))) ^ " Name Node Node Children")))
            end
        done;
        ignore ((Obj.magic logUtil)#putF ((("Loaded: " ^ java_string_of (Obj.repr (((self#getHashMap ())#size ())))) ^ " Configuration Profile Action(s)"), self, "Contructor"));
        ignore ((self#getDefaultListModelHelper ())#initDefaultModelList ())
        end [@@warning "-20"]
    

    method initActions : 'any1. 'any1 -> unit = fun (nodeList) ->
        let nodeList = Obj.repr nodeList in
        begin
        for index = 0 to ((Obj.magic nodeList)#getLength ()) - 1 do
            let actionNode : Obj.t ref = ref ((Obj.repr ((Obj.magic nodeList)#item (index)))) in ();
            if ((Obj.magic !actionNode) != (Obj.magic 0)) then begin
                let genericConfigurationProfileAction : GenericProfileAction.genericProfileAction ref = ref (((new GenericProfileAction.genericProfileAction (((self#getGenericProfileActionsJPanel ())#getGenericProfileActionJPanel ()), (Obj.magic !actionNode))) :> GenericProfileAction.genericProfileAction)) in ();
                ignore ((self#getHashMap ())#put ((!genericConfigurationProfileAction#getName ()), !genericConfigurationProfileAction));
                ignore ((self#getDefaultListModelHelper ())#add ((!genericConfigurationProfileAction#getName ())))
            end else begin
                raise (Failure ((java_string_of (Obj.repr ((GenericProfileActionData.get_nAME ()))) ^ " Node Null")))
            end
        done
        end [@@warning "-20"]
    

    method getDefaultListModelHelper () : DefaultListModelHelper.defaultListModelHelper =
        begin
        (actionsDefaultListModelHelper :> DefaultListModelHelper.defaultListModelHelper)
        end
    

    method getAction ((string : string)) : GenericProfileAction.genericProfileAction =
        begin
        ((Obj.magic ((self#getHashMap ())#get (string))) :> GenericProfileAction.genericProfileAction)
        end
    

    method add ((name_arg : string)) : unit =
        begin
        let genericProfileAction : GenericProfileAction.genericProfileAction ref = ref (((new GenericProfileAction.genericProfileAction (name_arg)) :> GenericProfileAction.genericProfileAction)) in ();
        ignore ((self#getHashMap ())#put ((!genericProfileAction#getName ()), !genericProfileAction));
        ignore ((self#getDefaultListModelHelper ())#add ((!genericProfileAction#getName ())));
        ignore ((self#getDefaultListModelHelper ())#initDefaultModelList ());
        (self#save ())
        end
    

    method remove ((name_arg : string)) : unit =
        begin
        ignore ((self#getHashMap ())#remove (name_arg));
        ignore ((self#getDefaultListModelHelper ())#remove (name_arg));
        ignore ((self#getDefaultListModelHelper ())#initDefaultModelList ());
        (self#save ())
        end
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap_arg : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore ((Obj.magic logUtil)#putF (("HashMap: " ^ (java_string_of (Obj.repr !hashMap_arg))), self, "toHashMap()"));
        (!hashMap_arg :> java_hash_map)
        end
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((GenericProfileActionsData.get_nAME ()))))) in ();
        let set : Obj.t ref = ref ((Obj.repr ((self#getHashMap ())#keySet ()))) in ();
        let actionNameArray : Obj.t array ref = ref (((Obj.magic !set)#toArray ())) in ();
        let size : int ref = ref ((Array.length !actionNameArray)) in ();
        for index = 0 to !size - 1 do
            let nextActionName : string ref = ref ((Obj.magic !actionNameArray.(index))) in ();
            let nextGenericProfileAction : GenericProfileAction.genericProfileAction ref = ref (((Obj.magic (self#getAction (!nextActionName))) :> GenericProfileAction.genericProfileAction)) in ();
            ignore ((Obj.magic !node)#appendChild ((!nextGenericProfileAction#toXmlNode ((Obj.magic document)))))
        done;
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]
    

    method toXmlDoc : 'return. unit -> 'return = fun () ->
        begin
        let document : Obj.t ref = ref ((Obj.repr (DomDocumentHelper.create ()))) in ();
        let node : Obj.t ref = ref ((Obj.repr (self#toXmlNode ((Obj.magic !document))))) in ();
        ignore ((Obj.magic !document)#appendChild ((Obj.magic !node)));
        (Obj.magic ((Obj.magic !document)))
        end
    

    method getGenericProfileActionsJPanel : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic genericProfileActionsJPanel)))
        end
    

    method setGenericProfileActionsJPanel : 'any1. 'any1 -> unit = fun (genericProfileActionsJPanel_arg) ->
        let genericProfileActionsJPanel_arg = Obj.repr genericProfileActionsJPanel_arg in
        begin
        genericProfileActionsJPanel <- Obj.repr ((Obj.magic genericProfileActionsJPanel_arg))
        end [@@warning "-20"]
    

    method getHashMap () : java_hash_map =
        begin
        (hashMap :> java_hash_map)
        end
    

    method setHashMap ((hashMap_arg : java_hash_map)) : unit =
        begin
        hashMap <- hashMap_arg
        end
    

    method getName () : string =
        begin
        name
        end
    

    method setName ((name_arg : string)) : unit =
        begin
        name <- name_arg
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonFileStrings <- ((CommonDataFileStrings.getInstance ()) :> CommonDataFileStrings.commonDataFileStrings);
        name <- "";
        genericProfileActionsJPanel <- (Obj.repr (Obj.magic 0));
        actionsDefaultListModelHelper <- ((Obj.magic 0) :> DefaultListModelHelper.defaultListModelHelper);
        hashMap <- ((Obj.magic 0) :> java_hash_map);
        ();
        (self#setName (name_arg));
        (self#init (genericProfileActionsJPanel_arg));
        (self#load ())
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "GenericProfileActions" (fun arguments -> Obj.repr (new genericProfileActions (Obj.obj arguments)))


