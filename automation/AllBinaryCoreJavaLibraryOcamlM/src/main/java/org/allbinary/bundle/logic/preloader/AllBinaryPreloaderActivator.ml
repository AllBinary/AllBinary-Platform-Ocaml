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
(* package org.allbinary.bundle.logic.preloader *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.osgi.framework.BundleActivator *)
(* import org.osgi.framework.BundleContext *)
(* import org.osgi.framework.ServiceReference *)
(* import org.osgi.framework.ServiceRegistration *)
(* import org.allbinary.bundle.logic.system.loader.CryptServiceFactory *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.ABHashtable *)

let context : Obj.t ref = ref ((Obj.repr (Obj.magic 0)))
let get_context () = Obj.magic !context
let set_context value' = context := Obj.repr value'
let () = java_register_static "AllBinaryPreloaderActivator.get_context" (fun _ -> Obj.repr (get_context ()))
let cRYPT_REGISTRY_NAME : string = "bundle.abcs.logic.system.loader.CryptService"
let get_cRYPT_REGISTRY_NAME () = cRYPT_REGISTRY_NAME
let () = java_register_static "AllBinaryPreloaderActivator.get_cRYPT_REGISTRY_NAME" (fun _ -> Obj.repr (get_cRYPT_REGISTRY_NAME ()))

let getBundleContext : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic !context)))
        end

let () = java_register_static "AllBinaryPreloaderActivator.getBundleContext" (fun arguments -> Obj.repr (getBundleContext (Obj.obj arguments)))
class allBinaryPreloaderActivator () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    
    

    method start : 'any1. 'any1 -> unit = fun (context_arg) ->
        let context_arg = Obj.repr context_arg in
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "start"));
            context := Obj.repr ((Obj.magic context_arg));
            (self#registerAsService ())
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "start", e));
            raise e
        end)
        end [@@warning "-20"]
    

    method registerAsService () : unit =
        begin
        let properties : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()))) in ();
        let serviceRegistration : Obj.t ref = ref ((Obj.repr ((Obj.magic !context)#registerService (cRYPT_REGISTRY_NAME, (new CryptServiceFactory.cryptServiceFactory ()), (Obj.magic !properties))))) in ();
        let serviceReference : Obj.t ref = ref ((Obj.repr ((Obj.magic !serviceRegistration)#getReference ()))) in ();
        serviceReference := Obj.repr (((Obj.magic !context)#getServiceReference (cRYPT_REGISTRY_NAME)));
        if ((Obj.magic !serviceReference) == (Obj.magic 0)) then begin
            raise (Failure ("No Such Service Reference"))
        end
        end
    

    method stop : 'any1. 'any1 -> unit = fun (_context_arg) ->
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "stop"))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AllBinaryPreloaderActivator" (fun arguments -> Obj.repr (new allBinaryPreloaderActivator (Obj.obj arguments)))


