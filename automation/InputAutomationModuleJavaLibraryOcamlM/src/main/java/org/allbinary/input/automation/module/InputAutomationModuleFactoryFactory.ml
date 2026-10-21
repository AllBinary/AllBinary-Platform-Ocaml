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
(* package org.allbinary.input.automation.module *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Collection *)
(* import java.util.HashMap *)
(* import java.util.Iterator *)
(* import javax.help.HelpSet *)
(* import javax.help.event.HelpSetEvent *)
(* import javax.help.event.HelpSetListener *)
(* import javax.swing.ListModel *)
(* import org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration *)
(* import org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.java.help.JavaHelpSetNotifier *)
(* import org.allbinary.string.CommonStrings *)

class inputAutomationModuleFactoryFactory ((inputAutomationModuleConfigurations : InputAutomationModuleConfigurations.inputAutomationModuleConfigurations), helpSetListenerInterface_arg) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable hashMap : java_hash_map = (Obj.magic 0)
    method hashMap = hashMap
    method set_hashMap value' = hashMap <- value'
    val mutable defaultListModelHelper : DefaultListModelHelper.defaultListModelHelper = (Obj.magic 0)
    method defaultListModelHelper = defaultListModelHelper
    method set_defaultListModelHelper value' = defaultListModelHelper <- value'
    val mutable helpSetListenerInterface : Obj.t = Obj.repr 0
    method helpSetListenerInterface : 'r. 'r = Obj.magic helpSetListenerInterface
    method set_helpSetListenerInterface : 'v. 'v -> unit = fun value' -> helpSetListenerInterface <- Obj.repr value'
    
    

    method add : 'any1. 'any1 -> unit = fun (inputAutomationModuleConfiguration) ->
        let inputAutomationModuleConfiguration = Obj.repr inputAutomationModuleConfiguration in
        begin
        let inputAutomationModuleInterface : InputAutomationModuleFactoryInterface.inputAutomationModuleFactoryInterface ref = ref ((((Obj.magic inputAutomationModuleConfiguration)#getInputAutomationModuleInterface ()) :> InputAutomationModuleFactoryInterface.inputAutomationModuleFactoryInterface)) in ();
        ignore (hashMap#put (((Obj.magic inputAutomationModuleConfiguration)#getName ()), !inputAutomationModuleInterface));
        ignore (defaultListModelHelper#add (((Obj.magic inputAutomationModuleConfiguration)#getName ())));
        let helpSet : Obj.t ref = ref ((Obj.repr (!inputAutomationModuleInterface#getHelpSet ()))) in ();
        if (not (JavaHelpSetNotifier.isNotified ((Obj.magic !helpSet)))) then begin
            let helpSetEvent : Obj.t ref = ref ((Obj.repr (new HelpSetEvent.helpSetEvent (self, (Obj.magic !helpSet), (HelpSetEvent.get_hELPSET_ADDED ()))))) in ();
            ignore ((Obj.magic helpSetListenerInterface)#helpSetAdded ((Obj.magic !helpSetEvent)))
        end
        end [@@warning "-20"]
    

    method getListModel : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (defaultListModelHelper#getListModel ()))))
        end
    

    method getInstance ((moduleName : string)) : InputAutomationModuleFactoryInterface.inputAutomationModuleFactoryInterface =
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore ((Obj.magic logUtil)#putF (("Getting Module: " ^ moduleName), self, !commonStrings#gET_INSTANCE));
        let inputAutomationModuleFactoryInterface : InputAutomationModuleFactoryInterface.inputAutomationModuleFactoryInterface ref = ref (((Obj.magic (hashMap#get (moduleName))) :> InputAutomationModuleFactoryInterface.inputAutomationModuleFactoryInterface)) in ();
        if (!inputAutomationModuleFactoryInterface == (Obj.magic 0)) then begin
            ignore ((Obj.magic logUtil)#putF ((("Module: " ^ moduleName) ^ " was null"), self, !commonStrings#gET_INSTANCE))
        end;
        (!inputAutomationModuleFactoryInterface :> InputAutomationModuleFactoryInterface.inputAutomationModuleFactoryInterface)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        ();
        helpSetListenerInterface <- Obj.repr (helpSetListenerInterface_arg);
        defaultListModelHelper <- (new DefaultListModelHelper.defaultListModelHelper ());
        hashMap <- ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ());
        let collection : Obj.t ref = ref ((Obj.repr ((inputAutomationModuleConfigurations#getHashMap ())#values ()))) in ();
        let iterator : Obj.t ref = ref ((Obj.repr ((Obj.magic !collection)#iterator ()))) in ();
        let inputAutomationModuleConfiguration : InputAutomationModuleConfiguration.inputAutomationModuleConfiguration ref = ref (((Obj.magic 0) :> InputAutomationModuleConfiguration.inputAutomationModuleConfiguration)) in ();
        while ((Obj.magic !iterator)#hasNext ()) do
            inputAutomationModuleConfiguration := (Obj.magic ((Obj.magic !iterator)#next ()));
            (self#add (!inputAutomationModuleConfiguration))
        done;
        ignore (defaultListModelHelper#initDefaultModelList ());
        ignore ((Obj.magic logUtil)#putF ((((("Loaded " ^ java_string_of (Obj.repr ((hashMap#size ())))) ^ "/") ^ java_string_of (Obj.repr (((defaultListModelHelper#getListModel ())#getSize ())))) ^ " Input Automation Modules"), self, "Contructor"))
      end
  end [@@warning "-20"]
let () = java_register_constructor "InputAutomationModuleFactoryFactory" (fun arguments -> Obj.repr (new inputAutomationModuleFactoryFactory (Obj.obj arguments)))


