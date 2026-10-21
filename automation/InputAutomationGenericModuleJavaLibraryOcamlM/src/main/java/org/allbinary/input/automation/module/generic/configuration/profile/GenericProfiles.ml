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
(* package org.allbinary.input.automation.module.generic.configuration.profile *)

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
(* import org.allbinary.input.automation.module.generic.configuration.profile.actions.GenericProfileActionData *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

let dEFAULT_PROFILES_PATH : string = "./modules/configs/profiles/"
let get_dEFAULT_PROFILES_PATH () = dEFAULT_PROFILES_PATH
let () = java_register_static "GenericProfiles.get_dEFAULT_PROFILES_PATH" (fun _ -> Obj.repr (get_dEFAULT_PROFILES_PATH ()))
let dEFAULT_PROFILE_ACTIONS_PATH : string = (java_string_of (Obj.repr (dEFAULT_PROFILES_PATH)) ^ "actions/")
let get_dEFAULT_PROFILE_ACTIONS_PATH () = dEFAULT_PROFILE_ACTIONS_PATH
let () = java_register_static "GenericProfiles.get_dEFAULT_PROFILE_ACTIONS_PATH" (fun _ -> Obj.repr (get_dEFAULT_PROFILE_ACTIONS_PATH ()))
let dEFAULT_FILE : string = (java_string_of (Obj.repr (dEFAULT_PROFILES_PATH)) ^ "profiles.xml")
let get_dEFAULT_FILE () = dEFAULT_FILE
let () = java_register_static "GenericProfiles.get_dEFAULT_FILE" (fun _ -> Obj.repr (get_dEFAULT_FILE ()))
class genericProfiles ((fileName_arg : string)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable hashMap : java_hash_map = (Obj.magic 0)
    method hashMap = hashMap
    method set_hashMap value' = hashMap <- value'
    val mutable profilesDefaultListModelHelper : DefaultListModelHelper.defaultListModelHelper = (Obj.magic 0)
    method profilesDefaultListModelHelper = profilesDefaultListModelHelper
    method set_profilesDefaultListModelHelper value' = profilesDefaultListModelHelper <- value'
    val mutable fileName : string = ""
    method fileName = fileName
    method set_fileName value' = fileName <- value'
    
    

    method initProfiles : 'any1. 'any1 -> unit = fun (node) ->
        let node = Obj.repr node in
        begin
        let nodeList : Obj.t ref = ref ((Obj.repr ((Obj.magic node)#getChildNodes ()))) in ();
        for index = 0 to ((Obj.magic !nodeList)#getLength ()) - 1 do
            let profileNameNode : Obj.t ref = ref ((Obj.repr ((Obj.magic !nodeList)#item (index)))) in ();
            if ((((Obj.magic !profileNameNode)#getNodeName ())#compareTo ((GenericProfileData.get_nAME ()))) == 0) then begin
                let genericProfile : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "GenericProfile" (Obj.repr ((Obj.magic !profileNameNode))))))) in ();
                ignore (hashMap#put (((Obj.magic !genericProfile)#getName ()), (Obj.magic !genericProfile)));
                ignore ((self#getDefaultListModelHelper ())#add (((Obj.magic !genericProfile)#getName ())))
            end
        done
        end [@@warning "-20"]
    

    method getDefaultListModelHelper () : DefaultListModelHelper.defaultListModelHelper =
        begin
        (profilesDefaultListModelHelper :> DefaultListModelHelper.defaultListModelHelper)
        end
    

    method get : 'return. string -> 'return = fun ((name : string)) ->
        begin
        let genericProfile : Obj.t ref = ref ((Obj.repr (Obj.magic (hashMap#get (name))))) in ();
        if ((Obj.magic !genericProfile) == (Obj.magic 0)) then begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#putF (((("No Generic Profile Named: " ^ name) ^ " availability was: ") ^ java_string_of (Obj.repr (hashMap))), self, !commonStrings#gET))
        end;
        (Obj.magic ((Obj.magic !genericProfile)))
        end
    

    method add ((name : string)) : unit =
        begin
        ignore (hashMap#put (name, (Obj.obj (java_new "GenericProfile" (Obj.repr (name))))));
        ignore ((self#getDefaultListModelHelper ())#add (name));
        ignore ((self#getDefaultListModelHelper ())#initDefaultModelList ());
        (self#save ())
        end
    

    method remove ((name : string)) : unit =
        begin
        ignore (hashMap#remove (name));
        ignore ((self#getDefaultListModelHelper ())#remove (name));
        ignore ((self#getDefaultListModelHelper ())#initDefaultModelList ());
        (self#save ())
        end
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((GenericProfilesData.get_nAME ()))))) in ();
        let set : Obj.t ref = ref ((Obj.repr (hashMap#keySet ()))) in ();
        let nameArray : Obj.t array ref = ref (((Obj.magic !set)#toArray ())) in ();
        let size : int ref = ref ((Array.length !nameArray)) in ();
        for index = 0 to !size - 1 do
            let genericProfile : Obj.t ref = ref ((Obj.repr (Obj.magic (hashMap#get ((Obj.magic !nameArray.(index))))))) in ();
            ignore ((Obj.magic !node)#appendChild (((Obj.magic !genericProfile)#toXmlNode ((Obj.magic document)))))
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
    

    method save () : unit =
        begin
        let idFile : Obj.t ref = ref ((Obj.repr (new FileOutputStream.fileOutputStream (fileName)))) in ();
        let idOutData : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "DataOutputStream" (Obj.repr ((Obj.magic !idFile))))))) in ();
        let documentString : string ref = ref ((XmlDocumentHelper.toString ((self#toXmlDoc ())))) in ();
        ignore ((Obj.magic !idOutData)#writeBytes (!documentString))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        ();
        fileName <- fileName_arg;
        profilesDefaultListModelHelper <- (new DefaultListModelHelper.defaultListModelHelper ());
        hashMap <- ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ());
        if ((new File.file (fileName_arg))#isFile ()) then begin
            let bytes : int array ref = ref ((Array.make (100000) 0)) in ();
            let idFile : Obj.t ref = ref ((Obj.repr (new FileInputStream.fileInputStream (fileName_arg)))) in ();
            let length : int ref = ref (((Obj.magic !idFile)#read (!bytes))) in ();
            let data : string ref = ref ((Obj.obj (java_new "String" (Obj.repr (!bytes))))) in ();
            let endIndex : int ref = ref ((java_string_last_index_of !data (Obj.repr ('>')))) in ();
            let document : Obj.t ref = ref ((Obj.repr (DomDocumentHelper.create ((String.sub !data (0) (((!endIndex + 1)) - (0))))))) in ();
            let nodeList : Obj.t ref = ref ((Obj.repr ((Obj.magic !document)#getElementsByTagName ((GenericProfilesData.get_nAME ()))))) in ();
            ignore ((Obj.magic logUtil)#putF (("Number Of Profiles Specified: " ^ java_string_of (Obj.repr (((Obj.magic !nodeList)#getLength ())))), self, "Contructor"));
            if ((Obj.magic !nodeList) != (Obj.magic 0)) then begin
                (self#initProfiles (((Obj.magic !nodeList)#item (0))))
            end else begin
                raise (Failure ((java_string_of (Obj.repr ((GenericProfileActionData.get_nAME ()))) ^ " Name Node Node Children")))
            end;
            ignore ((Obj.magic logUtil)#putF ((("Loaded: " ^ java_string_of (Obj.repr ((hashMap#size ())))) ^ " Configuration Profile Actions"), self, "Contructor"))
        end else begin
            ignore ((Obj.magic logUtil)#putF (("No Generic Profile: " ^ fileName_arg), self, "Contructor"))
        end;
        ignore ((self#getDefaultListModelHelper ())#initDefaultModelList ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "GenericProfiles" (fun arguments -> Obj.repr (new genericProfiles (Obj.obj arguments)))


