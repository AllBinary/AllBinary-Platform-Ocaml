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
(* package org.allbinary.input.automation.robot.osgi *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.osgi.framework.BundleActivator *)
(* import org.osgi.framework.BundleContext *)
(* import org.osgi.framework.ServiceFactory *)
(* import org.osgi.framework.ServiceReference *)
(* import bundle.input.automation.robot.InputAutomationRobotChangeListener *)
(* import bundle.input.automation.robot.InputAutomationRobotServiceInterface *)
(* import org.allbinary.input.automation.robot.InputRobotInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.osgi.OSGIActivatorUtil *)
(* import org.allbinary.string.CommonStrings *)

class inputAutomationRobotBundleActivator () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable inputRobotInterface : InputRobotInterface.inputRobotInterface array = (Obj.magic 0)
    method inputRobotInterface = inputRobotInterface
    method set_inputRobotInterface value' = inputRobotInterface <- value'
    val mutable serviceFactory : Obj.t = Obj.repr 0
    method serviceFactory : 'r. 'r = Obj.magic serviceFactory
    method set_serviceFactory : 'v. 'v -> unit = fun value' -> serviceFactory <- Obj.repr value'
    
    

    method init () : unit =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method registerAsService : 'any1. 'any1 -> unit = fun (bundleContext) ->
        let bundleContext = Obj.repr bundleContext in
        begin
        ignore (OSGIActivatorUtil.registerAsService ((Obj.magic bundleContext), (self#getServiceFactory ()), ("InputAutomationRobotServiceInterface"#getName ())))
        end [@@warning "-20"]
    

    method getInputAutomationRobotChangeListener : 'any1 'return. 'any1 -> 'return = fun (context) ->
        let context = Obj.repr context in
        try
        begin
        let serviceReference : Obj.t ref = ref ((Obj.repr ((Obj.magic context)#getServiceReference (("InputAutomationRobotChangeListener"#getName ()))))) in ();
        if ((Obj.magic !serviceReference) != (Obj.magic 0)) then begin
            let inputAutomationRobotChangeListener : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic context)#getService ((Obj.magic !serviceReference)))))) in ();
            if ((Obj.magic !inputAutomationRobotChangeListener) == (Obj.magic 0)) then begin
                raise (Failure ("No Service For ServiceReference"))
            end;
            raise (Java_return (Obj.repr ((Obj.magic !inputAutomationRobotChangeListener))))
        end else begin
            ignore ((Obj.magic logUtil)#putF (("No ServiceReference: " ^ ("InputAutomationRobotChangeListener"#getName ())), self, "getInputAutomationRobotChangeListener"));
            raise (Java_return (Obj.repr ((Obj.magic 0))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method addRobots : 'any1. 'any1 -> unit = fun (context) ->
        let context = Obj.repr context in
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "addRobots"));
            let inputAutomationRobotChangeListener : Obj.t ref = ref ((Obj.repr (self#getInputAutomationRobotChangeListener ((Obj.magic context))))) in ();
            if ((Obj.magic !inputAutomationRobotChangeListener) != (Obj.magic 0)) then begin
                for index = 0 to (Array.length (self#getInputRobotInterface ())) - 1 do
                    let inputAutomationRobotChangeEvent : Obj.t ref = ref ((Obj.repr (InputAutomationRobotUtil.getChangeEvent ((self#getInputRobotInterface ()).(index))))) in ();
                    ignore ((Obj.magic !inputAutomationRobotChangeListener)#onAdd ((Obj.magic !inputAutomationRobotChangeEvent)))
                done
            end
        with e -> begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#eXCEPTION, self, "addModules"))
        end)
        end [@@warning "-20"]
    

    method removeRobots : 'any1. 'any1 -> unit = fun (context) ->
        let context = Obj.repr context in
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "removeRobots"));
            let inputAutomationRobotChangeListener : Obj.t ref = ref ((Obj.repr (self#getInputAutomationRobotChangeListener ((Obj.magic context))))) in ();
            if ((Obj.magic !inputAutomationRobotChangeListener) != (Obj.magic 0)) then begin
                for index = 0 to (Array.length (self#getInputRobotInterface ())) - 1 do
                    let inputAutomationRobotChangeEvent : Obj.t ref = ref ((Obj.repr (InputAutomationRobotUtil.getChangeEvent ((self#getInputRobotInterface ()).(index))))) in ();
                    ignore ((Obj.magic !inputAutomationRobotChangeListener)#onRemove ((Obj.magic !inputAutomationRobotChangeEvent)))
                done
            end
        with e -> begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#eXCEPTION, self, "removeRobots"))
        end)
        end [@@warning "-20"]
    

    method start : 'any1. 'any1 -> unit = fun (context) ->
        let context = Obj.repr context in
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#sTART));
        (self#addRobots ((Obj.magic context)));
        (self#registerAsService ((Obj.magic context)))
        end [@@warning "-20"]
    

    method stop : 'any1. 'any1 -> unit = fun (context) ->
        let context = Obj.repr context in
        begin
        ignore ((Obj.magic logUtil)#putF ("Stop", self, commonStrings#sTART));
        (self#removeRobots ((Obj.magic context)))
        end [@@warning "-20"]
    

    method getServiceFactory () : Obj.t =
        begin
        (Obj.repr ((Obj.magic serviceFactory)))
        end
    

    method setServiceFactory : 'any1. 'any1 -> unit = fun (serviceObject) ->
        let serviceObject = Obj.repr serviceObject in
        begin
        serviceFactory <- Obj.repr ((Obj.magic serviceObject))
        end [@@warning "-20"]
    

    method getInputRobotInterface () : InputRobotInterface.inputRobotInterface array =
        begin
        inputRobotInterface
        end
    

    method setInputRobotInterface ((inputRobotInterface_arg : InputRobotInterface.inputRobotInterface array)) : unit =
        begin
        inputRobotInterface <- inputRobotInterface_arg
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        inputRobotInterface <- (Obj.magic 0);
        serviceFactory <- (Obj.repr (Obj.magic 0));
        ();
        (self#init ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "InputAutomationRobotBundleActivator" (fun arguments -> Obj.repr (new inputAutomationRobotBundleActivator (Obj.obj arguments)))


