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
(* import org.allbinary.business.user.role.UserRole *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.globals.FREEBLISKET_PATH_GLOBALS *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.control.crypt.file.CryptFileReader *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

let configurationName : string = "DefaultUserConfiguration"
let get_configurationName () = configurationName
let () = java_register_static "UserConfigurationInterfaceFactory.get_configurationName" (fun _ -> Obj.repr (get_configurationName ()))

let getInstance : 'any1. 'any1 -> UserConfigurationInterface.userConfigurationInterface = fun (document) ->
        let document = Obj.repr document in
        begin
        let configurationNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode ((UserConfigurationData.get_nAME ()), ((Obj.magic document)#getChildNodes ()))))) in ();
        ((Obj.magic ((new UserConfigurationView.userConfigurationView ((Obj.magic !configurationNode)))#getUserConfigurationInterface ())) :> UserConfigurationInterface.userConfigurationInterface)
        end [@@warning "-20"]

(* Java overload getInstance() is not converted: OCaml has one method per name *)

let () = java_register_static "UserConfigurationInterfaceFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class userConfigurationInterfaceFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "UserConfigurationInterfaceFactory" (fun arguments -> Obj.repr (new userConfigurationInterfaceFactory (Obj.obj arguments)))

(* Java overload getInstance(UserRole) is not converted: OCaml has one method per name *)


