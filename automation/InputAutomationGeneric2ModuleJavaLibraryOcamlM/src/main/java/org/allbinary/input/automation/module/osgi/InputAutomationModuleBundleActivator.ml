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
(* package org.allbinary.input.automation.module.osgi *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.osgi.framework.BundleActivator *)
(* import org.osgi.framework.BundleContext *)
(* import org.osgi.framework.ServiceFactory *)
(* import org.osgi.framework.ServiceReference *)
(* import bundle.input.automation.module.InputAutomationModuleServiceInterface *)
(* import bundle.input.automation.module.configuration.InputAutomationConfigurationModuleChangeListener *)
(* import org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent *)
(* import org.allbinary.input.automation.configuration.InputAutomationConfigurationUtil *)
(* import org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.osgi.OSGIActivatorUtil *)
(* import org.allbinary.string.CommonStrings *)

class inputAutomationModuleBundleActivator () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable inputAutomationModuleInterface : InputAutomationModuleFactoryInterface.inputAutomationModuleFactoryInterface array = (Obj.magic 0)
    method inputAutomationModuleInterface = inputAutomationModuleInterface
    method set_inputAutomationModuleInterface value' = inputAutomationModuleInterface <- value'
    val mutable serviceFactory : Obj.t = Obj.repr 0
    method serviceFactory : 'r. 'r = Obj.magic serviceFactory
    method set_serviceFactory : 'v. 'v -> unit = fun value' -> serviceFactory <- Obj.repr value'
    
    

    method init () : unit =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getInputAutomationConfigurationModuleChangeListener : 'any1 'return. 'any1 -> 'return = fun (context) ->
        let context = Obj.repr context in
        try
        begin
        let serviceReference : Obj.t ref = ref ((Obj.repr ((Obj.magic context)#getServiceReference (("InputAutomationConfigurationModuleChangeListener"#getName ()))))) in ();
        if ((Obj.magic !serviceReference) != (Obj.magic 0)) then begin
            let inputAutomationConfigurationModuleChangeListener : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic context)#getService ((Obj.magic !serviceReference)))))) in ();
            if ((Obj.magic !inputAutomationConfigurationModuleChangeListener) == (Obj.magic 0)) then begin
                raise (Failure ("No Service For ServiceReference"))
            end;
            raise (Java_return (Obj.repr ((Obj.magic !inputAutomationConfigurationModuleChangeListener))))
        end else begin
            ignore ((Obj.magic logUtil)#putF (("No ServiceReference: " ^ ("InputAutomationConfigurationModuleChangeListener"#getName ())), self, "addModules"));
            raise (Java_return (Obj.repr ((Obj.magic 0))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method addModules : 'any1. 'any1 -> unit = fun (context) ->
        let context = Obj.repr context in
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "addModules"));
            let inputAutomationConfigurationModuleChangeListener : Obj.t ref = ref ((Obj.repr (self#getInputAutomationConfigurationModuleChangeListener ((Obj.magic context))))) in ();
            if ((Obj.magic !inputAutomationConfigurationModuleChangeListener) != (Obj.magic 0)) then begin
                for index = 0 to (Array.length (self#getInputAutomationModuleInterface ())) - 1 do
                    let inputAutomationConfigurationModuleChangeEvent : InputAutomationConfigurationModuleChangeEvent.inputAutomationConfigurationModuleChangeEvent ref = ref (((InputAutomationConfigurationUtil.getChangeEvent ((self#getInputAutomationModuleInterface ()).(index))) :> InputAutomationConfigurationModuleChangeEvent.inputAutomationConfigurationModuleChangeEvent)) in ();
                    ignore ((Obj.magic !inputAutomationConfigurationModuleChangeListener)#onAdd (!inputAutomationConfigurationModuleChangeEvent))
                done
            end
        with e -> begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#eXCEPTION, self, "addModules"))
        end)
        end [@@warning "-20"]
    

    method registerAsService : 'any1. 'any1 -> unit = fun (bundleContext) ->
        let bundleContext = Obj.repr bundleContext in
        begin
        ignore (OSGIActivatorUtil.registerAsService ((Obj.magic bundleContext), (self#getServiceFactory ()), ("InputAutomationModuleServiceInterface"#getName ())))
        end [@@warning "-20"]
    

    method removeModules : 'any1. 'any1 -> unit = fun (context) ->
        let context = Obj.repr context in
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "removeModules"));
            let inputAutomationConfigurationModuleChangeListener : Obj.t ref = ref ((Obj.repr (self#getInputAutomationConfigurationModuleChangeListener ((Obj.magic context))))) in ();
            if ((Obj.magic !inputAutomationConfigurationModuleChangeListener) != (Obj.magic 0)) then begin
                for index = 0 to (Array.length (self#getInputAutomationModuleInterface ())) - 1 do
                    let inputAutomationConfigurationModuleChangeEvent : InputAutomationConfigurationModuleChangeEvent.inputAutomationConfigurationModuleChangeEvent ref = ref (((InputAutomationConfigurationUtil.getChangeEvent ((self#getInputAutomationModuleInterface ()).(index))) :> InputAutomationConfigurationModuleChangeEvent.inputAutomationConfigurationModuleChangeEvent)) in ();
                    ignore ((Obj.magic !inputAutomationConfigurationModuleChangeListener)#onRemove (!inputAutomationConfigurationModuleChangeEvent))
                done
            end
        with e -> begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#eXCEPTION, self, "removeModules"))
        end)
        end [@@warning "-20"]
    

    method start : 'any1. 'any1 -> unit = fun (context) ->
        let context = Obj.repr context in
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#sTART));
        (self#addModules ((Obj.magic context)));
        (self#registerAsService ((Obj.magic context)))
        end [@@warning "-20"]
    

    method stop : 'any1. 'any1 -> unit = fun (context) ->
        let context = Obj.repr context in
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "stop"));
        (self#removeModules ((Obj.magic context)))
        end [@@warning "-20"]
    

    method getInputAutomationModuleInterface () : InputAutomationModuleFactoryInterface.inputAutomationModuleFactoryInterface array =
        begin
        inputAutomationModuleInterface
        end
    

    method setInputAutomationModuleInterface ((inputAutomationModuleInterface_arg : InputAutomationModuleFactoryInterface.inputAutomationModuleFactoryInterface array)) : unit =
        begin
        inputAutomationModuleInterface <- inputAutomationModuleInterface_arg
        end
    

    method getServiceFactory () : Obj.t =
        begin
        (Obj.repr ((Obj.magic serviceFactory)))
        end
    

    method setServiceFactory : 'any1. 'any1 -> unit = fun (serviceObject) ->
        let serviceObject = Obj.repr serviceObject in
        begin
        serviceFactory <- Obj.repr ((Obj.magic serviceObject))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        inputAutomationModuleInterface <- (Obj.magic 0);
        serviceFactory <- (Obj.repr (Obj.magic 0));
        ();
        (self#init ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "InputAutomationModuleBundleActivator" (fun arguments -> Obj.repr (new inputAutomationModuleBundleActivator (Obj.obj arguments)))


