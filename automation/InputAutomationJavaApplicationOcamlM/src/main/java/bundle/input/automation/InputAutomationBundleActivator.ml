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
(* package bundle.input.automation *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.osgi.framework.BundleActivator *)
(* import org.osgi.framework.BundleContext *)
(* import bundle.input.automation.module.configuration.InputAutomationConfigurationModuleChangeListener *)
(* import bundle.input.automation.robot.InputAutomationRobotChangeListener *)
(* import org.allbinary.input.automation.InputAutomationJFrame *)
(* import org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceConsumer *)
(* import org.allbinary.input.automation.module.osgi.InputAutomationNewBundleRunnable *)
(* import org.allbinary.input.automation.osgi.InputAutomationServiceFactory *)
(* import org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.osgi.OSGIActivatorUtil *)
(* import org.allbinary.string.CommonStrings *)

let moduleManagementThread : java_thread ref = ref (((Obj.magic 0) :> java_thread))
let get_moduleManagementThread () = !moduleManagementThread
let set_moduleManagementThread value' = moduleManagementThread := value'
let () = java_register_static "InputAutomationBundleActivator.get_moduleManagementThread" (fun _ -> Obj.repr (get_moduleManagementThread ()))
let bundleContext : Obj.t ref = ref ((Obj.repr (Obj.magic 0)))
let get_bundleContext () = Obj.magic !bundleContext
let set_bundleContext value' = bundleContext := Obj.repr value'
let () = java_register_static "InputAutomationBundleActivator.get_bundleContext" (fun _ -> Obj.repr (get_bundleContext ()))

let getBundleContext : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic !bundleContext)))
        end

let () = java_register_static "InputAutomationBundleActivator.getBundleContext" (fun arguments -> Obj.repr (getBundleContext (Obj.obj arguments)))
class inputAutomationBundleActivator () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    

    method start : 'any1. 'any1 -> unit = fun (bundleContext_arg) ->
        let bundleContext_arg = Obj.repr bundleContext_arg in
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#sTART));
            bundleContext <- (Obj.magic bundleContext_arg);
            moduleManagementThread := (Obj.obj (java_new "Thread" (Obj.repr ((Obj.obj (java_new "InputAutomationNewBundleRunnable" (Obj.repr (self))))))));
            ignore (!moduleManagementThread#start ());
            ignore (Obj.magic (java_call_static "InputAutomationJFrame.create" (Obj.repr (self))))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#sTART, e));
            raise e
        end)
        end [@@warning "-20"]
    

    method registerAsService () : unit =
        begin
        ignore (OSGIActivatorUtil.registerAsService ((self#getBundleContext ()), (Obj.magic (java_call_static "InputAutomationServiceFactory.getInstance" (Obj.repr ()))), ("InputAutomationConfigurationModuleChangeListener"#getName ())));
        ignore (OSGIActivatorUtil.registerAsService ((self#getBundleContext ()), (Obj.magic (java_call_static "InputAutomationServiceFactory.getInstance" (Obj.repr ()))), ("InputAutomationRobotChangeListener"#getName ())))
        end
    

    method useServices () : unit =
        begin
        ignore ((new InputAutomationRobotServiceConsumer.inputAutomationRobotServiceConsumer ((self#getBundleContext ())))#process ());
        ignore ((Obj.obj (java_new "InputAutomationModuleServiceConsumer" (Obj.repr ((self#getBundleContext ())))))#process ())
        end
    

    method stop : 'any1. 'any1 -> unit = fun (_context) ->
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "stop"));
        if ((Obj.magic (java_call_static "InputAutomationJFrame.getInstance" (Obj.repr ()))) != (Obj.magic 0)) then begin
            ignore (Obj.magic (java_call_static "InputAutomationJFrame.destroy" (Obj.repr ())))
        end else begin
            ignore ((Obj.magic logUtil)#putF ("Nothing to stop", self, "stop"))
        end
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "InputAutomationBundleActivator" (fun arguments -> Obj.repr (new inputAutomationBundleActivator (Obj.obj arguments)))


