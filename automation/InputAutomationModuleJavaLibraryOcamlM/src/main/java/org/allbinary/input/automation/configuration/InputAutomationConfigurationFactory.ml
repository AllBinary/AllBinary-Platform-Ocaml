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
(* package org.allbinary.input.automation.configuration *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.File *)
(* import java.io.FileInputStream *)
(* import java.util.List *)
(* import javax.xml.bind.JAXBContext *)
(* import javax.xml.bind.JAXBElement *)
(* import javax.xml.bind.Unmarshaller *)
(* import javax.xml.transform.stream.StreamSource *)
(* import org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.string.CommonStrings *)

class inputAutomationConfigurationFactory () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable inputAutomationConfiguration : InputAutomationConfiguration.inputAutomationConfiguration = (Obj.magic 0)
    method inputAutomationConfiguration = inputAutomationConfiguration
    method set_inputAutomationConfiguration value' = inputAutomationConfiguration <- value'
    
    

    method init : 'any1. 'any1 -> unit = fun (abeClientInformation) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        let logUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        let iNPUT_AUTOMATION_CONFIGURATION : string ref = ref ("InputAutomationConfiguration") in ();
        let file : Obj.t ref = ref ((Obj.repr (InputAutomationConfiguration.getFile ()))) in ();
        if ((Obj.magic !file)#isFile ()) then begin
            ignore ((Obj.magic !logUtil_arg)#putF ("LoadingConfiguration", !iNPUT_AUTOMATION_CONFIGURATION, !commonStrings#iNIT));
            let jaxbContext : Obj.t ref = ref ((Obj.repr (JAXBContext.newInstance ("InputAutomationConfiguration")))) in ();
            let unmarshaller : Obj.t ref = ref ((Obj.repr ((Obj.magic !jaxbContext)#createUnmarshaller ()))) in ();
            let root : Obj.t ref = ref ((Obj.repr ((Obj.magic !unmarshaller)#unmarshal ((new StreamSource.streamSource ((new FileInputStream.fileInputStream ((Obj.magic !file))))), "InputAutomationConfiguration")))) in ();
            inputAutomationConfiguration <- (Obj.magic ((Obj.magic !root)#getValue ()));
            let inputAutomationModuleConfigurationList : Obj.t ref = ref ((Obj.repr (inputAutomationConfiguration#getInputAutomationModuleConfigurationList ()))) in ();
            ignore ((Obj.magic !logUtil_arg)#putF (((("isInstalled: " ^ java_string_of (Obj.repr ((inputAutomationConfiguration#isInstalled ())))) ^ " inputAutomationModuleConfigurationList: ") ^ java_string_of (Obj.repr ((Obj.magic !inputAutomationModuleConfigurationList)))), !iNPUT_AUTOMATION_CONFIGURATION, !commonStrings#iNIT));
            if ((Obj.magic !inputAutomationModuleConfigurationList) != (Obj.magic 0)) then begin
                let size : int ref = ref (((Obj.magic !inputAutomationModuleConfigurationList)#size ())) in ();
                let inputAutomationModuleConfiguration : InputAutomationModuleConfiguration.inputAutomationModuleConfiguration ref = ref (((Obj.magic 0) :> InputAutomationModuleConfiguration.inputAutomationModuleConfiguration)) in ();
                for index = 0 to !size - 1 do
                    inputAutomationModuleConfiguration := ((Obj.magic !inputAutomationModuleConfigurationList)#get (index));
                    ignore (!inputAutomationModuleConfiguration#init ((Obj.magic abeClientInformation)))
                done
            end;
            ignore ((Obj.magic !logUtil_arg)#putF ("LoadedConfiguration", !iNPUT_AUTOMATION_CONFIGURATION, !commonStrings#iNIT))
        end else begin
            ignore ((Obj.magic !logUtil_arg)#putF ("New Configuration", !iNPUT_AUTOMATION_CONFIGURATION, !commonStrings#iNIT));
            inputAutomationConfiguration <- (new InputAutomationConfiguration.inputAutomationConfiguration ())
        end
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        inputAutomationConfiguration <- ((Obj.magic 0) :> InputAutomationConfiguration.inputAutomationConfiguration);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "InputAutomationConfigurationFactory" (fun arguments -> Obj.repr (new inputAutomationConfigurationFactory (Obj.obj arguments)))

let instance = (new inputAutomationConfigurationFactory ())
let get_instance () = instance
let () = java_register_static "InputAutomationConfigurationFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "InputAutomationConfigurationFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


