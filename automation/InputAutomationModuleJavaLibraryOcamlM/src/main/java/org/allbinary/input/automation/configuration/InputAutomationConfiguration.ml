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
(* import java.util.List *)
(* import javax.xml.bind.JAXBContext *)
(* import javax.xml.bind.Marshaller *)
(* import javax.xml.bind.annotation.XmlAccessType *)
(* import javax.xml.bind.annotation.XmlAccessorType *)
(* import javax.xml.bind.annotation.XmlElement *)
(* import javax.xml.bind.annotation.XmlRootElement *)
(* import javax.xml.bind.annotation.XmlType *)
(* import org.allbinary.data.tree.dom.document.DomDocumentFileHelper *)
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.file.FileUtil *)
(* import org.allbinary.logic.io.file.FileWrapperUtil *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.w3c.dom.Document *)

let fILENAME : string = "InputAutomationConfig.xml"
let get_fILENAME () = fILENAME
let () = java_register_static "InputAutomationConfiguration.get_fILENAME" (fun _ -> Obj.repr (get_fILENAME ()))

let getFile : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((new File.file (fILENAME))))
        end

let () = java_register_static "InputAutomationConfiguration.getFile" (fun arguments -> Obj.repr (getFile (Obj.obj arguments)))
class inputAutomationConfiguration () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable installed : bool = false
    method installed = installed
    method set_installed value' = installed <- value'
    val mutable inputAutomationModuleConfigurationList : Obj.t = Obj.repr 0
    method inputAutomationModuleConfigurationList : 'r. 'r = Obj.magic inputAutomationModuleConfigurationList
    method set_inputAutomationModuleConfigurationList : 'v. 'v -> unit = fun value' -> inputAutomationModuleConfigurationList <- Obj.repr value'
    
    

    method isInstalled () : bool =
        begin
        installed
        end
    

    method setInstalled ((installed_arg : bool)) : unit =
        begin
        installed <- installed_arg;
        ignore ((Obj.magic logUtil)#putF (("Installed: " ^ java_string_of (Obj.repr (installed_arg))), self, "setIntalled"))
        end
    

    method getInputAutomationModuleConfigurationList : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic inputAutomationModuleConfigurationList)))
        end
    

    method save () : unit =
        begin
        let document : Obj.t ref = ref ((Obj.repr (DomDocumentHelper.create ()))) in ();
        let file : Obj.t ref = ref ((Obj.repr (new File.file (fILENAME)))) in ();
        ignore ((FileUtil.getInstance ())#copy ((new AbPath.abPath (((Obj.magic !file)#getAbsolutePath ()), (StringUtil.getInstance ())#eMPTY_STRING)), (new AbPath.abPath ((java_string_of (Obj.repr (((Obj.magic !file)#getAbsolutePath ()))) ^ ".bak.xml"), (StringUtil.getInstance ())#eMPTY_STRING))));
        let jaxbContext : Obj.t ref = ref ((Obj.repr (JAXBContext.newInstance ("InputAutomationConfiguration")))) in ();
        let marshaller : Obj.t ref = ref ((Obj.repr ((Obj.magic !jaxbContext)#createMarshaller ()))) in ();
        ignore ((Obj.magic !marshaller)#setProperty ((Marshaller.get_jAXB_FORMATTED_OUTPUT ()), true));
        ignore ((Obj.magic !marshaller)#marshal (self, (Obj.magic !document)));
        ignore (DomDocumentFileHelper.save ((Obj.magic (java_call_static "FileWrapperUtil.wrapFile" (Obj.repr ((Obj.magic !file))))), (Obj.magic !document)))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        installed <- false;
        inputAutomationModuleConfigurationList <- (Obj.repr (Obj.magic 0));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "InputAutomationConfiguration" (fun arguments -> Obj.repr (new inputAutomationConfiguration (Obj.obj arguments)))


