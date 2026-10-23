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
(* package org.allbinary.input.automation.robot *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.GraphicsDevice *)
(* import java.awt.GraphicsEnvironment *)
(* import java.util.Collection *)
(* import java.util.Iterator *)
(* import java.util.Set *)
(* import javax.help.HelpSet *)
(* import javax.help.event.HelpSetEvent *)
(* import javax.help.event.HelpSetListener *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.java.help.JavaHelpSetNotifier *)
(* import org.allbinary.logic.java.anyType.InterfaceUtil *)
(* import org.allbinary.logic.system.loader.SecuredNativeLibraryInterface *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.ABHashtable *)


let loadLibrary : 'any1. 'any1 -> unit = fun (inputRobotInterface) ->
        let inputRobotInterface = Obj.repr inputRobotInterface in
        begin
        let logUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        if (InterfaceUtil.isImplemented ("SecuredNativeLibraryInterface", (Obj.magic inputRobotInterface))) then begin
            ignore ((Obj.magic !logUtil_arg)#putF (("Loading Library: " ^ ((Obj.magic inputRobotInterface)#getName ())), "InputRobotFactory", "loadLibraries"));
            let securedNativeLibraryInterface : SecuredNativeLibraryInterface.securedNativeLibraryInterface ref = ref (((Obj.magic (Obj.magic inputRobotInterface)) :> SecuredNativeLibraryInterface.securedNativeLibraryInterface)) in ();
            ignore (!securedNativeLibraryInterface#load ())
        end
        end [@@warning "-20"]

let () = java_register_static "InputRobotFactory.loadLibrary" (fun arguments -> Obj.repr (loadLibrary (Obj.obj arguments)))
class inputRobotFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable hashtable : Obj.t = Obj.repr 0
    method hashtable : 'r. 'r = Obj.magic hashtable
    method set_hashtable : 'v. 'v -> unit = fun value' -> hashtable <- Obj.repr value'
    val mutable helpSetListenerInterface : Obj.t = Obj.repr 0
    method helpSetListenerInterface : 'r. 'r = Obj.magic helpSetListenerInterface
    method set_helpSetListenerInterface : 'v. 'v -> unit = fun value' -> helpSetListenerInterface <- Obj.repr value'
    
    

    method addListener : 'any1. 'any1 -> unit = fun (helpSetListenerInterface_arg) ->
        let helpSetListenerInterface_arg = Obj.repr helpSetListenerInterface_arg in
        begin
        helpSetListenerInterface <- Obj.repr ((Obj.magic helpSetListenerInterface_arg))
        end [@@warning "-20"]
    

    method add : 'any1. 'any1 -> unit = fun (inputRobotInterface) ->
        let inputRobotInterface = Obj.repr inputRobotInterface in
        begin
        ignore ((Obj.magic logUtil)#putF (("Adding InputRobotInterface: " ^ ((Obj.magic inputRobotInterface)#getName ())), self, "add"));
        ignore ((self#get ())#put (((Obj.magic inputRobotInterface)#getName ()), (Obj.magic inputRobotInterface)));
        let helpSet : Obj.t ref = ref ((Obj.repr ((Obj.magic inputRobotInterface)#getHelpSet ()))) in ();
        if ((Obj.magic helpSetListenerInterface) != (Obj.magic 0)) then begin
            if ((Obj.magic !helpSet) != (Obj.magic 0)) then begin
                if (not (JavaHelpSetNotifier.isNotified ((Obj.magic !helpSet)))) then begin
                    let helpSetEvent : Obj.t ref = ref ((Obj.repr (new HelpSetEvent.helpSetEvent (self, (Obj.magic !helpSet), (HelpSetEvent.get_hELPSET_ADDED ()))))) in ();
                    ignore ((Obj.magic helpSetListenerInterface)#helpSetAdded ((Obj.magic !helpSetEvent)))
                end
            end else begin
                ignore ((Obj.magic logUtil)#putF (("Null HelpSet For: " ^ ((Obj.magic inputRobotInterface)#getName ())), self, "add"))
            end
        end else begin
            ignore ((Obj.magic logUtil)#putF ("No HelpSet Listener", self, "add"))
        end
        end [@@warning "-20"]
    

    method loadLibraries () : unit =
        begin
        let set : Obj.t ref = ref ((Obj.repr ((self#get ())#keySet ()))) in ();
        ignore ((Obj.magic logUtil)#putF ("Loading Libraries", self, "loadLibraries"));
        let nameArray : Obj.t array ref = ref (((Obj.magic !set)#toArray ())) in ();
        let size : int ref = ref ((Array.length !nameArray)) in ();
        for index = 0 to !size - 1 do
            let inputRobotInterface : InputRobotInterface.inputRobotInterface ref = ref ((((Obj.magic (java_call_static "InputRobotFactory.getInstance" (Obj.repr ())))#get ((Obj.magic !nameArray.(index)))) :> InputRobotInterface.inputRobotInterface)) in ();
            ignore (loadLibrary (!inputRobotInterface))
        done
        end
    

    method unloadLibraries () : unit =
        begin
        ignore ((Obj.magic logUtil)#putF ("Unloading Libraries", self, "unloadLibraries"));
        let set : Obj.t ref = ref ((Obj.repr ((self#get ())#keySet ()))) in ();
        let inputRobotInterface : InputRobotInterface.inputRobotInterface ref = ref (((Obj.magic 0) :> InputRobotInterface.inputRobotInterface)) in ();
        let inputRobotArray : Obj.t array ref = ref (((Obj.magic !set)#toArray ())) in ();
        let size : int ref = ref ((Array.length !inputRobotArray)) in ();
        for index = 0 to !size - 1 do
            inputRobotInterface := (self#get ((Obj.magic !inputRobotArray.(index))));
            if (InterfaceUtil.isImplemented ("SecuredNativeLibraryInterface", !inputRobotInterface)) then begin
                ignore ((Obj.magic logUtil)#putF (("Unloading Library: " ^ (!inputRobotInterface#getName ())), self, "unloadLibraries"));
                let securedNativeLibraryInterface : SecuredNativeLibraryInterface.securedNativeLibraryInterface ref = ref (((Obj.magic !inputRobotInterface) :> SecuredNativeLibraryInterface.securedNativeLibraryInterface)) in ();
                ignore (!securedNativeLibraryInterface#unload ())
            end
        done
        end
    

    method get : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic hashtable)))
        end
    

    (* Java overload get(String) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        hashtable <- (Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()));
        helpSetListenerInterface <- (Obj.repr (Obj.magic 0));
        ();
        (try
            let graphenv : Obj.t ref = ref ((Obj.repr (GraphicsEnvironment.getLocalGraphicsEnvironment ()))) in ();
            let screens : Obj.t ref = ref ((Obj.repr ((Obj.magic !graphenv)#getScreenDevices ()))) in ();
            let inputRobotInterface : InputRobotInterface.inputRobotInterface ref = ref (((Obj.magic 0) :> InputRobotInterface.inputRobotInterface)) in ();
            for i = 0 to (Array.length (Obj.magic !screens)) - 1 do
                inputRobotInterface := (Obj.magic (new InputRobot.inputRobot ((Obj.magic !screens).(i))));
                ignore ((Obj.magic logUtil)#putF (("Adding Robot: " ^ (!inputRobotInterface#getName ())), self, "getRobots"));
                ignore ((self#get ())#put ((!inputRobotInterface#getName ()), !inputRobotInterface))
            done;
            ignore ((Obj.magic logUtil)#putF (("Number Of Robots: " ^ java_string_of (Obj.repr (((Obj.magic hashtable)#size ())))), self, "getRobots"))
        with e -> begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#eXCEPTION, self, commonStrings#cONSTRUCTOR))
        end)
      end
  end [@@warning "-20"]
let () = java_register_constructor "InputRobotFactory" (fun arguments -> Obj.repr (new inputRobotFactory (Obj.obj arguments)))

let inputRobotFactory = (new inputRobotFactory ())
let get_inputRobotFactory () = inputRobotFactory
let () = java_register_static "InputRobotFactory.get_inputRobotFactory" (fun _ -> Obj.repr (get_inputRobotFactory ()))

let getInstance () =
        begin
        inputRobotFactory
        end

(* Java overload loadLibraries(Collection) is not converted: OCaml has one method per name *)
let () = java_register_static "InputRobotFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


