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
(* package org.allbinary.input.automation.module.configuration *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.File *)
(* import java.io.FileInputStream *)
(* import java.util.HashMap *)
(* import java.util.List *)
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.input.automation.module.InputAutomationModuleData *)
(* import org.allbinary.input.automation.module.NewInputAutomationModulesData *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

class inputAutomationModuleConfigurations () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable hashMap : java_hash_map = (Obj.magic 0)
    method hashMap = hashMap
    method set_hashMap value' = hashMap <- value'
    
    
    
    
    

    method add : 'any1. 'any1 -> unit = fun (inputAutomationModuleConfiguration) ->
        let inputAutomationModuleConfiguration = Obj.repr inputAutomationModuleConfiguration in
        begin
        ignore ((self#getHashMap ())#put (((Obj.magic inputAutomationModuleConfiguration)#getClassName ()), (Obj.magic inputAutomationModuleConfiguration)))
        end [@@warning "-20"]
    

    method remove : 'any1. 'any1 -> unit = fun (inputAutomationModuleConfiguration) ->
        let inputAutomationModuleConfiguration = Obj.repr inputAutomationModuleConfiguration in
        begin
        ignore ((self#getHashMap ())#remove (((Obj.magic inputAutomationModuleConfiguration)#getClassName ())))
        end [@@warning "-20"]
    

    method getHashMap () : java_hash_map =
        begin
        (hashMap :> java_hash_map)
        end
    

    method setHashMap ((hashMap_arg : java_hash_map)) : unit =
        begin
        hashMap <- hashMap_arg
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        hashMap <- ((Obj.magic 0) :> java_hash_map);
        ();
        (self#setHashMap ((new java_hash_map ())))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "InputAutomationModuleConfigurations" (fun arguments -> Obj.repr (new inputAutomationModuleConfigurations (Obj.obj arguments)))


