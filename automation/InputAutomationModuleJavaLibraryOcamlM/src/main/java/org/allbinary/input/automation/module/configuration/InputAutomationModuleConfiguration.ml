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
(* import javax.xml.bind.annotation.XmlAccessType *)
(* import javax.xml.bind.annotation.XmlAccessorType *)
(* import javax.xml.bind.annotation.XmlElement *)
(* import javax.xml.bind.annotation.XmlRootElement *)
(* import javax.xml.bind.annotation.XmlType *)
(* import org.allbinary.business.DynamicObjectData *)
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.input.automation.InputAutomationData *)
(* import org.allbinary.input.automation.module.InputAutomationModuleData *)
(* import org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.loader.AbeFactory *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

class inputAutomationModuleConfiguration () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable className : string = ""
    method className = className
    method set_className value' = className <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable inputAutomationModuleInterface : InputAutomationModuleFactoryInterface.inputAutomationModuleFactoryInterface = (Obj.magic 0)
    method inputAutomationModuleInterface = inputAutomationModuleInterface
    method set_inputAutomationModuleInterface value' = inputAutomationModuleInterface <- value'
    
    
    
    
    

    method init : 'any1 'any2. 'any1 * 'any2 -> unit = fun (abeClientInformation, node) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        let node = Obj.repr node in
        begin
        let nodeList : Obj.t ref = ref ((Obj.repr ((Obj.magic node)#getChildNodes ()))) in ();
        if ((Obj.magic !nodeList) != (Obj.magic 0)) then begin
            let classNameNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode ((DynamicObjectData.get_nAME ()), (Obj.magic !nodeList))))) in ();
            if ((Obj.magic !classNameNode) != (Obj.magic 0)) then begin
                (self#setClassName ((DomNodeHelper.getTextNodeValue ((Obj.magic !classNameNode)))));
                (self#init ((Obj.magic abeClientInformation)))
            end else begin
                ignore ((Obj.magic logUtil)#putF ("Class Node Null", self, commonStrings#iNIT))
            end
        end else begin
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((InputAutomationData.get_nAME ()))) ^ " Node Has No Children"), self, "Contructor"))
        end
        end [@@warning "-20"]
    

    (* Java overload init(AbeClientInformationInterface) is not converted: OCaml has one method per name *)
    

    method toDomNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((InputAutomationModuleData.get_nAME ()))))) in ();
        let classNameNode : Obj.t ref = ref ((Obj.repr (ModDomHelper.createTextNode ((Obj.magic document), (DynamicObjectData.get_nAME ()), (self#getClassName ()))))) in ();
        ignore ((Obj.magic !node)#appendChild ((Obj.magic !classNameNode)));
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]
    

    method getName () : string =
        begin
        name
        end
    

    method setName ((name_arg : string)) : unit =
        begin
        ignore ((Obj.magic logUtil)#putF (("Name: " ^ name_arg), self, "setName"));
        name <- name_arg
        end
    

    method getClassName () : string =
        begin
        className
        end
    

    method setClassName ((className_arg : string)) : unit =
        begin
        ignore ((Obj.magic logUtil)#putF (("ClassName : " ^ className_arg), self, "setClassName"));
        className <- className_arg
        end
    

    method getInputAutomationModuleInterface () : InputAutomationModuleFactoryInterface.inputAutomationModuleFactoryInterface =
        begin
        (inputAutomationModuleInterface :> InputAutomationModuleFactoryInterface.inputAutomationModuleFactoryInterface)
        end
    

    method setInputAutomationModuleInterface : 'any1. 'any1 -> unit = fun (inputAutomationModuleInterface_arg) ->
        let inputAutomationModuleInterface_arg = Obj.repr inputAutomationModuleInterface_arg in
        begin
        ignore ((Obj.magic logUtil)#putF (("InputAutomationModuleFactoryInterface : " ^ java_string_of (Obj.repr ((Obj.magic inputAutomationModuleInterface_arg)))), self, "setInputAutomationModuleInterface"));
        inputAutomationModuleInterface <- (Obj.magic inputAutomationModuleInterface_arg);
        (self#setName ((inputAutomationModuleInterface#getName ())))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        className <- "";
        name <- "";
        inputAutomationModuleInterface <- ((Obj.magic 0) :> InputAutomationModuleFactoryInterface.inputAutomationModuleFactoryInterface);
        ();
        ()
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "InputAutomationModuleConfiguration" (fun arguments -> Obj.repr (new inputAutomationModuleConfiguration (Obj.obj arguments)))


